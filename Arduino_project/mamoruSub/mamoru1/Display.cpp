#include<M5StickCPlus.h>
#include<ESP32Servo.h>
#include <WiFi.h>
#include <Arduino.h>

//使用自作クラス
#include"Timer.h"
#include"mamoru1.h"
#include"Button.h"
#include"Display.h"
#include"Motor.h"
#include"Sensor.h"
#include"Battery.h"
#include"Blutooth.h"
#include"connectWifi.h"
#include"Sleep_mode.h"

#define BTN_A_PIN  37
#define BTN_ON  LOW
#define BTN_OFF HIGH
uint8_t prev_btn_a = BTN_OFF;
uint8_t btn_a      = BTN_OFF;

#define DISP_BRIGHTNESS_MIN  7 // 0〜6もセット可能だが、何も見えない
#define DISP_BRIGHTNESS_MAX 12 //
uint8_t disp_brightness = DISP_BRIGHTNESS_MIN;

#define PWR_BTN_STABLEL     0 // 押していない or 1秒以上押し続ける
#define PWR_BTN_LONG_PRESS  1 // 1秒の長押し発生
#define PWR_BTN_SHORT_PRESS 2 // 1秒以下のボタンクリック

boolean is_sleep = false;

double vbat = 0.0;
int8_t bat_charge_p = 0;

void show_battery_info() {
  // バッテリー電圧表示
  // GetVbatData()の戻り値はバッテリー電圧のステップ数で、
  // AXP192のデータシートによると1ステップは1.1mV
  vbat = M5.Axp.GetVbatData() * 1.1 / 1000;
  M5.Lcd.setCursor(0, 5);
  M5.Lcd.printf("Volt: %.2fV", vbat);

  // バッテリー残量表示
  // 簡易的に、線形で4.2Vで100%、3.0Vで0%とする
  bat_charge_p = int8_t((vbat - 3.0) / 1.2 * 100);
  if (bat_charge_p > 100) {
    bat_charge_p = 100;
  } else if (bat_charge_p < 0) {
    bat_charge_p = 0;
  }
  M5.Lcd.setCursor(0, 25);
  M5.Lcd.printf("Charge: %3d%%", bat_charge_p);

  // 液晶の明るさ表示
  M5.Lcd.setCursor(0, 45);
  M5.Lcd.printf("Brightness:%2d", disp_brightness);
}

///////////////////////////////////////////////////////////////

void setup() {
  // Initialize the M5StickC object
  M5.begin();
  pinMode(BTN_A_PIN,  INPUT_PULLUP);

  // CPU周波数設定。
  // デフォルトは240MHzで、240, 160, 80, 40, 20, 10から選択可
  while (!setCpuFrequencyMhz(10)) {
    ;
  }

  // LCD display
  M5.Lcd.setRotation(1);  // ボタンBが上になる向き
  M5.Lcd.fillScreen(BLACK);
  M5.Lcd.setTextSize(2);
  M5.Axp.ScreenBreath(disp_brightness); // 液晶の明るさ設定
}

void loop() {
  // 情報表示
  show_battery_info();

  btn_a = digitalRead(BTN_A_PIN);

  if (prev_btn_a == BTN_OFF && btn_a == BTN_ON) {
    // ボタンAが押されたとき。1回ごとにディスプレイの明るさを上げる。
    // 最小7、最大12。12を超えたら0に戻す
    disp_brightness += 1;
    if (disp_brightness > DISP_BRIGHTNESS_MAX) {
      disp_brightness = DISP_BRIGHTNESS_MIN;
    }
    M5.Axp.ScreenBreath(disp_brightness);
    M5.Lcd.setCursor(0, 45);
    M5.Lcd.printf("Brightness:%2d", disp_brightness);
  }

  prev_btn_a = btn_a;

  if (M5.Axp.GetBtnPress() == PWR_BTN_SHORT_PRESS) {
    // 電源ボタンの短押し
    if (is_sleep) {
      ; // 復帰するだけで、何もしない
    } else {
      M5.Axp.SetSleep(); // 画面が消えるだけのスリープに入る
    }
    is_sleep = !is_sleep;
  }

  delay(100);
}

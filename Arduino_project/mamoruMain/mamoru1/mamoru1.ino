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


//インスタンス
Button button_main = Button(MAIN_BUTTON_PIN, BTN_MODE INTERRUPT, btn_interrupt());
Button button_bth = Button(BTH_BUTTON_PIN, BTN_MODE BTH_READ, btn_interrupt());

//プロトタイプ宣言
void IRAM_ATTR onTimer();
void change_mode(MODE mode);

//グローバル宣言
MODE g_mode = INIT_MODE;

hw_timer_t * timer = NULL;
volatile uint32_t isrCounter = 0;



void setup() {
  Serial.begin(115200);
  Serial.println("System Start");

  //タイマーセットアップ
  timer = timerBegin(0, getApbFrequency() / 1000000, true);
  timerAttachInterrupt(timer, &onTimer, true);
  timerAlarmWrite(timer, 1000000, true);
  timerAlarmEnable(timer);

  //wifiセットアップ
  CONNECTWIFI.SetParameter();
  CONNECTWIFI.ConnectStart();
}

void loop() {
  //モード切替
  switch (g_mode) {
    case (INIT_MODE):

    case (COUNTDOWN_PRINT):

    case (CHANGE_ROCK):
  }

  //wifi設定
  Serial.println(WiFi.status());
  if (CONNECTWIFI.WatchState()) {
    Serial.println("conected");
  }
  else {
    BlueLed01.ledOff();
    CONNECTWIFI.ReConnent();
  }
}

//タイマー割り込みで稼働する関数
void IRAM_ATTR onTimer() {
  isrCounter++;
  if (isrCounter == 180) {
    timerEnd(timer);
    timer = NULL;
    isrCounter = 0;
    M5.Axp.ScreenBreath(0);
  }
  else if (MAIN_BUTTON_PIN == HIGH) {
    timerEnd(timer);
    timer = NULL;
    isrCounter = 0;
  }
}

//モードをチェンジする関数
void change_mode(MODE mode) {
  g_mode = mode;
}

//割り込み関数
void btn_interrupt() {
  if (g_mode == INIT_MODE) {
    change_mode(COUNTDOWN_PRINT);
  }
  else  if (g_mode == COUNTDOWN_PRINT) {
    change_mode(CHANGE_ROCK);
  }
  else {
    change_mode(CHANGE_ROCK);
  }
}

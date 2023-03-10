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








const float Vref = 3.3;
const int ADC_PIN = GPIO_NUM_33;
void setup() {
    M5.begin();
    M5.Axp.ScreenBreath(9);
    M5.Lcd.setRotation(3);
    M5.Lcd.fillScreen(WHITE);
    M5.Lcd.setTextColor(BLACK);
    M5.Lcd.setTextSize(6);
    pinMode(ADC_PIN, INPUT);
    gpio_pulldown_dis(GPIO_NUM_25); // Disable pull-down on GPIO.
    gpio_pullup_dis(GPIO_NUM_25); // Disable pull-up on GPIO.
    Serial.begin(115200);
}
void loop() {
    M5.Lcd.fillScreen(WHITE);
    int val = analogRead(ADC_PIN);  // read the input pin
    float volt = Vref * float(val) / 4095.0; // 12bit
    Serial.println(volt);
    if(volt < 0.5){
      M5.Lcd.setCursor(20, 40);
      M5.Lcd.printf("MOVE");
      delay(1000);
    }
    //M5.Lcd.printf("%.2fV", volt);
}

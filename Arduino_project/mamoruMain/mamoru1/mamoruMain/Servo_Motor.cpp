#define COUNT_LOW   1500
#define COUNT_HIGH  8500
#define TIMER_WIDTH 16

#include <M5StickCPlus.h>

#include <M5StickCPlus.h>

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
#include"Servo_Motor.h"
#include"Sensor.h"
#include"Battery.h"
#include"Blutooth.h"
#include"connectWifi.h"
#include"Sleep_mode.h
#include "esp32-hal-ledc.h"

int lockNum;

int Servo_Motor::ledcread(){
  return lockNum;
}


Servo_Motor::init(){
  
  ledcSetup(1, 50, TIMER_WIDTH);
  ledcAttachPin(26, 1);

}
 
Servo_Motor::openKey(){
  
  for (int i = COUNT_LOW; i < COUNT_HIGH; i = i + 100) {
    ledcWrite(1, i);
    delay(50);
  }
  lockNum = OPEN_AMOUNT;  // 開錠時は0
    
} 

Servo_Motor::croseKey(){
  for (int i = COUNT_HIGH; i > COUNT_LOW; i = i - 100) {
    ledcWrite(1, i);
    delay(50);
  }
  lockNum = LOCK_AMOUNT;  // 施錠時は1    
} 


    

}
    
 
  

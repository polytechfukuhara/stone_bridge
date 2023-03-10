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
Servo myservo;

void open_door(){
  write(OPEN_AMOUNT); 
}

void lock__door(){
  write(LOCK_AMOUNT); 
 }

boolean getLockState(){
  lock_read_num = int read();

  if(lock_read_num==LOCK_AMOUNT){
    lockFlg ==true;
  }else{
    lockFlg ==false;
  }
  return lockFlg;
}

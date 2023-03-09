#include <M5StickCPlus.h>
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


void Button::Read() {
  if (BTN_MODE == BtnA_mode) {
    Button.HomeRead();
  } else {
    Button.RightRead();
  }

}
int Button::HomeRead() {
  return M5.BtnA.wasPressed();
}
int Button::RightRead() {
  return M5.BtnB.wasPressed();
}

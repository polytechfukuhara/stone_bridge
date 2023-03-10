#pragma once

//各関数の戻り値を受け取る変数
boolean doorLockState;
boolean blutoothState;
boolean sensorState;
boolean wifiConectState;
int bateryState;

//pin管理
#define MAIN_BUTTON_PIN 37
#define BTH_BUTTON_PIN 39
#define MOTOR_OUTPUTPIN 32
#define SENSOR_INPUTPIN 33

/* mode */
typedef enum{
  INIT_MODE,
  COUNTDOWN_PRINT,
  CHANGE_ROCK,
}MODE;

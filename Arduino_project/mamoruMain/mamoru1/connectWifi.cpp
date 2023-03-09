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

//インスタンス化
WiFiServer server(80);

//変数宣言
IPAddress Local_IP(XXX, XXX, XXX, XXX);
IPAddress SUBNET_default(255, 255, 255, 0);

void ConnectWifi::SetParameter() {
  ssid = "Sample01";
  pass = "Password";
  ip = Local_IP;
  subnet = SUBNET_default;
  Serial.println("Connection parameter set");
  Serial.print("SSID =");
  Serial.println(ssid);
  Serial.print("PASS =");
  Serial.println(pass);
  Serial.print("IP =");
  Serial.println(ip);
  Serial.print("SUBNET MASK =");
  Serial.println(subnet);
  Serial.println("parameter set finish");
}

void ConnectWifi::ConnectStart() {
  WiFi.softAP(ssid, pass); //SSIDとパスの設定
  delay(100); //接続失敗防止
  WiFi.softAPConfig(ip, ip, subnet); //IPアドレス、ゲートウェイ、サブネットマスクの設定
  IPAddress myIP = WiFi.softAPIP(); //WiFi.softAPIP()でWiFi起動
  server.begin(); //サーバーを起動(htmlを表示させるため)
  Serial.println();


  /*ログ出力*/
  Serial.println("WiFi connected");
  Serial.print("SSID：");
  Serial.println(ssid);
  Serial.print("AP IP address：");
  Serial.println(myIP);
  Serial.println("Server start!");
}

boolean ConnectWifi::WatchState() {
  if (WiFi.status() == WL_CONNECTED) {
    return true;
  } else {
    return false;
  }
}

void ConnectWifi::ReConnent() {
  int cnt = 0;
  while (WiFi.status() != WL_CONNECTED) {
    Serial.println("ReConnent Start");
    cnt++;
    delay(500);
    if (cnt % 10 == 0) {
      WiFi.disconnect();
      WiFi.begin(ssid, pass);
      M5.Lcd.println("");
    }
    if (cnt >= 30) {
      ESP.restart();
    }
  }
}

#ifndef connectWifi_h
#define connectWifi_h
#include<WiFi.h>

class connectWifi
{
  private:
    char *ssid; //SSID
    char *pass; //パスワード
    IPAddress ip;  //サーバーのIPアドレス
    IPAddress subnet; //サブネットマスク

  public:
    void SetParameter();
    void ConnectStart();
    boolean WatchState();
    void ReConnent();
    void wifiComunicate();
};
#endif

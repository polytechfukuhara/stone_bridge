#pragma once
/**
 * Batteryクラス
 *
 * 電池残量を表示する。
 */
class Battery {
  public:
    Battery();
    void setPosAndSize(int posX, int posY, int showSizeNum);
    void setDeleteBgColor(uint32_t color);
    void setTextColor(uint32_t color);    //ディスプレイ関係
    void showBattery();    //ディスプレイ関係
    void deleteBattery();    //ディスプレイ関係
    void batteryUpdate(int percent);    //ディスプレイ関係
  private:
    const float MAX_BATTERY_VOLTAGE = 4.2f;
    const float MIN_BATTERY_VOLTAGE = 3.0f;
    const int8_t BITS_PER_PIXEL     = 1;    //ディスプレイ関係
    const int TRANS_PARENTS         = 0;    //ディスプレイ関係
    const int MAX_SHOW_SIZE         = 7;    //ディスプレイ関係
    const int MIN_SHOW_SIZE         = 1;    //ディスプレイ関係
    TFT_eSprite _sprite = TFT_eSprite(&M5.Lcd);    //ディスプレイ関係
   
    bool _showFlg;    //ディスプレイ関係
    int _x;    //ディスプレイ関係
    int _y;    //ディスプレイ関係
    int _showSize;    //ディスプレイ関係
    int _width;    //ディスプレイ関係
    int _height;    //ディスプレイ関係
    int _top_width;    //ディスプレイ関係
    uint32_t _bg_color;    //ディスプレイ関係
    uint32_t _line_color;    //ディスプレイ関係
    uint32_t _text_color;    //ディスプレイ関係
    void drawBatteryLines();    //ディスプレイ関係
    int calcBatteryPercent();    //ディスプレイ関係
    uint32_t getBatteryColor();    //ディスプレイ関係
    void showBatteryPercent(int i_percent);    //ディスプレイ関係
    bool isLowBattery();
    bool isUsingBattery();
};
};

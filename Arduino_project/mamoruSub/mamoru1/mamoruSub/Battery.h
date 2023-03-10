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
    void setTextColor(uint32_t color);
    void showBattery();
    void deleteBattery();
    void batteryUpdate(int percent);
  private:
    const float MAX_BATTERY_VOLTAGE = 4.2f;
    const float MIN_BATTERY_VOLTAGE = 3.0f;
    const int8_t BITS_PER_PIXEL     = 1;
    const int TRANS_PARENTS         = 0;
    const int MAX_SHOW_SIZE         = 7;
    const int MIN_SHOW_SIZE         = 1;
    TFT_eSprite _sprite = TFT_eSprite(&M5.Lcd);
    bool _showFlg;
    int _x;
    int _y;
    int _showSize;
    int _width;
    int _height;
    int _top_width;
    uint32_t _bg_color;
    uint32_t _line_color;
    uint32_t _text_color;
    void drawBatteryLines();
    int calcBatteryPercent();
    uint32_t getBatteryColor();
    void showBatteryPercent(int i_percent);
    bool isLowBattery();
    bool isUsingBattery();
};
};

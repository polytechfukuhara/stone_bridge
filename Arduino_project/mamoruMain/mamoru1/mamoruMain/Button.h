#pragma once

typedef enum {
  BTH_READ,
  INTERRUPT,
} BTN_MODE;

class Button     // classの定義
{
  private :                   // privateはクラス内からしかアクセスできない
    int m_main_pin;
    int m_bth_pin;

  public :                    // publicはどこからでもアクセス可能
    Button(int button_pin, BTN_MODE mode, void* function);   // コンストラクター
    int Read();               // 押されたかReadする関数
};










#pragma once
typedef enum BTN_MODE {
  BtnA_mode,
  BtnB_mode,
} BTN_MODE;
class Button     // classの定義
{
  private :                   // privateはクラス内からしかアクセスできない
    int m_btn_mode;
  public :
    // publicはどこからでもアクセス可能
    Button(int BTN_MODE);   // コンストラクター
    void Read();// 押されたかReadする関数
    int HomeRead();
    int RightRead();
};

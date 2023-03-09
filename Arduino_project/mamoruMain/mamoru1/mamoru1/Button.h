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

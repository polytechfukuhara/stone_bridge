#pragma once

#define LOCK_AMOUNT = 90;
#define OPEN_AMOUNT = 0;

class Motor
{
  private:
    boolean lockFlg;
    int lock_read_num = 0;

  public:
    void lock_door();
    void open_door();
    boolean getLockState();
};

#pragma once


class Timer
{
  private:
  hw_timer_t * timer;
  volatile uint32_t isrCounter;
  
  public:
  void IRAM_ATTR onTimer(); //タイマーを発生させるタイミングの関数をいれる
  void init();
};

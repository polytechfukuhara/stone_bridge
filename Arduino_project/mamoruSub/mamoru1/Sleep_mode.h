#pragma once

class Sleep_mode
{
  private:
  
  
  public:
  void esp_sleep_enable_timer_wakeup(10000000);
  void esp_deep_sleep_start();
  M5.Axp.ScreenBreath(0);
  void init_sleep_mode();
};

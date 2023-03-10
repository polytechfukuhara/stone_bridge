#pragma once

class Sensor
{
  private:
  boolean sensorFlg;
  int sensorCount = 0;
  
  public:
  boolean sensorMove();
  void sensor(int pin_num);
};

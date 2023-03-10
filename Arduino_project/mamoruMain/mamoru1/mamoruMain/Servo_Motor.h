#pragma once

class Servo_Motor
{
  private:
  
  public:
  
  void ledcwrite(AMOUNT);
  int ledcread();
  void ledcattach(MOTOR_OUTPUTPIN);
  
};

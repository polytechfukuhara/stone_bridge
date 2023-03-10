#pragma once

class Display
{
  private:


  public:
    void pairingDisp(int batteryState, boolean doorLockState);
    void normalDisp(int batteryState, boolean doorLockState, boolean blutoothState);
    void emergentDisp();
    void deleteDisp();
    void startDisp();
};

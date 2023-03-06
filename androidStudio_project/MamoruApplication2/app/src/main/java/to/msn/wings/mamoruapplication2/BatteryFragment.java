package to.msn.wings.mamoruapplication2;

import android.app.Activity;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.BatteryManager;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;

public class BatteryFragment extends Fragment {

    //結果表示用の変数
    private String battery_info;
    //バッテリーの名前用変数
    private String batteryName = "";

    public BatteryFragment(String batteryName) {
        this.batteryName = batteryName;
    }

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        //準備
        View v = inflater.inflate(R.layout.activity_battery_fragment, container, false);

        //Activity a = requireActivity();

        //レイアウトファイルのテキストビューを取得
        //TextView textView1 = a.findViewById(R.id.battery_info);
        TextView textView1 = v.findViewById(R.id.battery_info);
        //インテントフィルターの生成とレシーバーへの登録
        IntentFilter intentFilter1 = new IntentFilter(Intent.ACTION_BATTERY_CHANGED);
        //Intent intent1 = a.getBaseContext().registerReceiver(null, intentFilter1);
        Intent intent1 = v.getContext().registerReceiver(null, intentFilter1);

        //各値の取得
        //初期化
        battery_info = "";
        //バッテリーの名前表示
        battery_info += batteryName + "\n";
        //残量を取得
        int level = intent1.getIntExtra(BatteryManager.EXTRA_LEVEL, -1);
        battery_info += "残量" + level + "%" + "\n";
        //接続状態
        int plugged = intent1.getIntExtra(BatteryManager.EXTRA_PLUGGED, -1);
        battery_info += plug(plugged) + "\n";
        //健康状態を取得
        int health = intent1.getIntExtra(BatteryManager.EXTRA_HEALTH, -1);
        battery_info += health(health) + "\n";
        //ステータスを取得
        int statas = intent1.getIntExtra(BatteryManager.EXTRA_STATUS, -1);
        battery_info += stat(statas) + "\n";
        //温度を取得
        int ondo = intent1.getIntExtra(BatteryManager.EXTRA_TEMPERATURE, -1);
        battery_info += ondo / 10 + "℃\n";
        //電圧を取得
        int voltage = intent1.getIntExtra(BatteryManager.EXTRA_VOLTAGE, -1);
        battery_info += voltage / 1000 + "V\n";

        //結果レポートの出力
        textView1.setText(battery_info);

        return v;
    }

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);

    }

    //バッテリーの健康状態を返す関数
    private String health(int h) {

        String return_health = "";

        switch (h) {
            case BatteryManager.BATTERY_HEALTH_COLD:
                return_health = "低温…";
                break;
            case BatteryManager.BATTERY_HEALTH_DEAD:
                return_health = "故障…";
                break;
            case BatteryManager.BATTERY_HEALTH_GOOD:
                return_health = "良好";
                break;
            case BatteryManager.BATTERY_HEALTH_OVER_VOLTAGE:
                return_health = "電圧オーバー";
                break;
            case BatteryManager.BATTERY_HEALTH_OVERHEAT:
                return_health = "オーバーヒート";
                break;
            case BatteryManager.BATTERY_HEALTH_UNKNOWN:
                return_health = "状態不明";
                break;
            case BatteryManager.BATTERY_HEALTH_UNSPECIFIED_FAILURE:
                return_health = "未確認エラー";
                break;
        }
        //バッテリーの健康状態を返す
        return return_health;
    }

    //接続状態を返す関数
    private String plug(int p) {

        String return_plug = "";

        switch (p) {
            case BatteryManager.BATTERY_PLUGGED_AC:
                return_plug = "AC接続";
                break;
            case BatteryManager.BATTERY_PLUGGED_USB:
                return_plug = "USB接続";
                break;
            case BatteryManager.BATTERY_PLUGGED_WIRELESS:
                return_plug = "ワイヤレス接続";
                break;
            default:
                return_plug = "未接続";
        }
        //接続状態を返す
        return return_plug;
    }

    //充電状態を返す関数
    private String stat(int s) {

        String return_status = "";

        switch (s) {
            case BatteryManager.BATTERY_STATUS_CHARGING:
                return_status = "充電中";
                break;
            case BatteryManager.BATTERY_STATUS_FULL:
                return_status = "充電完了";
                break;
            case BatteryManager.BATTERY_STATUS_DISCHARGING:
                return_status = "放電";
                break;
            case BatteryManager.BATTERY_STATUS_NOT_CHARGING:
                return_status = "未充電";
                break;
            case BatteryManager.BATTERY_STATUS_UNKNOWN:
                return_status = "状態不明";
                break;
        }
        //充電ステータスを返す
        return return_status;
    }
}
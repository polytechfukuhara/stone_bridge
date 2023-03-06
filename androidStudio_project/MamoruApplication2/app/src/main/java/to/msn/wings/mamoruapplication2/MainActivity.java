package to.msn.wings.mamoruapplication2;

import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;

import android.content.Intent;
import android.content.IntentFilter;
import android.os.BatteryManager;
import android.os.Bundle;
import android.widget.Button;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        //各インスタンス
        Button btnUpdate = findViewById(R.id.btnGo);
        Button btnWifi = findViewById(R.id.btnWifi);
        Button btnBth = findViewById(R.id.btnBth);
        TextView txtOpenClose = findViewById(R.id.txtOpenClose);
        TextView txtBthOnOff = findViewById(R.id.txtBthOnOff);

        //「更新」ボタンのクリック時処理
        btnUpdate.setOnClickListener(view -> {
            //バッテリーフラグメント処理
            BatteryFragment B1 = new BatteryFragment("本体");
            BatteryFragment B2 = new BatteryFragment("キー");
            FragmentManager m = getSupportFragmentManager();
            FragmentTransaction t = m.beginTransaction();
            t.replace(R.id.frame1, B1);
            t.replace(R.id.frame2, B2);
            t.commit();

            //施錠開錠状況の処理
            txtOpenClose.setText(R.string.txtOpen);

            //Blutoothの接続状況処理
            txtBthOnOff.setText(R.string.btnOk);
        });

        //「WIFI接続」ボタンのクリック時処理
        btnWifi.setOnClickListener(view -> {
            Intent i = new Intent(MainActivity.this, WifiActivity.class);
            startActivity(i);
        });

        //「Blutooth接続」ボタンのクリック時処理
        /*btnBth.setOnClickListener(view -> {
            Intent i = new Intent(MainActivity.this, BltoothActivity.class);
            startActivity(i);
        });*/
    }
}
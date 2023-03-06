package to.msn.wings.mamoruapplication2;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.os.HandlerCompat;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class WifiActivity extends AppCompatActivity {
    //jsonデータ用
    private String name[];
    private String pass[];

    //editText用
    private String EditName;
    private String EditPass;

    //判別用フラグ
    private boolean flg;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_wifi);

        name = new String[3];
        pass = new String[3];

        Button btnCrt2 = findViewById(R.id.btnCrt2);


        //ボタンクリック時処理
        btnCrt2.setOnClickListener(view -> {
            //インスタンス
            EditText editName = findViewById(R.id.editId2);
            EditText editPass = findViewById(R.id.editPass2);
            //editTextの入力値を格納
            String n = editName.getText().toString();
            String p = editPass.getText().toString();
            StringBuilder builder = new StringBuilder();

            ExecutorService exe = Executors.newSingleThreadExecutor();
            exe.execute(() -> {
                try{
                    //リクエスト
                    URL url = new URL("https://sater.web.fc2.com/kouza/users.json");
                    HttpURLConnection con = (HttpURLConnection) url.openConnection();
                    con.setRequestMethod("GET");

                    //レスポンス
                    InputStream is = con.getInputStream();
                    //todo 次の行で例外をキャッチし115行に飛んでしまう
                    InputStreamReader isr = new InputStreamReader(is, StandardCharsets.UTF_8);
                    BufferedReader br = new BufferedReader(isr);

                    //jsonデータをbuilderに格納
                    String line;
                    while ((line = br.readLine())!=null){
                        builder.append(line);
                    }

                    //処理内容
                    Looper looper = getMainLooper();
                    Handler handler = HandlerCompat.createAsync(looper);
                    handler.post(() -> {
                        try {
                            JSONObject json = new JSONObject(builder.toString());
                            JSONArray users = json.getJSONArray("users");

                            //jsonデータを配列に格納
                            for (int i = 0; i < users.length(); i++){
                                JSONObject user = users.getJSONObject(i);
                                name[i] = user.getString("name");
                                pass[i] = user.getString("password");
                            }
                        }catch (JSONException e){
                            e.printStackTrace();
                        }

                        //配列データと入力値が同じか判別
                        for(int i = 0; i < name.length; i++){
                            if ((name[i].equals(n)) && (pass[i].equals(p))) {
                                flg = true;
                                break;
                            }else{
                                flg = false;
                            }
                        }

                        //flgによりトースト表示
                        if(flg){
                            Toast.makeText(this, "WIFI接続完了", Toast.LENGTH_SHORT).show();
                        }else{
                            Toast.makeText(this, "IDかPASSWORDが違います", Toast.LENGTH_SHORT).show();
                        }
                    });
                }catch (Exception e){
                    e.printStackTrace();
                    Log.d("JSON",e.getMessage());
                }
            });
        });
    }
}


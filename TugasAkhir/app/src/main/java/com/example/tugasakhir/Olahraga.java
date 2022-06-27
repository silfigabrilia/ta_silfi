package com.example.tugasakhir;

import androidx.appcompat.app.AppCompatActivity;

import android.app.ProgressDialog;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.SimpleAdapter;
import android.widget.TextView;
import android.widget.Toast;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.JsonObjectRequest;
import com.android.volley.toolbox.Volley;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.HashMap;

public class Olahraga extends AppCompatActivity {

    private ProgressDialog pDialog;
    private static String URL_Olahraga = "https://sistempakarta.000webhostapp.com/android/get_olahraga.php";
    private ListView lv;
    private SimpleAdapter dataAdapter;
    private ArrayList<MOlahraga> olahragaArrayList = new ArrayList<MOlahraga>();
    private MOlahraga olahraga;
    TextView definisi,keterangan;
    ImageView btnkembali;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_olahraga);
        setTitle("Olahraga");

        getOlahraga();

        definisi = findViewById(R.id.tvdefinisi);
        keterangan = findViewById(R.id.tvketerangan);
        btnkembali = findViewById(R.id.btn_kembali);
        lv = findViewById(R.id.listpro);

        btnkembali.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                finish();
            }
        });
    }

    private void displayLoader() {
        pDialog = new ProgressDialog(Olahraga.this);
        pDialog.setMessage("Sedang diproses...");
        pDialog.setIndeterminate(false);
        pDialog.setCancelable(false);
        pDialog.show();
    }

    private void getOlahraga() {
        displayLoader();

        RequestQueue queue = Volley.newRequestQueue(Olahraga.this);
        JsonObjectRequest jsArrayRequest = new JsonObjectRequest(Request.Method.GET, URL_Olahraga, null, new Response.Listener<JSONObject>() {
            @Override
            public void onResponse(JSONObject response) {
                pDialog.dismiss();
                try {
                    if (response.getInt("status") == 0) {
                        JSONArray jsonArray = response.getJSONArray("olahraga");
                        ArrayList<HashMap<String,String>> list = new ArrayList<>();
                        for (int i = 0; i < jsonArray.length(); i++) {
                            JSONObject jsonObject = jsonArray.getJSONObject(i);
                            HashMap<String, String> map = new HashMap<String, String>();
                            map.put("nama", jsonObject.getString("nama"));
                            map.put("keterangan", jsonObject.getString("keterangan"));
                            list.add(map);
                        }
                        dataAdapter = new SimpleAdapter(
                                Olahraga.this,
                                list,
                                R.layout.protein_list,
                                new String[]{"nama","keterangan"},
                                new int[]{R.id.tvdefinisi, R.id.tvketerangan});
                        lv.setAdapter(dataAdapter);
                    } else {
                        Toast.makeText(getApplicationContext(),
                                response.getString("message"), Toast.LENGTH_SHORT).show();
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }, new Response.ErrorListener() {

            @Override
            public void onErrorResponse(VolleyError error) {
                pDialog.dismiss();
                Toast.makeText(getApplicationContext(),
                        error.getMessage(), Toast.LENGTH_SHORT).show();
            }
        });
        queue.add(jsArrayRequest);
    }
}
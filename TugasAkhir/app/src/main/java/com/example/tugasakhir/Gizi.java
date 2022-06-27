package com.example.tugasakhir;

import androidx.appcompat.app.AppCompatActivity;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
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

public class Gizi extends AppCompatActivity {

    private ProgressDialog pDialog;
    ImageView btnkembali;
    Button karbo;
    Button protein;
    Button mineral;
    Button gizi1;
    Button gizi2;
    Button gizi3;
    TextView definisi,keterangan;
    //TextView definisi2,keterangan2;
    private static String URL_Gizi = "https://sistempakarta.000webhostapp.com/android/get_gizi.php";
    //private static String URL_Tingkat_Gizi = "https://sistempakarta.000webhostapp.com/android/get_tingkat_gizi.php";

//gizi
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_gizi);
        setTitle("Gizi");

        getGizi();
        //getTingkatGizi();

        btnkembali = findViewById(R.id.btn_kembali);
        karbo = findViewById(R.id.btn_karbo);
        protein = findViewById(R.id.btn_pro);
        mineral = findViewById(R.id.btn_min);
        gizi1 = findViewById(R.id.btn_gz1);
        gizi2 = findViewById(R.id.btn_gz2);
        gizi3 = findViewById(R.id.btn_gz3);
        definisi = findViewById(R.id.tvdefinisi);
        keterangan = findViewById(R.id.tvketerangan);
        //definisi2 = findViewById(R.id.tvdefinisi2);
        //keterangan2 = findViewById(R.id.tvketerangan2);

        btnkembali.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                finish();
            }
        });

        karbo.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent i = new Intent(Gizi.this, Karbohidrat.class);
                startActivity(i);
            }
        });
        protein.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent i = new Intent(Gizi.this, Protein.class);
                startActivity(i);
            }
        });
        mineral.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent i = new Intent(Gizi.this, Lemak.class);
                startActivity(i);
            }
        });
        gizi1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent i = new Intent(Gizi.this, Gizi_kurang.class);
                startActivity(i);
            }
        });
        gizi2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent i = new Intent(Gizi.this, Gizi_cukup.class);
                startActivity(i);
            }
        });
        gizi3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent i = new Intent(Gizi.this, Gizi_lebih.class);
                startActivity(i);
            }
        });

        }


    private void displayLoader() {
        pDialog = new ProgressDialog(Gizi.this);
        pDialog.setMessage("Sedang diproses...");
        pDialog.setIndeterminate(false);
        pDialog.setCancelable(false);
        pDialog.show();
    }

    private void getGizi() {
        displayLoader();

        RequestQueue queue = Volley.newRequestQueue(Gizi.this);
        JsonObjectRequest jsArrayRequest = new JsonObjectRequest(Request.Method.GET, URL_Gizi, null, new Response.Listener<JSONObject>() {
                    @Override
                    public void onResponse(JSONObject response) {
                        pDialog.dismiss();
                        try {
                            if (response.getInt("status") == 0) {
                                JSONArray jsonArray = response.getJSONArray("gizi");
                                for (int i = 0; i < jsonArray.length(); i++) {
                                    JSONObject jsonObject = jsonArray.getJSONObject(i);
                                    String nama = jsonObject.getString("nama");
                                    String ket = jsonObject.getString("keterangan");

                                    definisi.setText(nama);
                                    keterangan.setText(ket);
                                }
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
    //tingkatgizi
//    private void getTingkatGizi() {
//        displayLoader();
//
//        RequestQueue queue = Volley.newRequestQueue(Gizi.this);
//        JsonObjectRequest jsArrayRequest = new JsonObjectRequest(Request.Method.GET, URL_Tingkat_Gizi, null, new Response.Listener<JSONObject>() {
//            @Override
//            public void onResponse(JSONObject response) {
//                pDialog.dismiss();
//                try {
//                    if (response.getInt("status") == 0) {
//                        JSONArray jsonArray = response.getJSONArray("tingkat_gizi");
//                        for (int i = 0; i < jsonArray.length(); i++) {
//                            JSONObject jsonObject = jsonArray.getJSONObject(i);
//                            String nama = jsonObject.getString("nama");
//                            String ket = jsonObject.getString("keterangan");
//
//                            definisi2.setText(nama);
//                            keterangan2.setText(ket);
//                        }
//                    } else {
//                        Toast.makeText(getApplicationContext(),
//                                response.getString("message"), Toast.LENGTH_SHORT).show();
//                    }
//                } catch (JSONException e) {
//                    e.printStackTrace();
//                }
//            }
//        }, new Response.ErrorListener() {
//
//            @Override
//            public void onErrorResponse(VolleyError error) {
//                pDialog.dismiss();
//                Toast.makeText(getApplicationContext(),
//                        error.getMessage(), Toast.LENGTH_SHORT).show();
//            }
//        });
//        queue.add(jsArrayRequest);
//    }
}
package com.example.tugasakhir;

import androidx.appcompat.app.AppCompatActivity;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
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

public class Imunitas extends AppCompatActivity {

    private ProgressDialog pDialog;
    private static String URL_Imunitas = "https://sistempakarta.000webhostapp.com/android/get_imun.php";
    TextView definisi,keterangan;
    ImageView btnkembali;
    ImageView btngo;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_imunitas);
        setTitle("Imunitas");

        getImunitas();

        definisi = findViewById(R.id.tvdefinisi);
        keterangan = findViewById(R.id.tvketerangan);
        btnkembali = findViewById(R.id.btn_kembali);
        btngo= findViewById(R.id.go);


        btnkembali.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                finish();
            }
        });

        btngo.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent i = new Intent(Imunitas.this, Vitamin.class);
                startActivity(i);
            }
        });

    }

    private void displayLoader() {
        pDialog = new ProgressDialog(Imunitas.this);
        pDialog.setMessage("Sedang diproses...");
        pDialog.setIndeterminate(false);
        pDialog.setCancelable(false);
        pDialog.show();
    }

    private void getImunitas() {
        displayLoader();

        RequestQueue queue = Volley.newRequestQueue(Imunitas.this);
        JsonObjectRequest jsArrayRequest = new JsonObjectRequest(Request.Method.GET, URL_Imunitas, null, new Response.Listener<JSONObject>() {
            @Override
            public void onResponse(JSONObject response) {
                pDialog.dismiss();
                try {
                    if (response.getInt("status") == 0) {
                        JSONArray jsonArray = response.getJSONArray("imunitas");
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
}
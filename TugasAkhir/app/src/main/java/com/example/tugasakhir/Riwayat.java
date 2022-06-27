package com.example.tugasakhir;

import androidx.appcompat.app.AppCompatActivity;

import android.app.ProgressDialog;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.SimpleAdapter;
import android.widget.Toast;

import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.JsonObjectRequest;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.HashMap;

public class Riwayat extends AppCompatActivity {

    private ProgressDialog pDialog;
    private final static String URL_Riwayat = "https://sistempakarta.000webhostapp.com/android/get_daftar_riwayat.php";
    private ListView lv;
    private SimpleAdapter adapter;
    private User user;
    ImageView btnkembali;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_riwayat);
        setTitle("Riwayat Diagnosa");

        SessionHandler session = new SessionHandler(getApplicationContext());
        user = session.getUserDetails();

        lv = findViewById(R.id.list);

        getData();
        btnkembali = findViewById(R.id.btn_kembali);
        btnkembali.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                finish();
            }
        });
    }

    private void displayLoader() {
        pDialog = new ProgressDialog(Riwayat.this);
        pDialog.setMessage("Sedang diproses...");
        pDialog.setIndeterminate(false);
        pDialog.setCancelable(false);
        pDialog.show();
    }

    private void getData() {
        displayLoader();
        JSONObject request = new JSONObject();
        try {
            request.put("id_pengguna", user.getIdPengguna());
        } catch (JSONException e) {
            e.printStackTrace();
        }
        JsonObjectRequest jsArrayRequest = new JsonObjectRequest
                (Request.Method.POST, URL_Riwayat, request, new Response.Listener<JSONObject>() {
                    @Override
                    public void onResponse(JSONObject response) {
                        pDialog.dismiss();
                        try {
                            if (response.getInt("status") == 0) {
                                JSONArray jsonArray = response.getJSONArray("riwayat");
                                ArrayList<HashMap<String, String>> list = new ArrayList<>();
                                for (int i = 0; i < jsonArray.length(); i++) {
                                    JSONObject jsonObject = jsonArray.getJSONObject(i);
                                    HashMap<String, String> map = new HashMap<String, String>();
                                    map.put("nama_penyakit", jsonObject.getString("nama_penyakit"));
                                    map.put("tanggal", jsonObject.getString("tanggal"));
                                    list.add(map);
                                }
                                adapter = new SimpleAdapter(
                                        Riwayat.this,
                                        list,
                                        R.layout.riwayat_list,
                                        new String[]{"nama_penyakit", "tanggal"},
                                        new int[]{R.id.tv_hasil, R.id.tv_tanggal});
                                lv.setAdapter(adapter);
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

        MySingleton.getInstance(this).addToRequestQueue(jsArrayRequest);
    }
}
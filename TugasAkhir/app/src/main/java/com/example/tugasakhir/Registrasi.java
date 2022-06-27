package com.example.tugasakhir;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import com.android.volley.AuthFailureError;
import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.JsonObjectRequest;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;

import org.json.JSONException;
import org.json.JSONObject;

import androidx.appcompat.app.AppCompatActivity;

import java.util.HashMap;
import java.util.Map;


public class Registrasi extends AppCompatActivity {

    private static String URL_Registrasi = "https://sistempakarta.000webhostapp.com/android/register.php";

    private EditText namalengkap, username, password, jeniskelamin, tb, bb;
    private Button btnregister,btnlogin;
    private ProgressDialog pDialog;

    private String Namalengkap,Username,Password,Jeniskelamin,Beratbadan,Tinggibadan;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.registrasi);
        setTitle("Register");

        namalengkap = findViewById(R.id.nama_lengkap);
        username = findViewById(R.id.username);
        password = findViewById(R.id.password);
        jeniskelamin = findViewById(R.id.jenis_kelamin);
        tb = findViewById(R.id.tb);
        bb = findViewById(R.id.bb);

        btnregister = findViewById(R.id.btndaftar);
        btnlogin = findViewById(R.id.btnlogin);

        btnregister.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Namalengkap = namalengkap.getText().toString().trim();
                Username = username.getText().toString().trim();
                Password = password.getText().toString().trim();
                Jeniskelamin = jeniskelamin.getText().toString().trim();
                Tinggibadan = tb.getText().toString().trim();
                Beratbadan = bb.getText().toString().trim();
                if (validateInputs()){
                    daftar();
                }
            }
        });

        btnlogin.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(Registrasi.this, Login.class);
                startActivity(intent);
            }
        });

    }

    private void daftar(){
        displayLoader();
        JSONObject request = new JSONObject();
        try {
            request.put("username", Username);
            request.put("nama_lengkap", Namalengkap);
            request.put("password", Password);
            request.put("jenis_kelamin", Jeniskelamin);
            request.put("tinggi_badan", Tinggibadan);
            request.put("berat_badan", Beratbadan);
        } catch (JSONException e){
            e.printStackTrace();
        }

        JsonObjectRequest jsonObjectRequest = new JsonObjectRequest(Request.Method.POST, URL_Registrasi, request, new Response.Listener<JSONObject>() {
            @Override
            public void onResponse(JSONObject response) {
                pDialog.dismiss();
                try {
                    if (response.getInt("status") == 0) {
                        Toast.makeText(getApplicationContext(),
                                response.getString("message"), Toast.LENGTH_SHORT).show();
                        Intent intent = new Intent(Registrasi.this, Login.class);
                        startActivity(intent);
                        finish();
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

        MySingleton.getInstance(this).addToRequestQueue(jsonObjectRequest);
    }

    private boolean validateInputs() {
        if (namalengkap.equals("")) {
            namalengkap.setError("Isi dulu Nama Lengkap");
            namalengkap.requestFocus();
            return false;
        }
        if (username.equals("")) {
            username.setError("Isi dulu Username");
            username.requestFocus();
            return false;
        }
        if (password.equals("")) {
            password.setError("Isi dulu Password");
            password.requestFocus();
            return false;
        }
        if (jeniskelamin.equals("")) {
            jeniskelamin.setError("Isi dulu Password");
            jeniskelamin.requestFocus();
            return false;
        }
        if (tb.equals("")) {
            tb.setError("Isi dulu Password");
            tb.requestFocus();
            return false;
        }
        if (bb.equals("")) {
            bb.setError("Isi dulu Password");
            bb.requestFocus();
            return false;
        }
        return true;
    }

    private void displayLoader() {
        pDialog = new ProgressDialog(Registrasi.this);
        pDialog.setMessage("Sedang diproses...");
        pDialog.setIndeterminate(false);
        pDialog.setCancelable(false);
        pDialog.show();
    }


}

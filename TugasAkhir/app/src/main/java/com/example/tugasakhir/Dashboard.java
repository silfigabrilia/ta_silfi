package com.example.tugasakhir;

import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;


public class Dashboard extends AppCompatActivity {

    Button logout;
    ImageView pindahHal1;
    ImageView pindahHal2;
    ImageView pindahHal3;
    ImageView pindahHal4;
    ImageView pindahHal5;
    ImageView pindahHal6;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_dashboard);

logout = findViewById(R.id.btnlogout) ;
pindahHal1 = findViewById(R.id.tap1) ;
pindahHal2= findViewById(R.id.tap2);
pindahHal3= findViewById(R.id.tap3);
pindahHal4= findViewById(R.id.tap4);
pindahHal5= findViewById(R.id.tap5);
pindahHal6= findViewById(R.id. tap6);



        logout.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent i = new Intent(Dashboard.this, Login.class);
                startActivity(i);
            }
        });
        pindahHal1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent i = new Intent(Dashboard.this, Diagnosa.class);
                startActivity(i);
            }
        });

        pindahHal2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent i = new Intent(Dashboard.this, Gizi.class);
                startActivity(i);
            }
        });

        pindahHal3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent i = new Intent(Dashboard.this, Imunitas.class);
                startActivity(i);
            }
        });

        pindahHal4.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent i = new Intent(Dashboard.this, Olahraga.class);
                startActivity(i);
            }
        });

        pindahHal5.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent i = new Intent(Dashboard.this, Riwayat.class);
                startActivity(i);
            }
        });

        pindahHal6.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent i = new Intent(Dashboard.this, About.class);
                startActivity(i);
            }
        });

    }
}
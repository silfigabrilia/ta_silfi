package com.example.tugasakhir;

public class MVitamin {

    String nama = null;
    String keterangan = null;

    public MVitamin(String nama, String keterangan) {
        super();
        this.nama = nama;
        this.keterangan = keterangan;
    }

    public String getNama() {
        return nama;
    }

    public void setNama(String nama) {
        this.nama = nama;
    }

    public String getKeterangan() {
        return keterangan;
    }

    public void setKeterangan(String keterangan) {
        this.keterangan = keterangan;
    }
}

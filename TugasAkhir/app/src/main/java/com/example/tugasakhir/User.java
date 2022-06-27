package com.example.tugasakhir;

public class User {
    private String idPengguna;
    private String level;
    private String namaLengkap;
    private String bb;
    private String jk;
    private String tb;

    public String getIdPengguna() {
        return idPengguna;
    }

    public void setIdPengguna(String idPengguna) {
        this.idPengguna = idPengguna;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public void setNamaLengkap(String namaLengkap) {
        this.namaLengkap = namaLengkap;
    }

    public String getNamaLengkap() {
        return namaLengkap;
    }

    public void setBb(String bb) {
        this.bb = bb;
    }

    public String getBb() {
        return bb;
    }

    public void setJk(String jk) {
        this.jk = jk;
    }

    public String getJk() {
        return jk;
    }

    public void setTb(String tb) {
        this.tb = tb;
    }

    public String getTb() {
        return tb;
    }
}

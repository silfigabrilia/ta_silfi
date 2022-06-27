package com.example.tugasakhir;

import android.content.Context;
import android.content.SharedPreferences;

public class SessionHandler {
    private static final String PREF_NAME = "UserSession";
    private static final String KEY_ID = "id_pengguna";
    private static final String KEY_NL = "nama_lengkap";
    private static final String KEY_JK = "jk";
    private static final String KEY_TB = "tb";
    private static final String KEY_BB = "bb";
    private static final String KEY_LEVEL = "level";
    private static final String KEY_EMPTY = "";
    private Context mContext;
    private SharedPreferences.Editor mEditor;
    private SharedPreferences mPreferences;

    public SessionHandler(Context mContext) {
        this.mContext = mContext;
        mPreferences = mContext.getSharedPreferences(PREF_NAME, Context.MODE_PRIVATE);
        this.mEditor = mPreferences.edit();
    }

    public void loginUser(String id_pengguna,String nama_lengkap,String jk,String tb,String bb, String level) {
        mEditor.putString(KEY_ID, id_pengguna);
        mEditor.putString(KEY_NL, nama_lengkap);
        mEditor.putString(KEY_JK, jk);
        mEditor.putString(KEY_TB, tb);
        mEditor.putString(KEY_BB, bb);
        mEditor.putString(KEY_LEVEL, level);
        mEditor.commit();
    }

    public User getUserDetails() {
        User user = new User();
        user.setIdPengguna(mPreferences.getString(KEY_ID, KEY_EMPTY));
        user.setNamaLengkap(mPreferences.getString(KEY_NL, KEY_EMPTY));
        user.setJk(mPreferences.getString(KEY_JK, KEY_EMPTY));
        user.setTb(mPreferences.getString(KEY_TB, KEY_EMPTY));
        user.setBb(mPreferences.getString(KEY_BB, KEY_EMPTY));
        user.setLevel(mPreferences.getString(KEY_LEVEL, KEY_EMPTY));
        return user;
    }

    public void logoutUser(){
        mEditor.clear();
        mEditor.commit();
    }
}

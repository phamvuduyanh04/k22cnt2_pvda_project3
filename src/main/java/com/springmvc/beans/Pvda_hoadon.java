package com.springmvc.beans;

import java.sql.Timestamp;

public class Pvda_hoadon {
    private int pvda_id;
    private int pvda_id_docgia;
    private int pvda_tongtien;
    private String pvda_phuongthucthanhtoan;
    private Timestamp pvda_ngaytao;

    public Pvda_hoadon() {
    }

    public Pvda_hoadon(int pvda_id, int pvda_id_docgia, int pvda_tongtien, String pvda_phuongthucthanhtoan, Timestamp pvda_ngaytao) {
        this.pvda_id = pvda_id;
        this.pvda_id_docgia = pvda_id_docgia;
        this.pvda_tongtien = pvda_tongtien;
        this.pvda_phuongthucthanhtoan = pvda_phuongthucthanhtoan;
        this.pvda_ngaytao = pvda_ngaytao;
    }

    public int getPvda_id() {
        return pvda_id;
    }

    public void setPvda_id(int pvda_id) {
        this.pvda_id = pvda_id;
    }

    public int getPvda_id_docgia() {
        return pvda_id_docgia;
    }

    public void setPvda_id_docgia(int pvda_id_docgia) {
        this.pvda_id_docgia = pvda_id_docgia;
    }

    public int getPvda_tongtien() {
        return pvda_tongtien;
    }

    public void setPvda_tongtien(int pvda_tongtien) {
        this.pvda_tongtien = pvda_tongtien;
    }

    public String getPvda_phuongthucthanhtoan() {
        return pvda_phuongthucthanhtoan;
    }

    public void setPvda_phuongthucthanhtoan(String pvda_phuongthucthanhtoan) {
        this.pvda_phuongthucthanhtoan = pvda_phuongthucthanhtoan;
    }

    public Timestamp getPvda_ngaytao() {
        return pvda_ngaytao;
    }

    public void setPvda_ngaytao(Timestamp pvda_ngaytao) {
        this.pvda_ngaytao = pvda_ngaytao;
    }
}
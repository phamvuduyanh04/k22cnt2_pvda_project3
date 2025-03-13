package com.springmvc.beans;

public class Pvda_thietbithuvien {
    private int pvda_id;
    private String pvda_ten;
    private int pvda_soluong;
    private String pvda_hinhanh;
    private boolean pvda_trangthai;
    
    /**
     * Constructor có tham số
     */
    public Pvda_thietbithuvien(int pvda_id, String pvda_ten, int pvda_soluong, String pvda_hinhanh, boolean pvda_trangthai) {
        super();
        this.pvda_id = pvda_id;
        this.pvda_ten = pvda_ten;
        this.pvda_soluong = pvda_soluong;
        this.pvda_hinhanh = pvda_hinhanh;
        this.pvda_trangthai = pvda_trangthai;
    }
    
    /**
     * Constructor mặc định
     */
    public Pvda_thietbithuvien() {
        super();
    }

    public int getPvda_id() {
        return pvda_id;
    }

    public void setPvda_id(int pvda_id) {
        this.pvda_id = pvda_id;
    }

    public String getPvda_ten() {
        return pvda_ten;
    }

    public void setPvda_ten(String pvda_ten) {
        this.pvda_ten = pvda_ten;
    }

    public int getPvda_soluong() {
        return pvda_soluong;
    }

    public void setPvda_soluong(int pvda_soluong) {
        this.pvda_soluong = pvda_soluong;
    }

    public String getPvda_hinhanh() {
        return pvda_hinhanh;
    }

    public void setPvda_hinhanh(String pvda_hinhanh) {
        this.pvda_hinhanh = pvda_hinhanh;
    }

    public boolean isPvda_trangthai() {
        return pvda_trangthai;
    }

    public void setPvda_trangthai(boolean pvda_trangthai) {
        this.pvda_trangthai = pvda_trangthai;
    }
}
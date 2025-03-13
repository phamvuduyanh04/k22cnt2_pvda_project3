package com.springmvc.beans;

public class Pvda_thuthu {
    private int pvda_id;
    private String pvda_taikhoan;
    private String pvda_matkhau;
    private boolean pvda_trangthai;
    
    /**
     * Constructor có tham số
     */
    public Pvda_thuthu(int pvda_id, String pvda_taikhoan, String pvda_matkhau, boolean pvda_trangthai) {
        super();
        this.pvda_id = pvda_id;
        this.pvda_taikhoan = pvda_taikhoan;
        this.pvda_matkhau = pvda_matkhau;
        this.pvda_trangthai = pvda_trangthai;
    }
    
    /**
     * Constructor mặc định
     */
    public Pvda_thuthu() {
        super();
    }

    public int getPvda_id() {
        return pvda_id;
    }

    public void setPvda_id(int pvda_id) {
        this.pvda_id = pvda_id;
    }

    public String getPvda_taikhoan() {
        return pvda_taikhoan;
    }

    public void setPvda_taikhoan(String pvda_taikhoan) {
        this.pvda_taikhoan = pvda_taikhoan;
    }

    public String getPvda_matkhau() {
        return pvda_matkhau;
    }

    public void setPvda_matkhau(String pvda_matkhau) {
        this.pvda_matkhau = pvda_matkhau;
    }

    public boolean isPvda_trangthai() {
        return pvda_trangthai;
    }

    public void setPvda_trangthai(boolean pvda_trangthai) {
        this.pvda_trangthai = pvda_trangthai;
    }
}

package com.springmvc.beans;

public class Pvda_docgia {
    private int pvda_id;
    private String pvda_hoten;
    private String pvda_sdt;
    private String pvda_email;
    private String pvda_diachi;
    
    /**
     * Constructor có tham số
     */
    public Pvda_docgia(int pvda_id, String pvda_hoten, String pvda_sdt, String pvda_email, String pvda_diachi) {
        super();
        this.pvda_id = pvda_id;
        this.pvda_hoten = pvda_hoten;
        this.pvda_sdt = pvda_sdt;
        this.pvda_email = pvda_email;
        this.pvda_diachi = pvda_diachi;
    }
    
    /**
     * Constructor mặc định
     */
    public Pvda_docgia() {
        super();
    }

    public int getPvda_id() {
        return pvda_id;
    }

    public void setPvda_id(int pvda_id) {
        this.pvda_id = pvda_id;
    }

    public String getPvda_hoten() {
        return pvda_hoten;
    }

    public void setPvda_hoten(String pvda_hoten) {
        this.pvda_hoten = pvda_hoten;
    }

    public String getPvda_sdt() {
        return pvda_sdt;
    }

    public void setPvda_sdt(String pvda_sdt) {
        this.pvda_sdt = pvda_sdt;
    }

    public String getPvda_email() {
        return pvda_email;
    }

    public void setPvda_email(String pvda_email) {
        this.pvda_email = pvda_email;
    }

    public String getPvda_diachi() {
        return pvda_diachi;
    }

    public void setPvda_diachi(String pvda_diachi) {
        this.pvda_diachi = pvda_diachi;
    }
}

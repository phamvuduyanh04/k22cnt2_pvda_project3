package com.springmvc.beans;

public class Pvda_sach {
    private int pvda_id;
    private String pvda_tieude;
    private String pvda_tacgia;
    private String pvda_nhaxuatban;
    private int pvda_namxuatban;
    private String pvda_theloai;
    private int pvda_soluong;
    private String pvda_anhbia;
    
    /**
     * Constructor có tham số
     */
    public Pvda_sach(int pvda_id, String pvda_tieude, String pvda_tacgia, String pvda_nhaxuatban, int pvda_namxuatban, String pvda_theloai, int pvda_soluong, String pvda_anhbia) {
        super();
        this.pvda_id = pvda_id;
        this.pvda_tieude = pvda_tieude;
        this.pvda_tacgia = pvda_tacgia;
        this.pvda_nhaxuatban = pvda_nhaxuatban;
        this.pvda_namxuatban = pvda_namxuatban;
        this.pvda_theloai = pvda_theloai;
        this.pvda_soluong = pvda_soluong;
        this.pvda_anhbia = pvda_anhbia;
    }
    
    /**
     * Constructor mặc định
     */
    public Pvda_sach() {
        super();
    }

    public int getPvda_id() {
        return pvda_id;
    }

    public void setPvda_id(int pvda_id) {
        this.pvda_id = pvda_id;
    }

    public String getPvda_tieude() {
        return pvda_tieude;
    }

    public void setPvda_tieude(String pvda_tieude) {
        this.pvda_tieude = pvda_tieude;
    }

    public String getPvda_tacgia() {
        return pvda_tacgia;
    }

    public void setPvda_tacgia(String pvda_tacgia) {
        this.pvda_tacgia = pvda_tacgia;
    }

    public String getPvda_nhaxuatban() {
        return pvda_nhaxuatban;
    }

    public void setPvda_nhaxuatban(String pvda_nhaxuatban) {
        this.pvda_nhaxuatban = pvda_nhaxuatban;
    }

    public int getPvda_namxuatban() {
        return pvda_namxuatban;
    }

    public void setPvda_namxuatban(int pvda_namxuatban) {
        this.pvda_namxuatban = pvda_namxuatban;
    }

    public String getPvda_theloai() {
        return pvda_theloai;
    }

    public void setPvda_theloai(String pvda_theloai) {
        this.pvda_theloai = pvda_theloai;
    }

    public int getPvda_soluong() {
        return pvda_soluong;
    }

    public void setPvda_soluong(int pvda_soluong) {
        this.pvda_soluong = pvda_soluong;
    }

    public String getPvda_anhbia() {
        return pvda_anhbia;
    }

    public void setPvda_anhbia(String pvda_anhbia) {
        this.pvda_anhbia = pvda_anhbia;
    }
}
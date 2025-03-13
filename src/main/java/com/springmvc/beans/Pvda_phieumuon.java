package com.springmvc.beans;

public class Pvda_phieumuon {
    private int pvda_id;
    private int pvda_id_docgia;
    private int pvda_id_sach;
    private String pvda_tieude;
    private String pvda_tacgia;
    private String pvda_ngaymuon;
    private String pvda_ngaytra;
    private String pvda_trangthai;

    public Pvda_phieumuon() {}

    public Pvda_phieumuon(int pvda_id, int pvda_id_docgia, int pvda_id_sach, String pvda_tieude, String pvda_tacgia, String pvda_ngaymuon, String pvda_ngaytra, String pvda_trangthai) {
        this.pvda_id = pvda_id;
        this.pvda_id_docgia = pvda_id_docgia;
        this.pvda_id_sach = pvda_id_sach;
        this.pvda_tieude = pvda_tieude;
        this.pvda_tacgia = pvda_tacgia;
        this.pvda_ngaymuon = pvda_ngaymuon;
        this.pvda_ngaytra = pvda_ngaytra;
        this.pvda_trangthai = pvda_trangthai;
    }

    public int getPvda_id() { return pvda_id; }
    public void setPvda_id(int pvda_id) { this.pvda_id = pvda_id; }

    public int getPvda_id_docgia() { return pvda_id_docgia; }
    public void setPvda_id_docgia(int pvda_id_docgia) { this.pvda_id_docgia = pvda_id_docgia; }

    public int getPvda_id_sach() { return pvda_id_sach; }
    public void setPvda_id_sach(int pvda_id_sach) { this.pvda_id_sach = pvda_id_sach; }

    public String getPvda_tieude() { return pvda_tieude; }
    public void setPvda_tieude(String pvda_tieude) { this.pvda_tieude = pvda_tieude; }

    public String getPvda_tacgia() { return pvda_tacgia; }
    public void setPvda_tacgia(String pvda_tacgia) { this.pvda_tacgia = pvda_tacgia; }

    public String getPvda_ngaymuon() { return pvda_ngaymuon; }
    public void setPvda_ngaymuon(String pvda_ngaymuon) { this.pvda_ngaymuon = pvda_ngaymuon; }

    public String getPvda_ngaytra() { return pvda_ngaytra; }
    public void setPvda_ngaytra(String pvda_ngaytra) { this.pvda_ngaytra = pvda_ngaytra; }

    public String getPvda_trangthai() { return pvda_trangthai; }
    public void setPvda_trangthai(String pvda_trangthai) { this.pvda_trangthai = pvda_trangthai; }
}

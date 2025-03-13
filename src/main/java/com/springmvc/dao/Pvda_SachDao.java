package com.springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.springmvc.beans.Pvda_sach;

public class Pvda_SachDao {
    JdbcTemplate template;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

    public int save(Pvda_sach p) {
        String sql = "insert into pvda_sach (pvda_tieude, pvda_tacgia, pvda_nhaxuatban, pvda_namxuatban, pvda_theloai, pvda_soluong, pvda_anhbia) values (?, ?, ?, ?, ?, ?, ?)";
        return template.update(sql, p.getPvda_tieude(), p.getPvda_tacgia(), p.getPvda_nhaxuatban(), p.getPvda_namxuatban(), p.getPvda_theloai(), p.getPvda_soluong(), p.getPvda_anhbia());
    }

    public int update(Pvda_sach p) {
        String sql = "update pvda_sach set pvda_tieude = ?, pvda_tacgia = ?, pvda_nhaxuatban = ?, pvda_namxuatban = ?, pvda_theloai = ?, pvda_soluong = ?, pvda_anhbia = ? where pvda_id = ?";
        return template.update(sql, p.getPvda_tieude(), p.getPvda_tacgia(), p.getPvda_nhaxuatban(), p.getPvda_namxuatban(), p.getPvda_theloai(), p.getPvda_soluong(), p.getPvda_anhbia(), p.getPvda_id());
    }

    public int delete(int id) {
        String sql = "delete from pvda_sach where pvda_id = ?";
        return template.update(sql, id);
    }

    public Pvda_sach getSachById(int id) {
        String sql = "select * from pvda_sach where pvda_id = ?";
        return template.queryForObject(sql, new Object[]{id}, new BeanPropertyRowMapper<>(Pvda_sach.class));
    }

    public List<Pvda_sach> getAllSach() {
        String sql = "select * from pvda_sach";
        return template.query(sql, new RowMapper<Pvda_sach>() {
            public Pvda_sach mapRow(ResultSet rs, int row) throws SQLException {
                Pvda_sach e = new Pvda_sach();
                e.setPvda_id(rs.getInt("pvda_id"));
                e.setPvda_tieude(rs.getString("pvda_tieude"));
                e.setPvda_tacgia(rs.getString("pvda_tacgia"));
                e.setPvda_nhaxuatban(rs.getString("pvda_nhaxuatban"));
                e.setPvda_namxuatban(rs.getInt("pvda_namxuatban"));
                e.setPvda_theloai(rs.getString("pvda_theloai"));
                e.setPvda_soluong(rs.getInt("pvda_soluong"));
                e.setPvda_anhbia(rs.getString("pvda_anhbia"));
                return e;
            }
        });
    }
}
package com.springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.springmvc.beans.Pvda_thietbithuvien;

@Repository
public class Pvda_ThietBiDao {
     JdbcTemplate template;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

    // Thêm thiết bị thư viện
    public int save(Pvda_thietbithuvien t) {
        String sql = "INSERT INTO pvda_thietbithuvien (pvda_ten, pvda_soluong, pvda_hinhanh, pvda_trangthai) VALUES (?, ?, ?, ?)";
        return template.update(sql, t.getPvda_ten(), t.getPvda_soluong(), t.getPvda_hinhanh(), t.isPvda_trangthai());
    }

    // Cập nhật thiết bị thư viện
    public int update(Pvda_thietbithuvien t) {
        String sql = "UPDATE pvda_thietbithuvien SET pvda_ten = ?, pvda_soluong = ?, pvda_hinhanh = ?, pvda_trangthai = ? WHERE pvda_id = ?";
        return template.update(sql, t.getPvda_ten(), t.getPvda_soluong(), t.getPvda_hinhanh(), t.isPvda_trangthai(), t.getPvda_id());
    }

    // Xóa thiết bị theo ID
    public int delete(int id) {
        String sql = "DELETE FROM pvda_thietbithuvien WHERE pvda_id = ?";
        return template.update(sql, id);
    }

    // Lấy một thiết bị theo ID
    public Pvda_thietbithuvien getThietBiById(int id) {
        String sql = "SELECT * FROM pvda_thietbithuvien WHERE pvda_id = ?";
        return template.queryForObject(sql, new Object[]{id}, new BeanPropertyRowMapper<>(Pvda_thietbithuvien.class));
    }

    // Lấy danh sách tất cả thiết bị thư viện
    public List<Pvda_thietbithuvien> getAllThietBi() {
        String sql = "SELECT * FROM pvda_thietbithuvien";
        return template.query(sql, new RowMapper<Pvda_thietbithuvien>() {
            public Pvda_thietbithuvien mapRow(ResultSet rs, int row) throws SQLException {
                Pvda_thietbithuvien t = new Pvda_thietbithuvien();
                t.setPvda_id(rs.getInt("pvda_id"));
                t.setPvda_ten(rs.getString("pvda_ten"));
                t.setPvda_soluong(rs.getInt("pvda_soluong"));
                t.setPvda_hinhanh(rs.getString("pvda_hinhanh"));
                t.setPvda_trangthai(rs.getBoolean("pvda_trangthai"));
                return t;
            }
        });
    }
}
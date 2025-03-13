package com.springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.springmvc.beans.Pvda_docgia;

@Repository
public class Pvda_DocGiaDao {
    @Autowired
    @Qualifier("jt") // Chỉ định bean đúng
    private JdbcTemplate template;

    // Thêm độc giả
    public int save(Pvda_docgia t) {
        String sql = "INSERT INTO pvda_docgia (pvda_hoten, pvda_sdt, pvda_email, pvda_diachi) VALUES (?, ?, ?, ?)";
        return template.update(sql, t.getPvda_hoten(), t.getPvda_sdt(), t.getPvda_email(), t.getPvda_diachi());
    }

    // Cập nhật thông tin độc giả
    public int update(Pvda_docgia t) {
        String sql = "UPDATE pvda_docgia SET pvda_hoten = ?, pvda_sdt = ?, pvda_email = ?, pvda_diachi = ? WHERE pvda_id = ?";
        return template.update(sql, t.getPvda_hoten(), t.getPvda_sdt(), t.getPvda_email(), t.getPvda_diachi(), t.getPvda_id());
    }

    // Xóa độc giả theo ID
    public int delete(int id) {
        String sql = "DELETE FROM pvda_docgia WHERE pvda_id = ?";
        return template.update(sql, id);
    }

    // Lấy một độc giả theo ID (bắt lỗi nếu không tìm thấy)
    public Pvda_docgia getDocGiaById(int id) {
        String sql = "SELECT * FROM pvda_docgia WHERE pvda_id = ?";
        try {
            return template.queryForObject(sql, new Object[]{id}, 
                new BeanPropertyRowMapper<>(Pvda_docgia.class));
        } catch (EmptyResultDataAccessException e) {
            return null; // Trả về null nếu không tìm thấy độc giả
        }
    }

    // Lấy danh sách tất cả độc giả
    public List<Pvda_docgia> getAllDocGia() {
        String sql = "SELECT * FROM pvda_docgia";
        return template.query(sql, new RowMapper<Pvda_docgia>() {
            public Pvda_docgia mapRow(ResultSet rs, int row) throws SQLException {
                Pvda_docgia t = new Pvda_docgia();
                t.setPvda_id(rs.getInt("pvda_id"));
                t.setPvda_hoten(rs.getString("pvda_hoten"));
                t.setPvda_sdt(rs.getString("pvda_sdt"));
                t.setPvda_email(rs.getString("pvda_email"));
                t.setPvda_diachi(rs.getString("pvda_diachi"));
                return t;
            }
        });
    }
}
package com.springmvc.dao;

import com.springmvc.beans.Pvda_thuthu;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class Pvda_ThuThuDao {
    @Autowired
    private JdbcTemplate template;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

    // Thêm tài khoản thủ thư mới (Đăng ký)
    public int save(Pvda_thuthu p) {
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        String hashedPassword = encoder.encode(p.getPvda_matkhau()); // Băm mật khẩu

        String sql = "INSERT INTO pvda_thuthu (pvda_taikhoan, pvda_matkhau, pvda_trangthai) VALUES (?, ?, ?)";
        return template.update(sql, p.getPvda_taikhoan(), hashedPassword, p.isPvda_trangthai());
    }

    // Cập nhật thông tin thủ thư
    public int update(Pvda_thuthu p) {
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        String hashedPassword = encoder.encode(p.getPvda_matkhau()); // Băm mật khẩu mới

        String sql = "UPDATE pvda_thuthu SET pvda_taikhoan = ?, pvda_matkhau = ?, pvda_trangthai = ? WHERE pvda_id = ?";
        return template.update(sql, p.getPvda_taikhoan(), hashedPassword, p.isPvda_trangthai(), p.getPvda_id());
    }

    // Xóa thủ thư theo ID
    public int delete(int id) {
        String sql = "DELETE FROM pvda_thuthu WHERE pvda_id = ?";
        return template.update(sql, id);
    }

    // Lấy thông tin thủ thư theo ID
    public Pvda_thuthu getThuThuById(int id) {
        String sql = "SELECT * FROM pvda_thuthu WHERE pvda_id = ?";
        try {
            return template.queryForObject(sql, new Object[]{id}, new BeanPropertyRowMapper<>(Pvda_thuthu.class));
        } catch (EmptyResultDataAccessException e) {
            return null; // Không tìm thấy thủ thư
        }
    }

    // Lấy danh sách tất cả thủ thư
    public List<Pvda_thuthu> getAllThuThu() {
        String sql = "SELECT * FROM pvda_thuthu";
        return template.query(sql, new RowMapper<Pvda_thuthu>() {
            public Pvda_thuthu mapRow(ResultSet rs, int row) throws SQLException {
                Pvda_thuthu e = new Pvda_thuthu();
                e.setPvda_id(rs.getInt("pvda_id"));
                e.setPvda_taikhoan(rs.getString("pvda_taikhoan"));
                e.setPvda_matkhau(rs.getString("pvda_matkhau"));
                e.setPvda_trangthai(rs.getBoolean("pvda_trangthai"));
                return e;
            }
        });
    }

    // Đăng nhập thủ thư (kiểm tra mật khẩu bằng BCrypt)
    public Pvda_thuthu getThuThuByUsernameAndPassword(String username, String password) {
        String sql = "SELECT * FROM pvda_thuthu WHERE pvda_taikhoan = ?";
        try {
            Pvda_thuthu thuthu = template.queryForObject(sql, new Object[]{username}, new BeanPropertyRowMapper<>(Pvda_thuthu.class));

            // Kiểm tra mật khẩu đã băm
            BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
            if (thuthu != null && encoder.matches(password, thuthu.getPvda_matkhau())) {
                return thuthu; // Đăng nhập thành công
            }
            return null; // Sai mật khẩu
        } catch (EmptyResultDataAccessException e) {
            return null; // Không tìm thấy tài khoản
        }
    }
}
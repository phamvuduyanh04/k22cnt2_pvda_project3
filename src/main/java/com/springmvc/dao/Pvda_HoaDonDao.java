package com.springmvc.dao;

import java.sql.Timestamp;
import java.util.Date;
import org.springframework.jdbc.core.JdbcTemplate;
import com.springmvc.beans.Pvda_hoadon;

public class Pvda_HoaDonDao {
    private JdbcTemplate template;

    // **Setter để Spring Inject `JdbcTemplate`**
    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

    // **Phương thức lưu hóa đơn mượn sách vào database**
    public int save(Pvda_hoadon hoadon) {
        String sql = "INSERT INTO pvda_hoadon (pvda_id_docgia, pvda_tongtien, pvda_phuongthucthanhtoan, pvda_ngaytao) VALUES (?, ?, ?, ?)";
        
        return template.update(sql, 
            hoadon.getPvda_id_docgia(), 
            hoadon.getPvda_tongtien(), 
            hoadon.getPvda_phuongthucthanhtoan(), 
            new Timestamp(new Date().getTime()) // Lấy thời gian hiện tại
        );
    }
}
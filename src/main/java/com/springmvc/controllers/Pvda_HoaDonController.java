package com.springmvc.controllers;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.springmvc.beans.Pvda_hoadon;
import com.springmvc.beans.Pvda_phieumuon;
import com.springmvc.dao.Pvda_hoadonDao;

@Controller
public class Pvda_HoaDonController {

    @Autowired
    private Pvda_hoadonDao hoadonDao;

    @PostMapping("/xacnhan-muon")  // Xử lý xác nhận mượn sách
    public String xacNhanMuon(HttpSession session, Model model) {
        // Lấy danh sách sách đang mượn từ session
        List<Pvda_phieumuon> borrowList = (List<Pvda_phieumuon>) session.getAttribute("borrowList");

        // Kiểm tra nếu danh sách mượn rỗng
        if (borrowList == null || borrowList.isEmpty()) {
            model.addAttribute("error", "Danh sách mượn của bạn đang trống!");
            return "redirect:/phieumuon";
        }

        // Tính tổng số sách mượn
        int totalBooks = borrowList.size();

        // Tạo hóa đơn mới
        Pvda_hoadon hoadon = new Pvda_hoadon();
        hoadon.setPvda_id_docgia(1); // Cập nhật ID độc giả nếu có đăng nhập
        hoadon.setPvda_tongtien(totalBooks * 5000); // Ví dụ phí mượn mỗi sách là 5000 VND
        hoadon.setPvda_phuongthucthanhtoan("Thẻ thư viện"); // Hoặc lấy từ form
        hoadon.setPvda_ngaytao(new Timestamp(new Date().getTime()));

        // Lưu vào database
        hoadonDao.save(hoadon);

        // Xóa danh sách mượn sau khi xác nhận
        session.removeAttribute("borrowList");

        // Chuyển hướng đến trang xác nhận thành công
        return "redirect:/hoadon_success";
    }

    @GetMapping("/hoadon_success")  // Xử lý GET /hoadon_success
    public String hoadonSuccess() {
        return "phieumuon_success"; // Trả về trang xác nhận thành công
    }
}

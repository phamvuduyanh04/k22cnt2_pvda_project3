CREATE DATABASE K22CNT2_PhamVuDuyAnh_2210900088_project3;
USE K22CNT2_PhamVuDuyAnh_2210900088_project3;

-- Bảng lưu thông tin sách
CREATE TABLE Sach (
    pvda_id INT AUTO_INCREMENT PRIMARY KEY,
    pvda_tieude VARCHAR(255) NOT NULL,
    pvda_tacgia VARCHAR(100) NOT NULL,
    pvda_nhaxuatban VARCHAR(100),
    pvda_namxuatban INT,
    pvda_theloai VARCHAR(50),
    pvda_soluong INT NOT NULL,
    pvda_anhbia VARCHAR(255) -- Đường dẫn hoặc URL của ảnh bìa
);

-- Bảng lưu thông tin người dùng (độc giả)
CREATE TABLE DocGia (
    pvda_id INT AUTO_INCREMENT PRIMARY KEY,
    pvda_hoten VARCHAR(100) NOT NULL,
    pvda_sdt VARCHAR(20) UNIQUE,
    pvda_email VARCHAR(100) UNIQUE,
    pvda_diachi VARCHAR(255)
);

-- Bảng lưu thông tin quản trị viên thư viện
CREATE TABLE ThuThu (
    pvda_id INT AUTO_INCREMENT PRIMARY KEY,
    pvda_taikhoan VARCHAR(50) UNIQUE NOT NULL,
    pvda_matkhau VARCHAR(255) NOT NULL,
    pvda_trangthai TINYINT NOT NULL DEFAULT 1 -- 1: Hoạt động, 0: Vô hiệu hóa
);

-- Bảng quản lý mượn sách
CREATE TABLE PhieuMuon (
    pvda_id INT AUTO_INCREMENT PRIMARY KEY,
    pvda_id_docgia INT NOT NULL,
    pvda_id_sach INT NOT NULL,
    pvda_ngaymuon DATE NOT NULL,
    pvda_ngaytra DATE,
    pvda_trangthai ENUM('Đang mượn', 'Đã trả', 'Quá hạn') DEFAULT 'Đang mượn',
    FOREIGN KEY (pvda_id_docgia) REFERENCES DocGia(pvda_id),
    FOREIGN KEY (pvda_id_sach) REFERENCES Sach(pvda_id)
);

-- Bảng lưu thông tin thiết bị trong thư viện (máy tính, máy in, bàn ghế...)
CREATE TABLE ThietBiThuVien (
    pvda_id INT AUTO_INCREMENT PRIMARY KEY,
    pvda_ten VARCHAR(100) NOT NULL,
    pvda_soluong INT NOT NULL,
    pvda_trangthai TINYINT NOT NULL DEFAULT 1 -- 1: Hoạt động, 0: Hỏng
);

-- Bảng quản lý hóa đơn phí mượn/trễ hạn nếu có
CREATE TABLE HoaDon (
    pvda_id INT AUTO_INCREMENT PRIMARY KEY,
    pvda_id_docgia INT NOT NULL,
    pvda_tongtien INT NOT NULL,
    pvda_phuongthucthanhtoan VARCHAR(50),
    pvda_ngaytao DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (pvda_id_docgia) REFERENCES DocGia(pvda_id)
);

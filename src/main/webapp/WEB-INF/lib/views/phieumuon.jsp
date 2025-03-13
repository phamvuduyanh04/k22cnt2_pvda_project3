<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Phiếu Mượn</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            text-align: center;
        }

        h2 {
            color: #333;
            margin-top: 30px;
        }

        .edit-container {
            background: white;
            padding: 20px;
            width: 40%;
            margin: 50px auto;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        input, select {
            width: 100%;
            padding: 12px;
            margin-top: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: white;
            font-size: 16px;
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h2>Phiếu Mượn</h2>
    <div class="edit-container">
        <form action="../update" method="post">
            <input type="hidden" name="id" value="${command.id}">

            <label>Mã Độc Giả:</label>
            <input type="text" name="pvda_id_docgia" value="${command.pvda_id_docgia}" required>

            <label>Mã Sách:</label>
            <input type="text" name="pvda_id_sach" value="${command.pvda_id_sach}" required>

            <label>Tiêu Đề Sách:</label>
            <input type="text" name="pvda_tieude" value="${command.pvda_tieude}" required>

            <label>Tác Giả:</label>
            <input type="text" name="pvda_tacgia" value="${command.pvda_tacgia}" required>

            <label>Ngày Mượn:</label>
            <input type="date" name="pvda_ngaymuon" value="${command.pvda_ngaymuon}" required>

            <label>Ngày Trả:</label>
            <input type="date" name="pvda_ngaytra" value="${command.pvda_ngaytra}" required>

            <label>Trạng Thái:</label>
            <select name="pvda_trangthai">
                <option value="Đang mượn" ${command.pvda_trangthai == 'Đang mượn' ? 'selected' : ''}>Đang mượn</option>
                <option value="Đã trả" ${command.pvda_trangthai == 'Đã trả' ? 'selected' : ''}>Đã trả</option>
            </select>

            <input type="submit" value="Lưu Phiếu Mượn">
        </form>
    </div>
</body>
</html>
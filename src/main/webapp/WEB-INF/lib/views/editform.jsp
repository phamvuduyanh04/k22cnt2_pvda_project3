<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Chỉnh Sửa Sách Thư Viện</title>
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
    <h2>Chỉnh Sửa Sách Thư Viện</h2>
    <div class="edit-container">
        <form action="../update" method="post">
            <input type="hidden" name="id" value="${command.id}">

            <label>Tên Sách:</label>
            <input type="text" name="pvda_tieude" value="${command.pvda_tieude}" required>

            <label>Tác Giả:</label>
            <input type="text" name="pvda_tacgia" value="${command.pvda_tacgia}" required>

            <label>Nhà Xuất Bản:</label>
            <input type="text" name="pvda_nhaxuatban" value="${command.pvda_nhaxuatban}" required>

            <label>Năm Xuất Bản:</label>
            <input type="number" name="pvda_namxuatban" value="${command.pvda_namxuatban}" required>

            <label>Thể Loại:</label>
            <input type="text" name="pvda_theloai" value="${command.pvda_theloai}" required>

            <label>Số Lượng:</label>
            <input type="number" name="pvda_soluong" value="${command.pvda_soluong}" required>

            <label>Ảnh Bìa:</label>
            <input type="text" name="pvda_anhbia" value="${command.pvda_anhbia}">

            <input type="submit" value="Lưu Sách">
        </form>
    </div>
</body>
</html>
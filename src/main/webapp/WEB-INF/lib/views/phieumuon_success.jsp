<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Xác nhận Phiếu Mượn</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background: #f8f9fa;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 60%;
            margin: 50px auto;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }
        h2 {
            color: #ff1493;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: center;
        }
        th {
            background: #ff69b4;
            color: white;
        }
        .total {
            font-size: 20px;
            font-weight: bold;
            color: #ff1493;
        }
        .confirm-btn {
            background: #ff1493;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s;
        }
        .confirm-btn:hover {
            background: #ff69b4;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Xác nhận Phiếu Mượn</h2>
        <table>
            <thead>
                <tr>
                    <th>Mã Độc Giả</th>
                    <th>Mã Sách</th>
                    <th>Tiêu Đề</th>
                    <th>Tác Giả</th>
                    <th>Ngày Mượn</th>
                    <th>Ngày Trả</th>
                    <th>Trạng Thái</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>${command.pvda_id_docgia}</td>
                    <td>${command.pvda_id_sach}</td>
                    <td>${command.pvda_tieude}</td>
                    <td>${command.pvda_tacgia}</td>
                    <td>${command.pvda_ngaymuon}</td>
                    <td>${command.pvda_ngaytra}</td>
                    <td>${command.pvda_trangthai}</td>
                </tr>
            </tbody>
        </table>
        <br>
        <form action="processBorrow" method="post">
            <input type="hidden" name="id" value="${command.id}">
            <button type="submit" class="confirm-btn">Xác nhận Mượn</button>
        </form>
        <br>
        <a href="viewBorrowList">Quay lại danh sách</a>
    </div>
</body>
</html>
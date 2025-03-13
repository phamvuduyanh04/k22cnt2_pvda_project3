<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <title>Danh Sách Thiết Bị Thư Viện</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
            color: #333;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-top: 30px;
            font-size: 28px;
        }

        .btn-add {
            display: inline-block;
            margin: 20px auto;
            padding: 10px 20px;
            background-color: #28a745;
            color: white;
            border-radius: 5px;
            font-size: 16px;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }

        .btn-add:hover {
            background-color: #218838;
        }

        table {
            width: 90%;
            margin: 30px auto;
            border-collapse: collapse;
            background: white;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        th, td {
            padding: 12px;
            text-align: center;
            border: 1px solid #ddd;
        }

        th {
            background-color: #007bff;
            color: white;
            font-size: 18px;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:nth-child(odd) {
            background-color: #ffffff;
        }

        a {
            text-decoration: none;
            color: #007bff;
            font-weight: bold;
            padding: 4px 8px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        a:hover {
            background-color: #f0f0f0;
        }

        img {
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <h2>Danh Sách Thiết Bị Thư Viện</h2>
    <a href="add" class="btn-add">Thêm thiết bị</a>

    <table>
        <tr>
            <th>ID</th>
            <th>Tên Thiết Bị</th>
            <th>Số Lượng</th>
            <th>Hình Ảnh</th>
            <th>Trạng Thái</th>
            <th>Hành Động</th>
        </tr>
        <c:forEach var="t" items="${list}">
            <tr>
                <td>${t.pvda_id}</td>
                <td>${t.pvda_ten}</td>
                <td>${t.pvda_soluong}</td>
                <td><img src="${t.pvda_hinhanh}" width="50" height="50" alt="${t.pvda_ten}"></td>
                <td>${t.pvda_trangthai ? 'Còn dùng được' : 'Hỏng hoặc hết hàng'}</td>
                <td>
                    <a href="edit/${t.pvda_id}">Sửa</a> | 
                    <a href="delete/${t.pvda_id}" onclick="return confirm('Xóa thiết bị này?')">Xóa</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
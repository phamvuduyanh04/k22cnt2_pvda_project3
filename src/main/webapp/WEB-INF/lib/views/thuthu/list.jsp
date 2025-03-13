<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Danh sách Thủ Thư</title>
    <style>
        /* Cài đặt toàn bộ trang */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f6f9;
            margin: 0;
            padding: 0;
            color: #333;
        }

        /* Tiêu đề */
        h2 {
            text-align: center;
            color: #2c3e50;
            margin-top: 20px;
            font-size: 28px;
            text-transform: uppercase;
        }

        /* Liên kết */
        a {
            color: #1abc9c;
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        a:hover {
            color: #16a085;
        }

        /* Bảng */
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            background-color: white;
            border-radius: 8px;
        }

        th, td {
            padding: 12px;
            text-align: center;
        }

        th {
            background-color: #34495e;
            color: white;
            font-size: 18px;
        }

        td {
            background-color: #ecf0f1;
        }

        tr:nth-child(even) td {
            background-color: #f9fafb;
        }

        /* Nút hành động */
        td a {
            padding: 6px 12px;
            background-color: #1abc9c;
            color: white;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }

        td a:hover {
            background-color: #16a085;
        }

        /* Thanh điều hướng */
        p {
            text-align: center;
            font-size: 18px;
        }
    </style>
</head>
<body>
    <h2>Danh sách Thủ Thư</h2>

    <p><a href="add">Thêm Thủ Thư mới</a> | <a href="logout">Đăng xuất</a></p>

    <table border="1">
        <tr>
            <th>ID</th>
            <th>Tài khoản</th>
            <th>Trạng thái</th>
            <th>Hành động</th>
        </tr>
        <c:forEach var="thuthu" items="${list}">
            <tr>
                <td>${thuthu.pvda_id}</td>
                <td>${thuthu.pvda_taikhoan}</td>
                <td>${thuthu.pvda_trangthai ? "Hoạt động" : "Khóa"}</td>
                <td>
                    <a href="edit/${thuthu.pvda_id}">Sửa</a> | 
                    <a href="delete/${thuthu.pvda_id}" onclick="return confirm('Bạn có chắc chắn muốn xóa?')">Xóa</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>

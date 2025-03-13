<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách Độc Giả</title>
    
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 20px;
            text-align: center;
        }

        h2 {
            color: #333;
        }

        button {
            padding: 8px 15px;
            margin: 5px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            font-size: 14px;
            transition: all 0.3s ease;
        }

        button:hover {
            opacity: 0.8;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background: white;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }

        th {
            background-color: #007BFF;
            color: white;
        }

        td {
            background-color: #fff;
        }

        a button {
            text-decoration: none;
        }

        button.add {
            background-color: #28a745;
            color: white;
        }

        button.edit {
            background-color: #ffc107;
            color: white;
        }

        button.delete {
            background-color: #dc3545;
            color: white;
        }

        a button:hover {
            opacity: 0.9;
        }
    </style>

    <script>
        function confirmDelete(id) {
            if (confirm("Bạn có chắc chắn muốn xóa độc giả này không?")) {
                window.location.href = '${pageContext.request.contextPath}/docgia/delete/' + id;
            }
        }
    </script>
</head>
<body>
    <h2>Danh sách Độc Giả</h2>
    
    <!-- Nút Thêm Độc Giả -->
    <a href="${pageContext.request.contextPath}/docgia/add">
        <button class="add">Thêm Độc Giả</button>
    </a>

    <table border="1">
        <tr>
            <th>ID</th>
            <th>Tên</th>
            <th>SĐT</th>
            <th>Email</th>
            <th>Địa chỉ</th>
            <th>Hành động</th>
        </tr>
        <c:forEach var="dg" items="${list}">
            <tr>
                <td>${dg.pvda_id}</td>
                <td>${dg.pvda_hoten}</td>
                <td>${dg.pvda_sdt}</td>
                <td>${dg.pvda_email}</td>
                <td>${dg.pvda_diachi}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/docgia/edit/${dg.pvda_id}">
                        <button class="edit">Sửa</button>
                    </a>
                    <button class="delete" onclick="confirmDelete(${dg.pvda_id})">Xóa</button>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
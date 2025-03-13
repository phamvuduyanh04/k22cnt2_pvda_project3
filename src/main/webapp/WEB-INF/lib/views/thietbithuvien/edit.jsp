<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Chỉnh Sửa Thiết Bị Thư Viện</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f6f9;
            margin: 0;
            padding: 0;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            flex-direction: column;
        }

        h2 {
            color: #2c3e50;
            font-size: 28px;
            margin-top: 20px;
        }

        form {
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            display: inline-block;
            text-align: left;
            width: 60%;
            min-width: 400px;
        }

        label {
            font-weight: bold;
            display: block;
            margin-top: 10px;
            font-size: 16px;
        }

        input, select {
            width: 100%;
            padding: 12px;
            margin-top: 8px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #1abc9c;
            color: white;
            border: none;
            padding: 12px 20px;
            cursor: pointer;
            margin-top: 20px;
            border-radius: 5px;
            font-size: 16px;
            width: 100%;
            transition: background 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #16a085;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            color: #007bff;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        a:hover {
            color: #0056b3;
        }
    </style>
</head>
<body>
    <h2>Chỉnh Sửa Thiết Bị Thư Viện</h2>
    <form action="../update" method="post">
        <input type="hidden" name="pvda_id" value="${command.pvda_id}">

        <label>Tên Thiết Bị:</label>
        <input type="text" name="pvda_ten" value="${command.pvda_ten}" required>

        <label>Số Lượng:</label>
        <input type="number" name="pvda_soluong" value="${command.pvda_soluong}" required>

        <label>Hình Ảnh URL:</label>
        <input type="text" name="pvda_hinhanh" value="${command.pvda_hinhanh}">

        <label>Trạng Thái:</label>
        <select name="pvda_trangthai">
            <option value="true" ${command.pvda_trangthai ? 'selected' : ''}>Hoạt động</option>
            <option value="false" ${!command.pvda_trangthai ? 'selected' : ''}>Không hoạt động</option>
        </select>

        <input type="submit" value="Cập Nhật">
    </form>
    <br>
    <a href="../list">Quay lại</a>
</body>
</html>
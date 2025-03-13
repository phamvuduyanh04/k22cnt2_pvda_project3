<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Thêm Thiết Bị Thư Viện</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #d4edda;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            flex-direction: column;
        }

        .container {
            width: 100%;
            max-width: 600px;
            background: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.2);
            text-align: center;
            transition: transform 0.3s ease-in-out;
        }
        .container:hover {
            transform: scale(1.05);
        }

        h2 {
            color: #2c3e50;
            font-size: 32px;
            margin-bottom: 25px;
            text-transform: uppercase;
        }

        form {
            text-align: left;
        }

        label {
            font-weight: bold;
            display: block;
            margin-top: 18px;
            font-size: 18px;
            color: #2c3e50;
        }

        input, select {
            width: 100%;
            padding: 14px;
            margin-top: 8px;
            border: 2px solid #ccc;
            border-radius: 8px;
            font-size: 18px;
            box-sizing: border-box;
            transition: border-color 0.3s ease-in-out;
        }
        input:focus, select:focus {
            border-color: #28a745;
            outline: none;
        }

        input[type="submit"] {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 16px;
            cursor: pointer;
            margin-top: 25px;
            border-radius: 8px;
            font-size: 20px;
            width: 100%;
            transition: background 0.3s ease-in-out;
        }

        input[type="submit"]:hover {
            background-color: #218838;
        }

        a {
            display: inline-block;
            margin-top: 25px;
            text-decoration: none;
            color: #007bff;
            font-size: 18px;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        a:hover {
            color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Thêm Thiết Bị Thư Viện</h2>
        <form action="save" method="post">
            <label for="pvda_ten">Tên Thiết Bị:</label>
            <input type="text" id="pvda_ten" name="pvda_ten" required>

            <label for="pvda_soluong">Số Lượng:</label>
            <input type="number" id="pvda_soluong" name="pvda_soluong" required>

            <label for="pvda_hinhanh">Hình Ảnh URL:</label>
            <input type="text" id="pvda_hinhanh" name="pvda_hinhanh">

            <label for="pvda_trangthai">Trạng Thái:</label>
            <select id="pvda_trangthai" name="pvda_trangthai">
                <option value="true">Hoạt động</option>
                <option value="false">Không hoạt động</option>
            </select>

            <input type="submit" value="Lưu">
        </form>
        <a href="list">Quay lại</a>
    </div>
</body>
</html>

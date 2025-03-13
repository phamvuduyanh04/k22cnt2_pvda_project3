<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" language="java"%>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thêm Sản Phẩm</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f8d7da; /* Màu đỏ nhạt */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            width: 60%; /* Mở rộng form */
            background: rgba(255, 255, 255, 0.97);
            padding: 50px;
            border-radius: 20px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
            text-align: center;
            transition: transform 0.3s ease-in-out;
            position: relative;
            overflow: hidden;
        }
        .container:hover {
            transform: scale(1.05);
        }
        
        .container::before {
            content: '';
            position: absolute;
            top: -50px;
            left: -50px;
            width: 150px;
            height: 150px;
            background: rgba(255, 99, 132, 0.3);
            border-radius: 50%;
            z-index: -1;
        }
        
        .container::after {
            content: '';
            position: absolute;
            bottom: -50px;
            right: -50px;
            width: 150px;
            height: 150px;
            background: rgba(255, 99, 132, 0.3);
            border-radius: 50%;
            z-index: -1;
        }

        h1 {
            font-size: 36px;
            font-weight: bold;
            text-transform: uppercase;
            color: white;
            background: linear-gradient(to right, #ff416c, #ff4b2b);
            padding: 20px;
            border-radius: 10px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);
        }

        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
        }

        td {
            padding: 15px;
            font-size: 18px;
        }

        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 12px;
            border: 2px solid #dc3545;
            border-radius: 8px;
            font-size: 18px;
            transition: border-color 0.3s ease-in-out;
            background: #fff5f7;
            outline: none;
        }
        input:focus {
            border-color: #ff416c;
        }

        input[type="submit"] {
            background: linear-gradient(to right, #ff416c, #ff4b2b);
            color: white;
            padding: 14px 20px;
            border: none;
            border-radius: 10px;
            font-size: 20px;
            cursor: pointer;
            transition: transform 0.2s ease-in-out;
        }

        input[type="submit"]:hover {
            transform: scale(1.1);
            background: linear-gradient(to right, #ff4b2b, #ff416c);
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Thêm Sản Phẩm</h1>
        <form:form method="post" action="/SpringMVCPagination/save">
            <table>
                <tr>
                    <td>Tên sản phẩm:</td>
                    <td><form:input path="pch_name" /></td>
                </tr>
                <tr>
                    <td>Ảnh URL:</td>
                    <td><form:input path="pch_hinhanh" /></td>
                </tr>
                <tr>
                    <td>Giá:</td>
                    <td><form:input path="pch_gia" type="number" /></td>
                </tr>
                <tr>
                    <td>Số lượng:</td>
                    <td><form:input path="pch_soluong" type="number" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Lưu Sản Phẩm" />
                    </td>
                </tr>
            </table>
        </form:form>
    </div>
</body>
</html>
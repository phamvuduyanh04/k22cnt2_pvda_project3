<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Chọn Phương Thức Trả Thư Viện</title>
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

        .payment-container {
            background: white;
            padding: 20px;
            width: 40%;
            margin: 50px auto;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        button {
            background-color: #007bff;
            color: white;
            font-size: 16px;
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin: 10px;
            width: 80%;
            transition: background 0.3s ease;
        }

        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h2>Chọn Phương Thức Trả Thư Viện</h2>
    <div class="payment-container">
        <form action="<c:url value='/vnpay_library' />" method="post">
            <button type="submit">Thanh toán qua VNPay</button>
        </form>
        <form action="<c:url value='/momo_library' />" method="post">
            <button type="submit">Thanh toán qua MoMo</button>
        </form>
        <form action="<c:url value='/zalopay_library' />" method="post">
            <button type="submit">Thanh toán qua ZaloPay</button>
        </form>
    </div>
</body>
</html>
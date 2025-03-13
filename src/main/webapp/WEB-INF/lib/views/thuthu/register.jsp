<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
    <title>Đăng ký Thủ Thư</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: #b3e0ff; /* Màu xanh nhạt */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background-color: rgba(255, 255, 255, 0.95);
            padding: 50px;
            border-radius: 20px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.3);
            width: 500px; /* Mở rộng chiều rộng */
            text-align: center;
            transition: transform 0.3s ease-in-out;
        }
        .container:hover {
            transform: scale(1.05);
        }
        h2 {
            color: #333;
            font-size: 28px;
            margin-bottom: 30px;
        }
        label {
            display: block;
            margin-top: 20px;
            font-weight: bold;
            text-align: left;
            color: #444;
            font-size: 18px;
        }
        input {
            width: 100%;
            padding: 14px;
            margin-top: 8px;
            border: 2px solid #ccc;
            border-radius: 10px;
            font-size: 18px;
            transition: border-color 0.3s ease-in-out;
        }
        input:focus {
            border-color: #6a11cb;
            outline: none;
        }
        button {
            margin-top: 30px;
            background: linear-gradient(to right, #28a745, #218838);
            color: white;
            border: none;
            padding: 16px;
            width: 100%;
            border-radius: 10px;
            cursor: pointer;
            font-size: 20px;
            transition: background 0.3s ease-in-out;
        }
        button:hover {
            background: linear-gradient(to right, #218838, #1e7e34);
        }
        p {
            margin-top: 25px;
            font-size: 18px;
        }
        a {
            color: #007bff;
            text-decoration: none;
            font-weight: bold;
        }
        a:hover {
            text-decoration: underline;
        }
        .error {
            color: red;
            margin-bottom: 15px;
            font-size: 18px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Đăng ký Thủ Thư</h2>

        <%-- Hiển thị lỗi nếu có --%>
        <c:if test="${not empty error}">
            <p class="error">${error}</p>
        </c:if>

        <form action="register" method="post">
            <label for="pvda_taikhoan">Tài khoản:</label>
            <input type="text" id="pvda_taikhoan" name="pvda_taikhoan" required>
            
            <label for="pvda_matkhau">Mật khẩu:</label>
            <input type="password" id="pvda_matkhau" name="pvda_matkhau" required>
            
            <button type="submit">Đăng ký</button>
        </form>

        <p>Đã có tài khoản? <a href="login">Đăng nhập</a></p>
    </div>
</body>
</html>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
    <title>Đăng nhập Thủ Thư</title>
    <style>
        /* 🌟 Gradient nền hiện đại */
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #141e30, #243b55);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        /* 🟢 Hiệu ứng container mượt mà */
        .container {
            background-color: rgba(255, 255, 255, 0.95);
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
            width: 600px; /* 🌟 Độ rộng lớn hơn */
            text-align: center;
            transition: 0.3s;
        }

        /* 🔵 Hiệu ứng hover */
        .container:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.4);
        }

        /* Tiêu đề */
        h2 {
            color: #333;
            font-size: 28px;
            margin-bottom: 25px;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        /* Ô nhập liệu với hiệu ứng đẹp */
        .form-group {
            display: flex;
            flex-direction: column;
            align-items: flex-start;
            width: 100%;
            margin-bottom: 15px;
        }

        label {
            font-weight: bold;
            font-size: 16px;
            margin-bottom: 5px;
            color: #333;
        }

        /* 🔷 Input cải tiến với hiệu ứng */
        input {
            width: 100%;
            padding: 14px;
            border: 2px solid #ccc;
            border-radius: 8px;
            font-size: 16px;
            outline: none;
            transition: 0.3s;
        }

        /* 🟡 Hiệu ứng khi nhập */
        input:focus {
            border-color: #ff416c;
            box-shadow: 0 0 10px rgba(255, 65, 108, 0.5);
        }

        /* 🔴 Nút đăng nhập */
        button {
            background: linear-gradient(to right, #ff416c, #ff4b2b);
            color: white;
            border: none;
            padding: 15px;
            width: 100%;
            border-radius: 8px;
            cursor: pointer;
            font-size: 18px;
            font-weight: bold;
            letter-spacing: 1px;
            transition: 0.3s;
        }

        /* 🟢 Hiệu ứng hover */
        button:hover {
            background: linear-gradient(to right, #ff4b2b, #ff416c);
            transform: scale(1.05);
        }

        /* 🔶 Thông báo lỗi */
        .error {
            color: red;
            font-weight: bold;
            margin-bottom: 15px;
        }

        /* 🔹 Link Đăng ký */
        p {
            margin-top: 20px;
            font-size: 16px;
            color: #333;
        }

        a {
            color: #007bff;
            text-decoration: none;
            font-weight: bold;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Đăng nhập Thủ Thư</h2>

        <%-- Hiển thị lỗi nếu có --%>
        <c:if test="${not empty error}">
            <p class="error">${error}</p>
        </c:if>

        <!-- Form đăng nhập -->
        <form action="login" method="post">
            <div class="form-group">
                <label for="username">Tài khoản:</label>
                <input type="text" id="username" name="username" required>
            </div>

            <div class="form-group">
                <label for="password">Mật khẩu:</label>
                <input type="password" id="password" name="password" required>
            </div>

            <button type="submit">Đăng nhập</button>
        </form>

        <p>Chưa có tài khoản? <a href="register">Đăng ký ngay</a></p>
    </div>
</body>
</html>
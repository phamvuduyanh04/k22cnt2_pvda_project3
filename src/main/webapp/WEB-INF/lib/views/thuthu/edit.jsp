<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
    <title>Chỉnh sửa Thủ Thư</title>
    <style>
        /* Cài đặt chung */
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
            margin-top: 30px;
            font-size: 28px;
            text-transform: uppercase;
        }

        /* Form container */
        .form-container {
            background-color: white;
            width: 60%;
            margin: 20px auto;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        /* Label và input */
        label {
            font-size: 18px;
            color: #2c3e50;
        }

        input, select {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
            box-sizing: border-box;
        }

        /* Định dạng nút submit */
        button {
            background-color: #1abc9c;
            color: white;
            font-size: 16px;
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background 0.3s ease;
            width: 100%;
        }

        button:hover {
            background-color: #16a085;
        }

        /* Link quay lại */
        p {
            text-align: center;
            font-size: 18px;
        }

        a {
            color: #1abc9c;
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        a:hover {
            color: #16a085;
        }

    </style>
</head>
<body>
    <h2>Chỉnh sửa Thủ Thư</h2>

    <div class="form-container">
        <form action="../update" method="post">
            <input type="hidden" name="pvda_id" value="${thuthu.pvda_id}">

            <label for="pvda_taikhoan">Tài khoản:</label>
            <input type="text" id="pvda_taikhoan" name="pvda_taikhoan" value="${thuthu.pvda_taikhoan}" required>
            <br>

            <label for="pvda_matkhau">Mật khẩu mới:</label>
            <input type="password" id="pvda_matkhau" name="pvda_matkhau">
            <br>

            <label for="pvda_trangthai">Trạng thái:</label>
            <select id="pvda_trangthai" name="pvda_trangthai">
                <option value="true" ${thuthu.pvda_trangthai ? "selected" : ""}>Hoạt động</option>
                <option value="false" ${!thuthu.pvda_trangthai ? "selected" : ""}>Khóa</option>
            </select>
            <br>

            <button type="submit">Cập nhật</button>
        </form>
    </div>

    <p><a href="../list">Quay lại danh sách</a></p>
</body>
</html>
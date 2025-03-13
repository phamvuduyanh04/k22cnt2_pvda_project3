<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" language="java"%>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Danh Sách Sách</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('https://cdn.hostingviet.vn/data/tinymce/2023/hinh-nen-may-tinh-4k-1.jpg') no-repeat center center fixed;
            background-size: cover;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 90%;
            margin: auto;
            background: rgba(255, 224, 229, 0.4);
            backdrop-filter: blur(8px);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
        }

        h1 {
            color: white;
            padding: 20px 0;
            background: rgba(255, 105, 180, 0.5);
            margin: 0;
            border-radius: 10px 10px 0 0;
            text-align: center;
        }

        .book-list {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            margin-top: 20px;
        }

        .book-item {
            background: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 250px;
            border: 2px solid rgba(255, 105, 180, 0.6);
        }

        .book-item img {
            width: 100%;
            height: auto;
            border-radius: 10px;
        }

        .book-item a {
            display: block;
            margin: 10px 0;
            padding: 10px;
            border-radius: 5px;
            color: white;
            text-decoration: none;
        }

        .borrow-btn {
            background: #ff1493;
        }

        .edit-btn {
            background: #ffb6c1;
        }

        .delete-btn {
            background: #db7093;
        }

        .action-buttons {
            margin-top: 20px;
        }

        .action-buttons a {
            display: inline-block;
            padding: 12px 20px;
            margin: 10px;
            font-size: 16px;
            font-weight: bold;
            color: white;
            border-radius: 8px;
            text-decoration: none;
            background: #ff1493;
            transition: 0.3s;
        }

        .action-buttons a:hover {
            background: #ff69b4;
        }

        .footer {
            margin-top: 20px;
            padding: 10px;
            background: rgba(255, 105, 180, 0.5);
            color: white;
            text-align: center;
            border-radius: 0 0 10px 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Danh Sách Sách</h1>
        <div class="book-list">
            <c:forEach var="book" items="${list}">
                <div class="book-item">
                    <h2>${book.title}</h2>
                    <img src="${book.coverImage}" alt="Hình ảnh sách"/>
                    <p>Tác giả: ${book.author}</p>
                    <p>Giá: ${book.price} VND</p>
                    <p>Số Lượng: ${book.quantity}</p>
                    <a href="<c:url value='/borrow-book'>
                        <c:param name='id' value='${book.id}'/>
                        <c:param name='title' value='${book.title}'/>
                        <c:param name='coverImage' value='${book.coverImage}'/>
                        <c:param name='price' value='${book.price}'/>
                    </c:url>" class="borrow-btn">
                        Mượn
                    </a>
                    <a href="edit/${book.id}" class="edit-btn">Sửa</a>
                    <a href="delete/${book.id}" class="delete-btn">Xóa</a>
                </div>
            </c:forEach>
        </div>
        <div class="action-buttons">
            <a href="addBookForm">Thêm Sách</a>
            <a href="borrowCart">Giỏ Mượn</a>
        </div>
        <br/>
        <input type="button" value="Back" onclick="window.history.back();" />
    </div>
    <div class="footer">
        &copy; 2025 Quản lý Thư Viện - Phạm Công Hiếu
    </div>
</body>
</html>

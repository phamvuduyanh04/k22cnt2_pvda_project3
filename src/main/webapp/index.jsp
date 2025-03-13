<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản Lý Thư Viện</title>
    <link rel="stylesheet" href="css/style.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="index.jsp">Thư Viện Online</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="books.jsp">Quản Lý Sách</a></li>
                    <li class="nav-item"><a class="nav-link" href="users.jsp">Quản Lý Người Dùng</a></li>
                    <li class="nav-item"><a class="nav-link" href="borrow.jsp">Mượn/Trả Sách</a></li>
                    <li class="nav-item"><a class="nav-link" href="login.jsp">Đăng Nhập</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container mt-5">
        <h2 class="text-center">Hệ Thống Quản Lý Thư Viện</h2>
        <p class="text-center">Chào mừng bạn đến với hệ thống thư viện. Vui lòng chọn chức năng từ menu.</p>
        
        <div class="row mt-4">
            <div class="col-md-4">
                <div class="card text-center">
                    <div class="card-body">
                        <h5 class="card-title">Quản Lý Sách</h5>
                        <p class="card-text">Xem danh sách sách, thêm, sửa, xóa sách.</p>
                        <a href="books.jsp" class="btn btn-primary">Xem ngay</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card text-center">
                    <div class="card-body">
                        <h5 class="card-title">Quản Lý Người Dùng</h5>
                        <p class="card-text">Thêm, sửa, xóa thông tin người dùng.</p>
                        <a href="users.jsp" class="btn btn-success">Quản lý</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card text-center">
                    <div class="card-body">
                        <h5 class="card-title">Mượn/Trả Sách</h5>
                        <p class="card-text">Quản lý việc mượn trả sách, hạn trả sách.</p>
                        <a href="borrow.jsp" class="btn btn-warning">Xử lý</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer class="bg-dark text-white text-center py-3 mt-5">
        <p>&copy; 2025 Quản Lý Thư Viện | Thiết kế bởi Duy Anh</p>
    </footer>
</body>
</html>

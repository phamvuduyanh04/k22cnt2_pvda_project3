-- Tạo cơ sở dữ liệu
CREATE DATABASE LibraryDB;
GO

USE LibraryDB;
GO

-- Tạo bảng Users (Người dùng)
CREATE TABLE Users (
    user_id INT PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role NVARCHAR(50) CHECK(role IN ('Admin', 'KhachHang')) DEFAULT 'KhachHang',
    phone VARCHAR(15),
    address TEXT,
    created_at DATETIME DEFAULT GETDATE()
);

-- Tạo bảng Categories (Danh mục sách)
CREATE TABLE Categories (
    category_id INT PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(100) NOT NULL
);

-- Tạo bảng Books (Sách)
CREATE TABLE Books (
    book_id INT PRIMARY KEY IDENTITY(1,1),
    title NVARCHAR(255) NOT NULL,
    author NVARCHAR(100) NOT NULL,
    category_id INT,
    description TEXT,
    publication_year INT,
    isbn VARCHAR(20) UNIQUE NOT NULL,
    quantity INT DEFAULT 1,
    cover_image NVARCHAR(255),
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

-- Tạo bảng Borrow_Records (Lịch sử mượn sách)
CREATE TABLE Borrow_Records (
    borrow_id INT PRIMARY KEY IDENTITY(1,1),
    user_id INT,
    book_id INT,
    borrow_date DATE DEFAULT GETDATE(),
    due_date DATE NOT NULL,
    return_date DATE NULL,
    status NVARCHAR(50) CHECK(status IN ('Borrowed', 'Returned', 'Overdue')) DEFAULT 'Borrowed',
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

-- Tạo bảng Reviews (Đánh giá sách)
CREATE TABLE Reviews (
    review_id INT PRIMARY KEY IDENTITY(1,1),
    user_id INT,
    book_id INT,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    comment TEXT,
    created_at DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

-- Tạo bảng Articles (Bài viết về sách)
CREATE TABLE Articles (
    article_id INT PRIMARY KEY IDENTITY(1,1),
    admin_id INT,
    title NVARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    created_at DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (admin_id) REFERENCES Users(user_id)
);

-- Tạo bảng Book_Suggestions (Gợi ý sách)
CREATE TABLE Book_Suggestions (
    suggestion_id INT PRIMARY KEY IDENTITY(1,1),
    user_id INT,
    book_id INT,
    reason TEXT,
    created_at DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

-- Tạo bảng Reservations (Đặt trước sách)
CREATE TABLE Reservations (
    reservation_id INT PRIMARY KEY IDENTITY(1,1),
    user_id INT,
    book_id INT,
    status NVARCHAR(50) CHECK(status IN ('Pending', 'Completed', 'Cancelled')) DEFAULT 'Pending',
    created_at DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

-- Chèn dữ liệu mẫu vào bảng Categories
INSERT INTO Categories (name) VALUES
(N'Văn học'),
(N'Khoa học'),
(N'Lịch sử'),
(N'Kinh tế'),
(N'Công nghệ thông tin');

-- Chèn dữ liệu mẫu vào bảng Books
INSERT INTO Books (title, author, category_id, description, publication_year, isbn, quantity, cover_image)
VALUES 
(N'Nhà giả kim', N'Paulo Coelho', 1, N'Cuốn sách nổi tiếng về hành trình của chàng trai Santiago', 1988, '978-604-112-3456', 10, 'alchemy.jpg'),
(N'Lập trình Python', N'Guido van Rossum', 5, N'Sách hướng dẫn lập trình Python từ cơ bản đến nâng cao', 2021, '978-123-456-7890', 5, 'python.jpg');

-- Kiểm tra dữ liệu
SELECT * FROM Users;
SELECT * FROM Categories;
SELECT * FROM Books;
SELECT * FROM Borrow_Records;
SELECT * FROM Reviews;
SELECT * FROM Articles;
SELECT * FROM Book_Suggestions;
SELECT * FROM Reservations;

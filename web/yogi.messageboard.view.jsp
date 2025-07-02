<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Message Board - YOGI ADITIA</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .profile-img {
            width: 150px;
            height: 150px;
            object-fit: cover;
            border-radius: 50%;
            border: 4px solid #007bff;
            margin-top: 10px;
        }
        .card {
            border-radius: 15px;
            overflow: hidden;
        }
        .card-header {
            font-weight: bold;
        }
        .btn {
            border-radius: 20px;
        }
        li.list-group-item strong {
            color: #007bff;
        }
    </style>
</head>
<body>

    <div class="container mt-5">
        <!-- Judul -->
        <div class="text-center">
            <h1 class="mb-3">Message Board - YOGI ADITIA</h1>
            <img src="portofolio.jpg" class="profile-img" alt="Foto Yogi">
        </div>
        <!-- Daftar Pesan -->
        <div class="card mt-4 shadow-sm">
            <div class="card-header bg-primary text-white">
                Messages
            </div>
            <ul class="list-group list-group-flush">
                <c:forEach items="${list}" var="row">
                    <li class="list-group-item">
                        <strong>${row.pengirim}</strong>: ${row.pesan}
                    </li>
                </c:forEach>
            </ul>
        </div>

        <!-- Form Tambah Pesan -->
        <div class="card mt-4 shadow-sm">
            <div class="card-header bg-success text-white">
                Add New Message
            </div>
            <div class="card-body">
                <form method="post">
                    <div class="form-group">
                        <input name="pengirim" class="form-control" placeholder="Your Name" required>
                    </div>
                    <div class="form-group">
                        <input name="pesan" class="form-control" placeholder="Your Message" required>
                    </div>
                    <button type="submit" class="btn btn-success btn-block">Send</button>
                </form>
            </div>
        </div>

        <!-- Tombol Kembali di Bawah (Opsional) -->
        <div class="text-center mt-4">
            <a href="index.jsp" class="btn btn-secondary btn-sm">← Kembali ke Halaman Utama</a>
        </div>

    </div>

</body>
</html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Message Board - Aditiya</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background: linear-gradient(to right, #e3f2fd, #ffffff);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .profile-img {
            width: 150px;
            height: 150px;
            object-fit: cover;
            border-radius: 50%;
            border: 4px solid #007bff;
            box-shadow: 0 4px 10px rgba(0, 123, 255, 0.3);
            margin-top: 10px;
        }
        h1 {
            font-weight: bold;
            color: #343a40;
        }
        .card {
            border: none;
            border-radius: 15px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .card:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 20px rgba(0,0,0,0.1);
        }
        .card-header {
            font-weight: 600;
            font-size: 1.1rem;
        }
        .list-group-item {
            background-color: #fff;
            border: none;
            border-bottom: 1px solid #e9ecef;
        }
        .list-group-item strong {
            color: #007bff;
            font-weight: 600;
        }
        .form-control {
            border-radius: 10px;
        }
        .btn {
            border-radius: 25px;
            font-weight: 500;
        }
        .btn-success {
            background-color: #28a745;
        }
        .btn-success:hover {
            background-color: #218838;
        }
        .btn-secondary:hover {
            background-color: #5a6268;
        }
    </style>
</head>
<body>

    <div class="container mt-5">
        <!-- Judul -->
        <div class="text-center">
            <h1 class="mb-3">Message Board - Aditiya</h1>
            <img src="aditya.jpg" class="profile-img" alt="Foto Aditiya">
        </div>

        <!-- Daftar Pesan -->
        <div class="card mt-4 shadow-sm">
            <div class="card-header bg-primary text-white">
                📬 Messages
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
                ✍️ Add New Message
            </div>
            <div class="card-body">
                <form method="post">
                    <div class="form-group">
                        <input name="pengirim" class="form-control" placeholder="Your Name" required>
                    </div>
                    <div class="form-group">
                        <input name="pesan" class="form-control" placeholder="Your Message" required>
                    </div>
                    <button type="submit" class="btn btn-success btn-block">Send Message</button>
                </form>
            </div>
        </div>

        <!-- Tombol Kembali -->
        <div class="text-center mt-4">
            <a href="index.jsp" class="btn btn-secondary btn-sm">← Back to Home</a>
        </div>
    </div>

</body>
</html>

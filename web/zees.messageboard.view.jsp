<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Message Board ZAIDAN IDZHARULHAQ</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background: linear-gradient(to right, #f8f9fa, #e9ecef);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .profile-img {
            width: 150px;
            height: 150px;
            object-fit: cover;
            border: 4px solid #007bff;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }
        .card {
            box-shadow: 0 4px 16px rgba(0,0,0,0.1);
            border: none;
            border-radius: 12px;
        }
        .card-header {
            border-top-left-radius: 12px;
            border-top-right-radius: 12px;
            font-weight: 600;
        }
        .list-group-item {
            transition: background-color 0.2s;
        }
        .list-group-item:hover {
            background-color: #f1f1f1;
        }
        .btn-success {
            font-weight: 600;
        }
    </style>
</head>
<body>

    <div class="container py-5">
        <div class="text-center mb-4">
            <h1 class="mb-3 font-weight-bold text-primary">Message Board</h1>
            <h5 class="text-muted mb-3">ZAIDAN IDZHARULHAQ</h5>
            <img src="Zees.jpg" class="rounded-circle profile-img" alt="Foto Zees">
        </div>

        <!-- Message List -->
        <div class="card mb-4">
            <div class="card-header bg-primary text-white">
                Recent Messages
            </div>
            <ul class="list-group list-group-flush">
                <c:forEach items="${list}" var="row">
                    <li class="list-group-item">
                        <strong>${row.pengirim}</strong>: ${row.pesan}
                    </li>
                </c:forEach>
            </ul>
        </div>

        <!-- Message Form -->
        <div class="card">
            <div class="card-header bg-success text-white">
                Add a New Message
            </div>
            <div class="card-body">
                <form method="post">
                    <div class="form-group">
                        <label for="pengirim">Your Name</label>
                        <input type="text" id="pengirim" name="pengirim" class="form-control" placeholder="Enter your name" required>
                    </div>
                    <div class="form-group">
                        <label for="pesan">Your Message</label>
                        <textarea id="pesan" name="pesan" class="form-control" rows="3" placeholder="Type your message here..." required></textarea>
                    </div>
                    <button type="submit" class="btn btn-success btn-block">Send Message</button>
                </form>
            </div>
        </div>
    </div>

</body>
</html>

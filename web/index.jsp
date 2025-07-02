<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Project Group 7</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .card img {
            height: 200px;
            object-fit: cover;
            margin-top: -10px; /* Naikkan gambar sedikit */
        }
        .card {
            border-radius: 15px;
            overflow: hidden;
        }
        .card-title {
            font-weight: bold;
        }
        .btn {
            border-radius: 20px;
        }
    </style>
</head>
<body>

    <div class="container mt-5">
        <h1 class="text-center mb-5">Project Group 7</h1>

        <div class="row justify-content-center">

            <!-- Card Anggota 1 -->
            <div class="col-md-3 mb-4">
                <div class="card shadow-sm">
                    <img src="portofolio.jpg" class="card-img-top" alt="Foto Yogi">
                    <div class="card-body text-center">
                        <h5 class="card-title">YOGI ADITIA</h5>
                        <a href="yogi.messageboard.jsp" class="btn btn-primary btn-sm">Go to Message Board</a>
                    </div>
                </div>
            </div>

            <!-- Card Anggota 2 -->
            <div class="col-md-3 mb-4">
                <div class="card shadow-sm">
                    <img src="wisnu2.jpg" class="card-img-top" alt="Foto Wisnu">
                    <div class="card-body text-center">
                        <h5 class="card-title">WISNU</h5>
                        <a href="wisnu.messageboard.jsp" class="btn btn-primary btn-sm">Go to Message Board</a>
                    </div>
                </div>
            </div>

            <!-- Card Anggota 3 -->
            <div class="col-md-3 mb-4">
                <div class="card shadow-sm">
                    <img src="zaidan.jpg" class="card-img-top" alt="Foto Zaidan">
                    <div class="card-body text-center">
                        <h5 class="card-title">ZAIDAN</h5>
                        <a href="zees.messageboard.jsp" class="btn btn-primary btn-sm">Go to Message Board</a>
                    </div>
                </div>
            </div>

            <!-- Card Anggota 4 -->
            <div class="col-md-3 mb-4">
                <div class="card shadow-sm">
                    <img src="aditya.jpg" class="card-img-top" alt="Foto Aditya">
                    <div class="card-body text-center">
                        <h5 class="card-title">ADITIYA</h5>
                        <a href="aditya.messageboard.jsp" class="btn btn-primary btn-sm">Go to Message Board</a>
                    </div>
                </div>
            </div>

        </div>
    </div>

</body>
</html>

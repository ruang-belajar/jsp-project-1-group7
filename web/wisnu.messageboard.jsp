<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
  String tujuan = "Wisnu";
%>
<!DOCTYPE html>
<html>
<head>
  <title>Wisnu's Message Wall</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
  <style>
    body {
      background-color: #f8f9fa;
    }
    .message-form {
      max-width: 600px;
      margin: auto;
      background: white;
      padding: 30px;
      border-radius: 15px;
      box-shadow: 0 4px 15px rgba(0,0,0,0.2);
    }
    .profile-photo {
      border: 5px solid #198754;
      border-radius: 50%;
      box-shadow: 0 4px 15px rgba(0,0,0,0.3);
      width: 150px;
      height: 150px;
      object-fit: cover; /* supaya ga gepeng walaupun fotonya rectangle */
    }
  </style>
</head>
<body class="py-5">
  <div class="message-form">
    <h2 class="text-center mb-4">Welcome to Wisnu's Message Wall</h2>
    <div class="text-center mb-3">
      <img src="wsn.jpeg" class="profile-photo" />
    </div>
    <form method="post" action="wisnu.messageboard.view.jsp">
      <input type="hidden" name="tujuan" value="<%=tujuan%>"/>
      <div class="mb-3">
        <label>Your Name</label>
        <input type="text" name="pengirim" class="form-control" required/>
      </div>
      <div class="mb-3">
        <label>Your Message</label>
        <textarea name="pesan" class="form-control" rows="4" required></textarea>
      </div>
      <div class="d-grid">
        <button type="submit" class="btn btn-success">Submit Message</button>
      </div>
    </form>
    <div class="text-center mt-3">
      <a href="index.jsp" class="btn btn-secondary">Back to Home</a>
    </div>
  </div>
</body>
</html>

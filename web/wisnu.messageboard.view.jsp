<%@ page import="java.sql.*" %>
<%
  String dbURL = "jdbc:mysql://localhost:3306/wall";
  String dbUser = "root";
  String dbPass = "";
  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

  if (request.getMethod().equalsIgnoreCase("POST")) {
    String tujuan = request.getParameter("tujuan"); // harus ada hidden
    String pengirim = request.getParameter("pengirim");
    String pesan = request.getParameter("pesan");

    PreparedStatement ps = conn.prepareStatement(
      "INSERT INTO percakapan (tujuan, pengirim, pesan) VALUES (?, ?, ?)"
    );
    ps.setString(1, tujuan);
    ps.setString(2, pengirim);
    ps.setString(3, pesan);
    ps.executeUpdate();
  }

  Statement stmt = conn.createStatement();
  ResultSet rs = stmt.executeQuery("SELECT * FROM percakapan WHERE tujuan='Wisnu' ORDER BY id DESC");
%>
<!DOCTYPE html>
<html>
<head>
  <title>Wisnu's Message Wall</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
  <style>
    body { background-color: #f8f9fa; }
    .messages-container {
      max-width: 800px;
      margin: auto;
    }
    .message-card {
      margin-bottom: 15px;
      border-radius: 10px;
      box-shadow: 0 2px 8px rgba(0,0,0,0.1);
    }
  </style>
</head>
<body class="py-5">
  <div class="messages-container">
    <h2 class="text-center mb-4">Messages for Wisnu</h2>
    <div class="text-center mb-3">
      <img src="img/wsn.jpeg" class="img-thumbnail rounded-circle" width="150"/>
    </div>
    <%
      while(rs.next()){
    %>
      <div class="card message-card">
        <div class="card-body">
          <h5 class="card-title mb-1"><%= rs.getString("pengirim") %></h5>
          <p class="card-text mb-2"><%= rs.getString("pesan") %></p>
        </div>
      </div>
    <%
      }
      conn.close();
    %>
    <div class="text-center mt-4">
      <a href="wisnu.messageboard.jsp" class="btn btn-primary">Post another message</a>
      <a href="index.jsp" class="btn btn-secondary">Back to Home</a>
    </div>
  </div>
</body>
</html>

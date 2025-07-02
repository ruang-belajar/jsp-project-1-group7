<%@page import="java.util.ArrayList"%>
<%@page import="jspproject1.Messager"%>
<%@page import="jspproject1.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Messager messager = new Messager("YOGI ADITIA"); // Ganti sesuai nama sendiri
    
    if (request.getParameter("pengirim") != null) {
        messager.addMessage(request.getParameter("pengirim"), request.getParameter("pesan"));
    }

    ArrayList<Message> list = messager.getList();
    request.setAttribute("list", list);

    RequestDispatcher dispatcher = request.getRequestDispatcher("yogi.messageboard.view.jsp");
    dispatcher.forward(request, response);
%>

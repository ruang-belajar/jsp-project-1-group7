<%@page import="java.util.ArrayList"%>
<%@page import="jspproject1.Messager"%>
<%@page import="jspproject1.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
<<<<<<<< HEAD:web/yogi.messageboard.jsp
    Messager messager = new Messager("YOGI ADITIA"); // Ganti sesuai nama sendiri
========
    Messager messager = new Messager("ZAIDAN IDZHARULHAQ"); // Ganti sesuai nama sendiri
>>>>>>>> d74470285fa864bb18cbdbdbe0d7a44f7e18c8f7:web/zees.messageboard.jsp
    
    if (request.getParameter("pengirim") != null) {
        messager.addMessage(request.getParameter("pengirim"), request.getParameter("pesan"));
    }

    ArrayList<Message> list = messager.getList();
    request.setAttribute("list", list);

<<<<<<<< HEAD:web/yogi.messageboard.jsp
    RequestDispatcher dispatcher = request.getRequestDispatcher("yogi.messageboard.view.jsp");
    dispatcher.forward(request, response);
%>
========
    RequestDispatcher dispatcher = request.getRequestDispatcher("zees.messageboard.view.jsp");
    dispatcher.forward(request, response);
%>
>>>>>>>> d74470285fa864bb18cbdbdbe0d7a44f7e18c8f7:web/zees.messageboard.jsp

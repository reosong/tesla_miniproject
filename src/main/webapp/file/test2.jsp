<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import = "tesla.UserDao" %>
    <jsp:useBean id="order" class ="tesla.Order" scope="page"/>
    <jsp:setProperty property="color" name="order"/>
  
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String  a =  order.getColor();
	String b = request.getParameter("color");
	
System.out.println(a);
System.out.println(b);
System.out.println("----------");
	%>


</body>
</html>
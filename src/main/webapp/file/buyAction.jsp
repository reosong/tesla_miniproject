<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import ="tesla.Order"%>
    <%@page import ="tesla.OrderDao" %>
    
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%

			String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String)session.getAttribute("userID");
		}

String model = request.getParameter("model");
String moter = request.getParameter("moter");
String color = request.getParameter("color");
String wheel = request.getParameter("wheel");
String sheet = request.getParameter("sheet");
String sheetNum = request.getParameter("sheetNum");

OrderDao orderDao = new OrderDao();


int result = orderDao.orderUpdate(model, moter, color, wheel, sheet, sheetNum, userID);

System.out.println(model);
System.out.println(userID);
System.out.println(result);

if(result == 1){
	out.println("<script>");
	out.println("alert('주문에 성공했습니다~! ')");
	out.println("location.href = '../index.jsp'");
	out.println("</script>");
}else{
	out.println("<script>");
	out.println("alert('주문실패')");
	out.println("history.back()");
	out.println("</script>");
}





%>








</body>
</html>
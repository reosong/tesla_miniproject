<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import = "tesla.WriteDao" %>
    <% request.setCharacterEncoding("utf-8"); %>
    
    <jsp:useBean id="data" class ="tesla.Write" scope="page"/>
    <jsp:setProperty name = "data" property ="title"/>
    <jsp:setProperty name = "data" property ="content"/>
    
    
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
	userID = (String) session.getAttribute("userID");
}
if(userID == null){
	
	out.println("<script>");
	out.println("alert('로그인을 하세용')");
	out.println("location.href ='../login.jsp'");
	out.println("</script>");
	
}else{
	if(data.getTitle() == null || data.getContent()==null){
		out.println("<script>");
		out.println("alert('입력이 안된 사항이 있습니다')");
		out.println("history.back()");
		out.println("</script>");
		
	}else{
		WriteDao writeDao = new WriteDao();
		int result = writeDao.upload(userID,data.getTitle(),data.getContent());
		if(result == -1){
	
			out.println("<script>");
			out.println("alert('글쓰기에 실패했습니다  ')");
			out.println("history.back()");
			out.println("</script>");
			
		}else {
			
			
			out.println("<script>");
			out.println("location.href = 'costomer.jsp'");
			out.println("</script>");
			
		}
		
	}
	}

	%>

	
	
	





</body>
</html>
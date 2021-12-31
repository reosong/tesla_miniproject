<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import = "tesla.WriteDao" %>
    <% request.setCharacterEncoding("utf-8"); %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% 
int number= 0;
if(request.getParameter("number") != null){
	
	number = Integer.parseInt(request.getParameter("number"));

}
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
	if(request.getParameter("title") == null || request.getParameter("content") ==null){
		out.println("<script>");
		out.println("alert('입력이 안된 사항이 있습니다')");
		out.println("history.back()");
		out.println("</script>");
		
	}else{
		WriteDao writeDao = new WriteDao();
		int result = writeDao.correction(request.getParameter("title"),request.getParameter("content"),number);
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
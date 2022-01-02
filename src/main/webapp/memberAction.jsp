<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import = "tesla.UserDao" %>
    <jsp:useBean id="user" class ="tesla.User" scope="page"/>
    
    <jsp:setProperty property="userID" name="user"/>
    <jsp:setProperty property="userPassword" name="user"/>
    <jsp:setProperty property="userPasswordok" name="user"/>
    <jsp:setProperty property="userEmail" name="user"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

if(user.getUserID()==null || user.getUserPassword() == null ||
	user.getUserPasswordok()==null ||user.getUserEmail() == null){
	out.println("<script>");
	out.println("alert('입력이 안된곳이 있습니다 ')");
	out.println("history.back()");
	out.println("</script>");
	
	
	
}else{
	if(user.getUserPassword().equals(user.getUserPasswordok())){
		
	
	UserDao userDao = new UserDao();
	if(userDao.join(user)==1){
		session.setAttribute("userID", user.getUserID());
		out.println("<script>");
		out.println("alert('회원가입이 완료되었습니다')");
		out.println("location.href =index.jsp");
		out.println("</script>");
	}else{
		out.println("<script>");
		out.println("alert('회원가입에 실패했습니다')");
		out.println("history.back()");
		out.println("</script>");
	}
		
	}else{
		out.println("<script>");
		out.println("alert('비밀번호를 확인해주세요')");
		out.println("history.back()");
		out.println("</script>");
	}
		
	

	
	
	
}
	





%>

</body>
</html>
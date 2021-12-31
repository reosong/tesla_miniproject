<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "tesla.UserDao"%>
    <%request.setCharacterEncoding("utf-8"); %>
    
    <jsp:useBean id ="user" class ="tesla.User" scope ="page"/>
    <jsp:setProperty name = "user" property="userID"/>
    <jsp:setProperty name ="user" property = "userPassword"/>
    
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
if(userID != null){
	
	out.println("<script>");
	out.println("alert('이미로그인이 되어있습니다')");
	out.println("location.href ='main.jsp'");
	out.println("</script>");
	
}


UserDao userDao = new UserDao();
int result = userDao.login(user.getUserID(),user.getUserPassword());
if(result ==1){ //로그인성공 
	session.setAttribute("userID", user.getUserID());
	
	out.println("<script>");
	out.println("location.href = 'index.jsp'");
	out.println("</script>");
	
}else if (result ==0){ //비밀번호 틀림 
	
	out.println("<script>");
	
	out.println("alert('비밀번호가 틀립니다')");
	out.println("history.back()");
	out.println("</script>");
	
}else if (result ==-1){// 아이디가 없음 
	
	out.println("<script>");
	out.println("alert('존재하지 않는 아이디 입니다')");
	out.println("history.back()");
	out.println("</script>");
	
}else if (result ==-2){ //??????????
	
	out.println("<script>");
	out.println("alert('데이터 베이스 오류 입니다 ')");
	out.println("history.back()");
	out.println("</script>");
	
}

%>
</body>
</html>
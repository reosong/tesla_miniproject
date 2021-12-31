<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import ="tesla.WriteDao" %>
     <%@page import ="tesla.Write" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



<%
//메인 페이지로 이동했을 때 세션에 값이 담겨있는지 체크
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String)session.getAttribute("userID");
		}
		
		int number = 0;
		if(request.getParameter("number") != null){
			number = Integer.parseInt(request.getParameter("number"));
		}
		
		
		
		WriteDao writeDao = new WriteDao();
		String id = writeDao.confirm(number);
		
		if(userID.equals(id) ){
		
		int res =  writeDao.delete(number);
		
		if(res ==-1){
			
			out.println("<script>");
			out.println("<alert('삭제에 실패했습니다.')>");
			out.println("history.back()");
			out.println("</script>");
			
		}else{
			out.println("<script>");
			out.println("<alert('정상적으로 삭제되었습니다.')>");
			out.println("location.href='showContent.jsp");
			out.println("</script>");
		}
			
			
		}



%>

</body>
</html>
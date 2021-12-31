<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <%@page import ="tesla.WriteDao" %>
    <%@page import ="tesla.Write"%>
    
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <title>Electric Cars</title>
  <link rel="icon" type="image/x-icon" href="../img/favicon.ico" />
    <link rel="stylesheet" href="../css/costomer.css">
    <link rel = "stylesheet" href="../css/bootstrap.css">
    <script src ="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="../js/bootstrap.js"></script>
    <script src="../css/click.js"></script>
    
</head>
<body>
 
        <nav id="menu">

            <div id="logo"><a href="../index.jsp"> T E S L A</a></div>

           

        </nav>
       

<%
		//세션에 값이 담겨있는지 체크
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String)session.getAttribute("userID");
		}
		

		int number = 0;
		if(request.getParameter("number") != null){
			number = Integer.parseInt(request.getParameter("number"));
		}
		
		// 만약 넘어온 데이터가 없다면
		if(number == 0){
			
			out.println("<script>");
			out.println("alert('유효하지 않은 글입니다')");
			out.println("location.href='../index.jsp'");
			out.println("</script>");
		}
		
		// 유효한 글이라면 구체적인 정보를 'bbs'라는 인스턴스에 담는다
		Write write = new WriteDao().getWrite(number);
	%>
       



      <div class="container" style="padding-top:10%;">
		<div class="row">
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="2" style="background-color: #eeeeee; text-align: center;">게시판 글 보기</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width: 20%;">글 제목</td>
						<td colspan="2"><%=write.getTitle() %></td>
					</tr>
					<tr>
						<td>작성자</td>
						<td colspan="2"><%= write.getUserID() %></td>
					</tr>
					<tr>
						<td>작성일자</td>
						<td colspan="2"><%= write.getDate() %></td>
					</tr>
					<tr>
						<td>내용</td>
						<td colspan="2" style="height: 200px; text-align: left;"><%= write.getContent()%></td>
					</tr>
				</tbody>
			</table>
			<a href="costomer.jsp" class="btn btn-primary">목록</a>
			
			<!-- 해당 글의 작성자가 본인이라면 수정과 삭제가 가능하도록 코드 추가 -->
			<%
				if(userID != null && userID.equals(write.getUserID())){
			%>
					<a href="update.jsp?number=<%= number %>" class="btn btn-primary">수정</a>
					<a onclick =" return confirm('정말로 삭제할까요?')" href="delete.jsp?number=<%= number %>" class="btn btn-primary">삭제</a>
			<%
				}
			%>
		</div>
	</div>













   
</body>

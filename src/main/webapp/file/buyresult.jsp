<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="tesla.Order" %>
    
     <jsp:useBean id="order" class ="tesla.Order" scope="page"/>
    <jsp:setProperty property="model" name="order"/>
    <jsp:setProperty property="moter" name="order"/>
    <jsp:setProperty property="color" name="order"/>
    <jsp:setProperty property="wheel" name="order"/>

    <jsp:setProperty property="sheet" name="order"/>
    <jsp:setProperty property="sheetNum" name="order"/>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Electric Cars</title>
  <link rel="icon" type="image/x-icon" href="../img/favicon.ico" />

	<link rel="stylesheet" href="../css/buyresult.css">
	<style>
		*{
			margin: 0%;
			padding: 0%;
		
		}


	</style>
</head>
<body>
<% 
String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String)session.getAttribute("userID");
		}
		
%>

	<div>

<form method ="post" action="buyAction.jsp?useSSL=false&model=<%=order.getModel() %>&moter=<%=order.getMoter() %>
&color=<%=order.getColor()%>&wheel=<%=order.getWheel()%>&sheet=<%=order.getSheet()%>&sheetNum=<%=order.getSheetNum()%>" 
scope="page"/>
		<span  id="logo">T E S L A</span>
		<div class="codepen">
			

				
		
			</nav>
			<div class="c1">주문</div>
			<span class="c2"><%=order.getModel() %></span>
			<span class="c3"> <%=order.getMoter() %> </span>
			<span class="c4"> <%=order.getColor() %></span>
			<span class="c5"> <%=order.getWheel() %>인치</span>
			<span class="c6"> <%=order.getSheet() %>시트 </span>
			<span class="c7"> <%=order.getSheetNum()%>인승</span>
			<span class="c8"> <input type="submit" value="주문하기" class="size"> </span>
			<span class="c9"> <input type="button" value="돌아가기" class="size2" onclick="location.href='../index.jsp'"> </span>
			<span class="c10"></span>
			
			<div class="bg"></div>
		  
		  </div>
		  


	</div>




</form>
	
</body>
</html>
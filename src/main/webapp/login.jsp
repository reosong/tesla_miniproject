<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <title>Electric Cars</title>
  <link rel="icon" type="image/x-icon" href="./img/favicon.ico" />
<link rel="stylesheet" href="css/login.css">
</head>



<body>


<form action="loginAction.jsp" method ="post" scope ="page">

  <div id="div_login">
  
        <a href="index.jsp"><div id="div_login2"> <b>T E S L A</b> </div></a>
        
        <div id="div_member"> 로그인</div>
       
        <div class="div_id"> 
            <input class ="div_id" type="text" name="userID" placeholder="아이디를 입력하세요 ">
        </div>
        <div class="div_password"> 
            <input class="div_password" type="password" name="userPassword" placeholder="비밀번호를 입력하세요 ">
        </div>
        <div id="div_login_button">
            <input type="submit" value="로 그 인"
            id="button_login">

        </div>
       
        <div style="margin-top: 15px;">
            <a href="member.jsp" style="text-decoration: none; color: white;"> 회원가입 </a>
        </div>
         
    </div>


</form>
</body>
</html>
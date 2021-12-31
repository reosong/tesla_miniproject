<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>Electric Cars</title>
  <link rel="icon" type="image/x-icon" href="./img/favicon.ico" />
   
   
   
   
   
  <link rel="stylesheet" href="css/member.css">

</head>


<body>

    <form action="memberAction.jsp" method="post">
    <div id="div_login">
        <a href="index.jsp"><div id="div_login2"> <b>T E S L A</b> </div></a>
    
        
        <div id="div_id"> 
            <ul class="ul_left">
                <li >아이디</li>
                <li class="li_margin"><input type="text" name="userID" id="input_id"  "></li>
            </ul>
        </div>
        <br>
        <div id="div_password"> 
            <ul class="ul_left">
                <li>비밀번호</li>
                <li class="li_margin"><input type="password" name="userPassword" id="input_password" ></li>
                <li><input type="password" id="input_password" name ="userPasswordok"placeholder="비밀번호 확인 "></li>
            </ul>
        </div>
        <div>
            <ul class="ul_left">
                <li>이메일</li>
                <li><input type="email" name="userEmail" id="input_email"></li>
            </ul>
        </div>
        <div>
             <ul class="ul_left">
                <li> <input type="checkbox" name="m_check1"> 개인정보 제공 동의 (필수)</li>
                <li> <input type="checkbox" name="m_check2"> 테슬라코리아 이용약관(필수) </li>
            </ul>
        </div>
      
        <div>
            <input type="submit" id="input_submit" value="로그인 ">
        </div>





    </div>
    </form>
    
</body>
</html>
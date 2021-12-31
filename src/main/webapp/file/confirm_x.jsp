<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Electric Cars</title>
  <link rel="icon" type="image/x-icon" href="../img/favicon.ico" />
    <link rel="stylesheet" href="../css/confirm.css">
</head>
<body>

<% 
String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String)session.getAttribute("userID");
		}
		
%>


    <form action="buyresult.jsp" method="post">

    <div class="location">

<div class="title">Model X</div>
<input type="hidden" name="model" value="Model X">
        <!--모델명 -->
        <div class="size1">
            
            <input type="radio" name="moter" value="Model X" id="1"><label for="1">Model X</label>
            <input type="radio" name="moter" value="Model X Paild" id="2"><label for="2">Model X Paild</label> 
           
        </div>



<!-- 색상 -->
        <div class="size2">
            <input type="radio" name="color"value="Black" id="Black"><label for="Black">Black</label>
            <input type="radio" name="color" value="Blue" id="Blue"><label for="Blue">Blue</label>
            <input type="radio" name="color"value="Gray" id="Gray"><label for="Gray">Gray</label>
            <input type="radio" name="color" value="Red" id="Red"><label for="Red">Red</label>
            <input type="radio" name="color"value="White" id="White"><label for="White">White</label>

        </div>

<!-- 타이어  -->
        <div class="size1">
            <input type="radio" name="wheel"value="18" id="18"><label for="18">18인치</label>
            <input type="radio" name="wheel" value="20" id="20"><label for="20">20인치</label>
        </div>
<!--  시트 색  -->
         <div class="size1">
            <input type="radio" name="sheet"value="beige" id="a"><label for="a">beige</label>
            <input type="radio" name="sheet" value="black" id="b"><label for="b">black</label>
            <input type="radio" name="sheet" value="white" id="c"><label for="c">White</label>
        </div>
        <!--  시트구성  -->
         <div class="size1">
            <input type="radio" name="sheetNum"value="5" id="5"><label for="5">5인승</label>
            <input type="radio" name="sheetNum" value="6" id="6"><label for="6">6인승</label>
            <input type="radio" name="sheetNum" value="7" id="7"><label for="7">7인승</label>
        </div>
        

        <div class="size1">
            <input type="submit" value="주문확인" class="button1">
           <a href="../index.jsp"> <input type="button" value="돌아가기" class="button2"></a>
        </div>




    </div>


    </form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <title>Electric Cars</title>
  <link rel="icon" type="image/x-icon" href="./img/favicon.ico" />
    <link rel="stylesheet" href="./css/tesla.css">
    <script src="./css/tesla.js"></script>
    <script src ="css/menu.js"></script>
    
        
    
    <style>
        a:link{text-decoration: none;color: black;}
        a:visited{text-decoration: none;color: black;}
        a:active{text-decoration: none;color: black;}
        a:hover{text-decoration: none;color: black;}
    
    </style>
</head>
<body>

    <main>
        <nav id="menu">

            <div id="logo"><a href="./index.jsp"> T E S L A</a></div>


            <div id="menu_name">
                <ul>
                    <li><a href = "./file/models.jsp">Model S</a></li>
                    <li><a href = "./file/model3.jsp">Model 3</a></li>
                    <li><a href = "./file/modelx.jsp">Model X</a></li>
                    <li><a href = "./file/modely.jsp">Model Y</a></li>
                    <li><a href = "./file/cyber.html">CyberTruck</a></li>
                    <li><a href = "./file/super.html">Super Charger</a></li>
                </ul>
            </div>


            <div id="menu_shop">
                <ul>
       
                    <li class="menu_shop_li"><a href="./file/costomer.jsp?page=1">고객센터</a></li>
                
                <% if(session.getAttribute("userID") != null){
                %>
                    <li class="menu_shop_li"><a href="./logout.jsp">로그아웃</a></li>
                <%} else{ %>
               		 <li class="menu_shop_li"><a href="./login.jsp">계정</a></li>
                  <%} %>  
                   
                 


                </ul>
            </div>
            <div class="clear"></div>

        </nav>
            

            

        


            
            <div class="clear"></div>

        </nav>
         <section class="session" id="model_y">




            
             <div class="title">Model Y</div>
         
             <div class="button1">
                <a href="./file/buy_y.jsp"> <input class="btn1" type="button" value="주문하기"></a>
                <a href="./file/modely.jsp">  <input class="btn2" type="button" value="자세히 알아보기"></a>
                </div>
            
        
        </section>
        
       

    </div>
    <section class="session" id="model_3">
        <div class="title">Model 3</div>
    
        <div class="button1">
            <a href="./file/buy_3.jsp"><input class="btn1" type="button" value="주문하기"></a> 
            <a href="./file/model3.jsp"> <input class="btn2" type="button" value="자세히 알아보기"></a>
           </div>
       
   
   </section>



   <section class="session" id="model_x">
    <div class="title">Model X</div>

    <div class="button1">
        <a href="./file/buy_x.jsp"> <input class="btn1" type="button" value="주문하기"></a>
        <a href="./file/modelx.jsp"> <input class="btn2" type="button" value="자세히 알아보기"></a>
       </div>
   

</section>
<section class="session" id="model_s">
    <div class="title">Model S</div>

    <div class="button1">
  
        <a href="./file/models.jsp"> <input class="btn1" type="button" value="주문하기" ></a>
        <a href="./file/models.jsp"> <input class="btn2" type="button" value="자세히 알아보기"></a>
       </div>
   

</section>



    </main>
</body>
</html>
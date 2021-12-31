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
    <link rel="stylesheet" href="../css/buyy.css">
    <link rel = "stylesheet" href="../css/bootstrap.css">
    <script src ="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="../js/bootstrap.js"></script>
    <script src="../css/click.js"></script>
    
</head>
<body style="background-color: black;">
    <main>
    	<% if(session.getAttribute("userID") != null){
                %>
                    <li class="menu_shop_li"><a href="./logout.jsp">로그아웃</a></li>
                <%} else{ %>
               		 <li class="menu_shop_li"><a href="./login.jsp">계정</a></li>
                  <%} %>  
   
        <nav id="menu" style="color: white;">

            <div id="logo" style="color: white;"><a href="../index.jsp"> T E S L A</a></div>

            <div class="clear"></div>

        </nav>








    <section class="session" id="model_y3">
  
        <div class="container">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="1" class="active"></li>
                     </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <img style="width: 100%; height: 100vh;" src="../img/cy1.png">
                    </div>
                   

                </div>
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </div>
        </div>
    
    </section>






    <form action="">
    <section class="side_session" style=" margin-top: 4%; color: white;">
        <div>
            <div class="model">Cyber Truck</div>

            <div style="margin-top: 20%;">
                <ul style="margin-left: 10%;">
                    <li>생산이 가까워 지면 주문할 수 있습니다</li>
                  
                </ul>
                
               
            </div>

          



    </section>








    
</form>
    </main>
</body>
</html>
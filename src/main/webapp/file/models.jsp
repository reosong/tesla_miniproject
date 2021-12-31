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
    <link rel="stylesheet" href="../css/models.css">
    <script src="../css/tesla.js"></script>
    <script src ="../css/menu.js"></script>
    <script src="../css/side.js"></script>
    <link rel = "stylesheet" href="../css/bootstrap.css">
    <script src ="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="../js/bootstrap.js"></script>
        
</head>
<body>

<% 
String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String)session.getAttribute("userID");
		}
		
%>
    <main>
    
        <nav id="menu">

            <div id="logo"><a href="../index.jsp"> T E S L A</a></div>


            <div id="menu_name">
                <ul>
                    <li><a href = "./models.jsp">Model S</a></li>
                    <li><a href = "./model3.jsp">Model 3</a></li>
                    <li><a href = "./modelx.jsp">Model X</a></li>
                    <li><a href = "./modely.jsp">Model Y</a></li>
                    <li><a href = "./cyber.html">CyberTruck</a></li>
                    <li><a href = "./super.html">Super Charger</a></li>
                </ul>
            </div>

            <div id="menu_shop">
                <ul>
                   
                        <li class="menu_shop_li"><a href="costomer.jsp">고객센터</a></li>
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



<!-- 1번째-->
    <section class="session" id="model_y1">
        <div class="title">Model S</div>
        <div class="title_sub"> 
          
            <ul>
                <li class="title_sub_font">637km</li>
                <li>주행 가능 거리 (예측)</li>
            </ul>
            <ul>
                <li class="title_sub_font">2.1초</li>
                <li>0-100km/h 도달시간 </li>
            </ul>
            <ul>
                <li class="title_sub_font">332km/h</li>
                <li>최고속도</li>
            </ul>
            <ul>
                <li class="title_sub_font">1,020hp</li>
                <li>최대 출력</li>
            </ul>
            <ul>
                <li><button class="button_1"><a href="./buy_s.jsp"> 지금주문하기</a> </button></li>
                
            </ul>
            
        
        </div>
         



        
    </section>
        
       

    



<!-- 2번째-->
   <section class="session" id="model_y3">
  
    <div class="container">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="1" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
                <li data-target="#myCarousel" data-slide-to="4"></li>
			</ol>
			<div class="carousel-inner">
				<div class="item active">
					<img style="width: 100%; height: 100vh;" src="../img/side1.png">
				</div>
				<div class="item">
					<img style="width: 100%; height: 100vh;" src="../img/side2.png">
				</div>
				<div class="item">
					<img style="width: 100%; height: 100vh;" src="../img/side3.png">
				</div>
                <div class="item">
					<img style="width: 100%; height: 100vh;" src="../img/side4.png">
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




<!-- 3번째-->
<section class="session" id="model_y4">
  
    
    <div class="y4_text">
   <ul>
       <li class="title_sub_font">528km</li>
       <li>1회 충전으로 528km 이상 주행 가능</li>
   </ul>
   <ul>
       <li class="title_sub_font">15분</li>
       <li>슈퍼차저 위치에서 15분 내에 최대 257km 충전 </li>
   </ul>
   <ul>
       <li class="title_sub_font">30,000+</li>
       <li>전 세계의 통핼량이 많은 경로에 </li>
   </ul>
  
</div>
<section class="y_section1">
    <p>Plaid</p>
    <br>
    <p style="font-size: 30px; font-weight: bold;">루디크러스를 넘어</p>
   </section>
    <section class="y_section2">
   

<p>양산된 전기차 중 가장 긴 주행 가능 거리와 가장 빠른 가속력을 갖춘 Model S Plaid는 도로상에서 최고의 퍼포먼스를 자랑하는 세단입니다. 모든 Model S 파워트레인은 향상된 배터리 아키텍처를 통해 지속적인 쿼터 마일 레이스를 수행할 수 있습니다.</p>
<br>


    </section>
    <div class="clear"></div>
</div>

</section>






<!-- 4번째-->
<section class="session" id="video_model">
<video id="video2" muted autoplay loop>
    <source src="https://tesla-cdn.thron.com/static/WCL9WK_autopilot.mp4-2000_QQHSUM.mp4?xseo=" type="video/mp4">
  </video>

  <section class="video_section1">
    <p>오토파일럿</p>
    <br>
    <p style="font-size: 30px; font-weight: bold;">운전의 미래</p>
   </section>
    <section class="video_section2">
   

<p>운전자는 적극적인 주의 하에 오토파일럿을 이용해 차량을 차선 내에서 자동으로 조향, 가속, 및
    제동을 할 수 있습니다. 오토파일럿은 주행 시에 가장 부담스러운 부분을 돕도록 설계되었습니다. OTA 소프트웨어 업데이트를 통해 최신 추가 기능을 바로 사용할 수 있습니다.</p>
<br>


    </section>
    <div class="clear"></div>
 


</section>



<!-- 5번째-->
<section class="session" id="video_model">
    <video id="video3" muted autoplay loop>
        <source src="https://tesla-cdn.thron.com/static/0GSNWC_Model_S_Navigate_0.mp4-2000_OY92ST.mp4?xseo=" type="video/mp4">
      </video>
    <div>

    </div>
    
    
    </section>
    





<!--6번째-->
<section class="session" id="model_y5">
  
    <div class="y3_text">
        <section class="y_section1">
         <p>인테리어</p>
         
         <p style="font-size: 30px; font-weight: bold;">운전자 중심의 디자인</p>
        </section>
         <section class="y_section2">
        
 
 <p>Model S의 내부는 다른 차량과 다릅니다. 스마트폰을 키로 사용하고, 중앙 15인치 터치스크린에서 모든 조작을 제어할 수 있습니다. 글래스 루프가 앞뒤로 이어져 있어 전 좌석에 개방감을 제공합니다.</p>
         </section>
         <div class="clear"></div>
     </div>



</section>




    </main>
</body>
</html>
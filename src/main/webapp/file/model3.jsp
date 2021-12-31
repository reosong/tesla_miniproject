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
    <link rel="stylesheet" href="../css/model3.css">
    <script src="../css/tesla.js"></script>
    <script src ="../css/menu.js"></script>
    <script src="../css/side.js"></script>
    
        
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



<!--1번째-->




<!--2번째-->
    <section class="session" id="model_y1">
        <div class="title">Model 3</div>
        <div class="title_sub"> 
          
            <ul>
                <li class="title_sub_font">3.3초</li>
                <li>0-100km/h 도달시간</li>
            </ul>
            <ul>
                <li class="title_sub_font">528KM</li>
                <li>주행가능 거리</li>
            </ul>
            <ul>
                <li class="title_sub_font">AWD</li>
                <li>듀얼모터</li>
            </ul>
            <ul>
                <li><button class="button_1"><a href="./buy_3.jsp"> 지금주문하기</a> </button></li>
                
            </ul>
            
        
        </div>
         



        
    </section>
        
       

    




   <section class="session" id="model_y3">
  
    <div class="y3_text">
       <section class="y_section1">
        <p>AWD</p>
        <br>
        <p style="font-size: 30px; font-weight: bold;">듀얼 모터</p>
       </section>
        <section class="y_section2">
       

<p>Tesla 상시 사륜구동(AWD)에 탑재된 두 개의 독립 모터는 향상된 효율성과 우수한 내구성을 제공하며 차량의 유지보수를 최소화하는데 도움이 됩니다. 또한, Tesla 상시 사륜구동(AWD)은 전통적인 시스템과 달리 전륜 및 후륜에 전달하는 토크를 디지털 방식으로 제어하여 한층 더 뛰어난 핸들링과 트랙션 컨트롤을 제공합니다.</p>

        </section>
        <div class="clear"></div>
    </div>


</section>


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
<div class="y4_text2">
<p style="font-size: 25px;">주행 가능 거리</p>
 <p style="font-size: 35px;">자유로운 장거리 여행</p>
 <p>   Model 3는 순수 전기차이기 때문에 주유소에 갈 필요가 없습니다. 집에서 충전한 후에 아침에 일어나면 이미 충전이 완료되어 있습니다. 도로에서 주행 중일 때는 공공 충전소나 Tesla의 충전 네트워크에서 쉽게 충전할 수 있습니다. 전 세계에 30,000대 이상의 Tesla 수퍼차저가 설치되어 있으며 매주 여섯 곳에 새로운 수퍼차저가 설치됩니다.</p>
</p>
</div>
<div class="clear"></div>


</section>







<section class="session" id="video_model">
<video id="video2" muted autoplay loop>
    <source src="https://tesla-cdn.thron.com/static/WCL9WK_autopilot.mp4-2000_QQHSUM.mp4?xseo=" type="video/mp4">
  </video>



</section>






<section class="session" id="model_y5">
  
    <div class="y3_text">
        <section class="y_section1">
         <p>인테리어</p>
         <br>
         <p style="font-size: 30px; font-weight: bold;">운전자 중심의 디자인</p>
        </section>
         <section class="y_section2">
        
 
 <p>Model 3의 내부는 다른 차량과 다릅니다. 스마트폰을 키로 사용하고, 중앙 15인치 터치스크린에서 모든 조작을 제어할 수 있습니다. 글래스 루프가 앞뒤로 이어져 있어 전 좌석에 개방감을 제공합니다.</p>
         </section>
         <div class="clear"></div>
     </div>



</section>




    </main>
</body>
</html>
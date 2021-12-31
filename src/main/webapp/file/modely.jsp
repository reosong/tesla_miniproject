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
    <link rel="stylesheet" href="../css/modely.css">
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
                    <li><a href = "models.html">Model S</a></li>
                    <li><a href = "./model3.html">Model 3</a></li>
                    <li><a href = "./modelx.html">Model X</a></li>
                    <li><a href = "./modely.html">Model Y</a></li>
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




    <section class="session" id="model_y1">
        <div class="title">Model Y</div>
        <div class="title_sub"> 
          
            <ul>
                <li class="title_sub_font">2,100+</li>
                <li>적재공간(리터)</li>
            </ul>
            <ul>
                <li class="title_sub_font">511KM</li>
                <li>주행가능 거리</li>
            </ul>
            <ul>
                <li class="title_sub_font">AWD</li>
                <li>듀얼모터</li>
            </ul>
            <ul>
                <li><button class="button_1"><a href="./buy_y.jsp"> 지금주문하기</a> </button></li>
                
            </ul>
            
        
        </div>
         



        
    </section>
        
       

    
    <div class="session" id="model_y2">
        <video id="video1" muted autoplay loop>
            <source src="https://tesla-cdn.thron.com/static/WVNSU3_Range_Desktop.mp4-2000_WJLESL.mp4?xseo=" type="video/mp4">
         <p>eee</p>
        </video>
       <div class="side_text">
           <br><br><br>
         <span id="a"><b>주행 가능 거리</b></span><br>
        <span id="b">자유로운 장거리 여행</span>
        <br>
        <span id="c">
        Model Y는 순수 전기차이기 때문에 주유소에 갈 필요가 없습니다. 
        집에서 충전한 후에 아침에 일어나면 이미 충전이 완료되어 있습니다.
         도로에서 주행 중일 때는 공공 충전소나 Tesla의 충전 네트워크에서 쉽게 충전할 수 있습니다. 
         전 세계에 30,000대 이상의 Tesla 수퍼차저가 설치되어 있으며 매주 여섯 곳에 새로운 수퍼차저가 설치됩니다.
        </span>
       </div>
        <div class="clear"></div>
 





   
    </div >
   <section class="session" id="video_model">
    <video id="video2" muted autoplay loop>
        <source src="https://tesla-cdn.thron.com/static/WCL9WK_autopilot.mp4-2000_QQHSUM.mp4?xseo=" type="video/mp4">
      </video>



   </section>



   <section class="session" id="model_y3">
  
    <div class="y3_text">
       <section class="y_section1">
        <p>유틸리티</p>
        <br>
        <p style="font-size: 30px; font-weight: bold;">모두를 위한공간</p>
       </section>
        <section class="y_section2">
       

<p>Model Y는 성인 7명*이 탑승하고 장비도 적재할 수 있을 만큼 다재다능합니다. 
    각 2열시트가 독립적으로 완전히 폴딩되어 스키용품, 가구 및 여행용 가방 등을 유연하게 적재할 수 있습니다. 리프트 게이트가 트렁크 바닥 낮은 곳까지 열려 짐을 빠르게 싣고 내릴 수 있습니다.</p>
<br>

*7개 시트 구성은 추후 출시
        </section>
        <div class="clear"></div>
    </div>


</section>



<section class="session" id="model_y4">
  
    
         <div class="y4_text">
        <ul>
            <li class="title_sub_font">2</li>
            <li>독립 모터가 전면 및 후면 휠토크를 디지털로 제어</li>
        </ul>
        <ul>
            <li class="title_sub_font">3.7초</li>
            <li>가장 빠른가속 0-100km/h 도달시간 </li>
        </ul>
        <ul>
            <li class="title_sub_font">날씨</li>
            <li>우수한 트랙션 컨트롤</li>
        </ul>
       
        
    
    </div>



</section>



<section class="session" id="model_y5">
  
    <div class="y3_text">
        <section class="y_section1">
         <p>인테리어</p>
         <br>
         <p style="font-size: 30px; font-weight: bold;">운전자 중심의 디자인</p>
        </section>
         <section class="y_section2">
        
 
 <p>높은 좌석 위치와 낮은 대시보드 위치는 운전자에게 탁 트인 전방 도로 시야를 제공합니다. Model Y는 15인치 터치스크린, 몰입형 사운드 시스템 및 추가 헤드룸과 완벽한 스카이 뷰를 제공하는 확장형 완전 글래스 루프로 심플하고 깔끔한 인테리어를 제공합니다.</p>
         </section>
         <div class="clear"></div>
     </div>



</section>




    </main>
</body>
</html>
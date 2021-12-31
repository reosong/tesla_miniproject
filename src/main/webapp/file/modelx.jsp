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
    <link rel="stylesheet" href="../css/modelx.css">
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
    <section class="session" id="model_y1">
        <div class="title">Model X</div>
        <div class="title_sub"> 
          
            <ul>
                <li class="title_sub_font">536km</li>
                <li>주행 가능 거리 (예측)</li>
            </ul>
            <ul>
                <li class="title_sub_font">2.6초</li>
                <li>0-100km/h 도달시간</li>
            </ul>
            <ul>
                <li class="title_sub_font">9.9초</li>
                <li>쿼터 마일</li>
            </ul>
            <ul>
                <li class="title_sub_font">1,020hp</li>
                <li>최대 출력</li>
            </ul>
            <ul>
                <li><button class="button_1"><a href="./buy_x.jsp"> 지금주문하기</a> </button></li>
                
            </ul>
            
        
        </div>
         



        
    </section>
        
       

    
<!--2번째-->
    <div class="session" id="model_y2">
        
        <div class="y2_section1">
        <ul>
            <li class="img_33"><img class="img_33" src="../img/modelx_2.png" alt=""></li>
            <li class="text_33"><div class="img_33">연결 상태 유지
                다중 장치 Bluetooth와 태블릿과 노트북 충전이 가능한 전 좌석 무선 USB-C 타입 고속 충전.</div></li>
            <li class="img_33"><img class="img_33" src="../img/modelx_44.png" alt=""></li>
        </ul>
        </div>


        <div class="y2_section2">
            <ul>
                <li class="text_33" >무선으로 게임 즐기기
                    최대 10 테라플롭스(Teraflops) 처리 성능으로 최신 콘솔과 동일한 수준의 차내 게임이 가능합니다. 무선 컨트롤러
                    호환성으로 전 좌석에서 게임을 즐길 수 있습니다.</li>
                <li class="img_33"><img class="img_33" src="../img/modelx_45.png" alt=""></li>
                <li class="text_33">최고의 오디오 시스템
                    22-스피커, 능동형 노면 소음 저감 기능이 적용된 960-와트 오디오 시스템은 어디서든 최고의 청음 경험을 구현합니다.</li>
            </ul>
        </div>

      
       
       

       </div>
        
 





   
    </div >

    <!--3번째-->
   <section class="session" id="video_model">
    <video id="video2" muted autoplay loop>
        <source src="https://tesla-cdn.thron.com/static/WCL9WK_autopilot.mp4-2000_QQHSUM.mp4?xseo=" type="video/mp4">
      </video>



   </section>



<!--4번째-->
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



<!--4번째-->
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



<!--5번째-->
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
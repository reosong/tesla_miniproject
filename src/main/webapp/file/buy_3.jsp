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
<body>
<% 
String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String)session.getAttribute("userID");
		}
if(userID == null){
			
			out.println("<script>");
			out.println("alert('로그인해주세요')");
			out.println("location.href ='../login.jsp'");
			out.println("</script>");
			
		}
		
%>
   
    <main>
        <nav id="menu">

            <div id="logo"><a href="../index.jsp"> T E S L A</a></div>

            <div class="clear"></div>

        </nav>








    <section class="session" id="model_y3">
  
        <div class="container">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="1" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                    <li data-target="#myCarousel" data-slide-to="3"></li>
                    <li data-target="#myCarousel" data-slide-to="4"></li>
                    <li data-target="#myCarousel" data-slide-to="5"></li>
                    <li data-target="#myCarousel" data-slide-to="6"></li>
                    <li data-target="#myCarousel" data-slide-to="7"></li>
                    <li data-target="#myCarousel" data-slide-to="8"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <img style="width: 100%; height: 100vh;" src="../img/35.png">
                    </div>
                    <div class="item">
                        <img style="width: 100%; height: 100vh;" src="../img/36.png">
                    </div>
                    <div class="item">
                        <img style="width: 100%; height: 100vh;" src="../img/37.png">
                    </div>
                    <div class="item">
                        <img style="width: 100%; height: 100vh;" src="../img/38.png">
                    </div>
                    <div class="item">
                        <img style="width: 100%; height: 100vh;" src="../img/31.png">
                    </div>
                    <div class="item">
                        <img style="width: 100%; height: 100vh;" src="../img/32.png">
                    </div>
                    <div class="item">
                        <img style="width: 100%; height: 100vh;" src="../img/33.png">
                    </div>
                    <div class="item">
                        <img style="width: 100%; height: 100vh;" src="../img/34.png">
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





<!-- 사이드 메뉴  -->
   <form action="confirm_3.jsp" method ="post">
    <section class="side_session" style=" margin-top: 4%;">
        <div>
            <div class="model">Model 3</div>

            <div style="margin-top: 20%;">
                <ul class="low">
                    <li>383km</li>
                    <li>주행가능거리</li>
                </ul>
                <ul class="low">
                    <li>225km/h</li>
                    <li>최고속도</li>
                </ul>
               
            </div>

            <div class="butt">
                <p style="margin-left: 40%; font-weight: bold;">후륜구동</p>
                <button type="submit" value="Standard Range" class="button1" style="margin-top: 0%;">Standard Range</button>
                <p style="margin-left: 35%; font-weight: bold; margin-top: 10%;" >듀얼 모터 (AWD)</p>
               <button type="submit" value="Long Range " class="button1" style="margin-top: 0%;">Long Range</button>
               <button type="submit" value="Performance " class="button1" style="margin-top: 3%;">Performance </button>
            </div>

            <div class="model2" style="margin-top: 30%;">색 상</div>

            <ul class="color_ul">
                <li class="color_li">
                    <div>
                        <button class="radius"><img class="button_size" src="../img/Paint_Black.png" alt=""></button>
                    </div>
                </li>
                <li class="color_li">
                    <div>
                        <button class="radius"><img class="button_size" src="../img/Paint_Blue.png" alt=""></button>
                    </div>
                </li>
                <li class="color_li">
                    <div>
                        <button class="radius"><img class="button_size" src="../img/Paint_MidnightSilver.png" alt=""></button>
                    </div>
                </li>
                <li class="color_li">
                    <div>
                        <button class="radius"><img class="button_size" src="../img/Paint_Red.png" alt=""></button>
                    </div>
                </li>
                <li class="color_li">
                    <div>
                        <button class="radius"><img class="button_size" src="../img/Paint_White.png" alt=""></button>
                    </div>
                </li>
            </ul>

        </div>

    


    <div class="clear"></div>


    
        <div>
            <div class="model2" style="margin-top: 40%;">휠</div>

            <ul class="color_ul">
                <li class="color_li2">
                    <div>
                        <button class="radius"><img class="button_size2" src="../img/wheels.png" alt=""></button>
                    </div>
                </li>
                <li class="color_li2">
                    <div>
                        <button class="radius"><img class="button_size2" src="../img/wheels2.png" alt=""></button>
                    </div>
                </li>
            </ul>

        </div>




        <div>
            <div class="model2" style="margin-top: 40%;">인테리어</div>

            <ul class="color_ul">
                <li class="color_li2" style="margin-left: 40%;">
                    <div>
                        <button class="radius"><img class="button_size2" src="../img/ui_swat_int_in3pb.png" alt=""></button>
                    </div>
                </li>
               
            </ul>

        </div>

        </div>




   

    <div class="clear"></div>

    





        <div>
            <div class="model2" style="margin-top: 40%;">시트구성</div>


            <ul class="color_ul2">
                <li class="color_li3">등받이 조절 가능한 2열 좌석</li>
                <li class="color_li3">최대 수납을 위한 완전 접이식 2열 좌석</li>
                <li class="color_li3">트렁크 내부에 위치한 전동식 좌석 폴딩 버튼</li>
            </ul>


            <div class="model2" style="margin-top: 40%;">주문하기</div>
            <input type="submit" value="지금 주문하기" class="button2" style="margin-top: 10%;">



        </div>




  


    <div class="clear"></div>

    


    
        <div style="width: 70%; margin-left: 15%; margin-top: 10%;">



            <P>테슬라코리아 유한회사 | 사업자등록번호 : 524-88-00237 | 데이비드존파인스타인, 리리 | 통신판매업신고: 제2016-서울강남-02964호 | 사업자정보확인 | 호스팅제공자: Tesla Inc. | 주소 : 서울특별시 강남구 테헤란로 134, 14층 | 대표전화 : 080-617-1388 | southkorea@tesla.com</P>
          




        </div>




    </section>








    
</form>
    </main>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Shop Homepage</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/shop-homepage.css" rel="stylesheet">

</head>

<body>
  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
        <% 
					if((String)session.getAttribute("id") == null)
					{
				%>										     
          <li class="nav-item active">
            <a class="nav-link" href="../Login_v4/login.jsp">로그인
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../colorlib-regform-8/index.jsp">회원가입</a>
          </li>        
				<% 
					}
					else
					{
				%>										     
          <li class="nav-item active">
            <a class="nav-link" href="#">로그아웃
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">마이페이지</a>
          </li>
        <%					
					}
				%>
          <li class="nav-item">
            <a class="nav-link" href="shopping_basket.jsp">장바구니</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="index.jsp">마이페이지</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Page Content -->
  <div class="container">

    <div class="row">

      <div class="col-lg-3">

        <h1 class="my-4">SeongIk ShoppingMall Shop</h1>
        <div class="list-group">
          <a href="../userPictureBoard-all/userPictureBoard.jsp" class="list-group-item">사진 게시판</a>
          <a href="../userBoard-all/userBoard.jsp" class="list-group-item">자유 게시판</a>
        </div>

      </div>
      <!-- /.col-lg-3 -->


			<!--메인페이지 상단부분 -->
      <div class="col-lg-9">       
        <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
                 
          <div class="carousel-inner" role="listbox">
            <div class="carousel-item active">
              <img class="d-block img-fluid" src="mainimage1.PNG" alt="First slide" max-width="200%" height="auto">
            </div>
          </div>        
        </div>

        <div class="row">
          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="sandlel_image/1_sandle.PNG" alt=""></a>
              <div class="card-body">
                <h3 class="card-title">
                  <a href="#">그리폰 샌들 블랙 샌들</a>
                </h3>
                <h4 class="card-title">
                  <a>가격 : 40000</a>
                </h4>
                <p class="card-text">
	                • 전통적인 샌들 디자인에 투 버클 스트랩을 사용<br>
									• 클래식함과 편리함을 강조<br>
									• 천연가죽인 Brando Leather 소재를 사용<br>
									• 내구성이 좋음<br>
									• 세월이 흐를수록 고급스러운 분위기를 풍깁니다.<br>                                   
            		</p>                
              </div>
              <a href='shopping_basket_action.jsp?number=<%=31%>'>장바구니 추가</a>
            </div>            
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="sandlel_image/2_sandle.PNG" alt=""></a>
              <div class="card-body">
                <h3 class="card-title">
                  <a href="#">맨즈 허리케인 XLT2</a>
                </h3>
                <h4 class="card-title">
                  <a>가격 : 15000</a>
                </h4>
                <p class="card-text">
	                • 테바의 헤리티지가 가장 잘 드러나는 프리미엄 라인<br>
									• 뒷 발목 부분 쿠션 패드를 첨가하여 편안함이 업그레이드<br>
									• 뒷굽과 앞굽 사이의 특수 소재가 비포장 바닥에서도 발을 편안하게 지지<br>
									• -충격흡수패드 아웃솔<br>
									• SHOC 패트도 안정적 쿠셔닝<br>
									• 미끄러움 방지 아웃솔 <br>                                  
            		</p>                
              </div>
              <a href='shopping_basket_action.jsp?number=<%=32%>'>장바구니 추가</a>
            </div>            
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="sandlel_image/3_sandle.PNG" alt=""></a>
              <div class="card-body">
                <h3 class="card-title">
                  <a href="#">매그머 샌들 W -옐로우</a>
                </h3>
                <h4 class="card-title">
                  <a>가격 : 70000</a>
                </h4>
                <p class="card-text">
	                • 피오루치 콜라보레이션 디자인의 청키한 샌달<br>
									• 좁고 슬림한 핏<br>
									• 탄력적인 조절식 벨크로 밴드<br>
									• 직물 밴드 갑피<br>
									• 발을 감싸는 가벼운 착용감<br>
									• 청키한 실루엣의 피오루치 샌들<br>                                 
            		</p>                
              </div>
              <a href='shopping_basket_action.jsp?number=<%=33%>'>장바구니 추가</a>
            </div>            
          </div>

					<div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="sandlel_image/4_sandle.PNG" alt=""></a>
              <div class="card-body">
                <h3 class="card-title">
                  <a href="#">(남성) 뉴포트 H2 - 그레이</a>
                </h3>
                <h4 class="card-title">
                  <a>가격 : 50000</a>
                </h4>
                <p class="card-text">
	                • 동글동글 귀엽고 독특한 디자인<br>
									• 방수성과 통기성 우수<br>
									• 내구성과 같은 기능적인 측면도 마니아들을 통해 검증<br>
									• 5mm 단위를 착용하시는 경우. 한 치수 크게 신으실 것을 권장<br>
									• 트레킹과 물놀이의 경계를 허물었습니다<br>                              
            		</p>                
              </div>
              <a href='shopping_basket_action.jsp?number=<%=34%>'>장바구니 추가</a>
            </div>            
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="sandlel_image/5_sandle.PNG" alt=""></a>
              <div class="card-body">
                <h3 class="card-title">
                  <a href="#">매그머 샌들 W -옐로우</a>
                </h3>
                <h4 class="card-title">
                  <a>가격 : 70000</a>
                </h4>
                <p class="card-text">
	                • 테바의 대표적인 모델 중 하나인 허리케인 XLT2 스타일<br>
									• 뒷발목 부분에 쿠션패드를 첨가하여 편안함이 업그레이드<br>
									• 굽과 앞굽 사이의 특수 소재가 울퉁불퉁한 바닥에서도 발을 편안하게 지지해줍니다.<br>
                             
            		</p>                
              </div>
              <a href='shopping_basket_action.jsp?number=<%=35%>'>장바구니 추가</a>
            </div>            
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="sandlel_image/6_sandle.PNG" alt=""></a>
              <div class="card-body">
                <h3 class="card-title">
                  <a href="#">티렉스 숨라</a>
                </h3>
                <h4 class="card-title">
                  <a>가격 : 40000</a>
                </h4>
                <p class="card-text">
	                • 다양한 활동에 이상적인 편안한 샌달<br>
									• 레귤러 핏<br>
									• 직물 갑피<br>
									• 가벼운 샌달<br>
									• 경량의 EVA 미드솔<br>
									• 탄력적인 뒤꿈치 스트랩<br>
									• 컨티넨탈 러버(Continental™ Rubber) 아웃솔<br>                            
            		</p>                
              </div>
              <a href='shopping_basket_action.jsp?number=<%=36%>'>장바구니 추가</a>
            </div>            
          </div>
        <!-- /.row -->

      </div>
      <!-- /.col-lg-9 -->

    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Seongik &copy; JSP 2020</p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>

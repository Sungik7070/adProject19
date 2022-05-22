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
              <a><img class="card-img-top" src="sliper_image/1_sliper.PNG" alt=""></a>
              <div class="card-body">
                <h3 class="card-title">
                  <a>알파바운드 슬라이드:블랙</a>
                </h3>
                <h4 class="card-title">
                  <a>가격 : 30000</a>
                </h4>
                <p class="card-text">
	                • 편안한 휴식과 재충전을 위한 슬라이드 <br>
									• 3-스트라이프가 적용된 조절식 합성 소재 갑피 <br>
									• 편안하고 부드러운 폼 라이닝 <br>
									• 인체공학적 디자인과 우수한 반발력으로 편안한 핏과 에너지 넘치는 쿠셔닝을 제공하는 바운스(BOUNCE™) 풋베드 <br>
									• EVA 아웃솔  <br>                                    
            		</p>                
              </div>
              <a href='shopping_basket_action.jsp?number=<%=1%>'>장바구니 추가</a>
            </div>            
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="sliper_image/2_sliper.PNG" alt=""></a>
              <div class="card-body">
                <h3 class="card-title">
                  <a href="#">알파바운드 슬라이드:옐로우</a>
                </h3>
                <h4 class="card-title">
                  <a>가격 : 40000</a>
                </h4>
                <p class="card-text">
	                • 편안한 휴식과 재충전을 위한 슬라이드 <br>
									• 3-스트라이프가 적용된 조절식 합성 소재 갑피 <br>
									• 편안하고 부드러운 폼 라이닝 <br>
									• 인체공학적 디자인과 우수한 반발력으로 편안한 핏과 에너지 넘치는 쿠셔닝을 제공하는 바운스(BOUNCE™) 풋베드 <br>
									• EVA 아웃솔  <br>                                    
            		</p>                
              </div>
              <a href='shopping_basket_action.jsp?number=<%=2%>'>장바구니 추가</a>
            </div>            
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="sliper_image/3_sliper.PNG" alt=""></a>
              <div class="card-body">
                <h3 class="card-title">
                  <a href="#">이제이 플리플랍:블랙</a>
                </h3>
                <h4 class="card-title">
                  <a>가격 : 12000</a>
                </h4>
                <p class="card-text">
	                • 가벼운 쿠셔닝이 돋보이는 비치 샌달 <br>
									• 레귤러 핏 <br>
									• 슬립온 플립플롭 구조 <br>
									• 인조 갑피 스트랩 <br>
									• 텍스처드 EVA 미드솔  <br>                                    
            		</p>                
              </div>
              <a href='shopping_basket_action.jsp?number=<%=3%>'>장바구니 추가</a>
            </div>            
          </div>

					<div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="sliper_image/4_sliper.PNG" alt=""></a>
              <div class="card-body">
                <h3 class="card-title">
                  <a href="#">알파바운드 슬라이드:블랙</a>
                </h3>
                <h4 class="card-title">
                  <a>가격 : 60000</a>
                </h4>
                <p class="card-text">
	                • 스트랩 레이스업 스타일 <br>
									• 매우 부드러운 느낌과 편안함 선사 <br>
									• 야외활동 적합 <br>
									• 리사이클 폴리에스터/EVA폼/Mush탑솔/그외 친환경 소재 <br>
									• 무게 : 126g <br>                                    
            		</p>                
              </div>
              <a href='shopping_basket_action.jsp?number=<%=4%>'>장바구니 추가</a>
            </div>            
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="sliper_image/5_sliper.PNG" alt=""></a>
              <div class="card-body">
                <h3 class="card-title">
                  <a href="#">바켄스탁</a>
                </h3>
                <h4 class="card-title">
                  <a>가격 : 45000</a>
                </h4>
                <p class="card-text">
	                • 아리조나 버켄스탁에서 샌들모양으로 변한 것 <br>
									• 캠핑갈때 신으면 더욱 어울릴 슬리퍼 <br>
									• 편안하고 부드러운 폼 라이닝 <br>
									• 인체공학적 디자인과 우수한 반발력으로 편안한 핏과 에너지 넘치는 쿠셔닝을 제공하는 바운스(BOUNCE™) 풋베드 <br>
									• 쪼리슬리퍼  <br>                                    
            		</p>                
              </div>
              <a href='shopping_basket_action.jsp?number=<%=5%>'>장바구니 추가</a>
            </div>            
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="sliper_image/6_sliper.PNG" alt=""></a>
              <div class="card-body">
                <h3 class="card-title">
                  <a href="#">아딜렛 라이트:네이비</a>
                </h3>
                <h4 class="card-title">
                  <a>가격 : 50000</a>
                </h4>
                <p class="card-text">
	                • 휴식과 재충전을 위한 아늑한 슬라이드 <br>
									• 스포티한 쿠셔닝 슬라이드 <br>
									• 우수한 부드러움 <br>
									• 합성 소재 밴드 갑피 <br>
									• 직물 안감  <br>                                    
            		</p>                
              </div>
              <a href='shopping_basket_action.jsp?number=<%=6%>'>장바구니 추가</a>
            </div>            
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

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
              <a href="#"><img class="card-img-top" src="mount_image/1_mount.PNG" alt=""></a>
              <div class="card-body">
                <h3 class="card-title">
                  <a href="#">남녀공용 알피나 고어텍스</a>
                </h3>
                <h4 class="card-title">
                  <a>가격 : 55000</a>
                </h4>
                <p class="card-text">
	                • 기존 GORE-TEX SURROUND SIDE SOLE OPENING 구조에서 내부의 채널을 제거<br>
									• 투습 강화 및 무게를 줄임<br>
									• X-GRIP : 탁월한 접지력, 한국의 산악환경에 특화된 아웃솔<br>
									• BOA FI SYSTEM : 편리한 탈착화<br>
									• INOMAX 사용으로 99.9% 항균, 향취 및 곰팡이 저항성 우수<br>                                   
            		</p>                
              </div>
              <a href='shopping_basket_action.jsp?number=<%=25%>'>장바구니 추가</a>
            </div>            
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="mount_image/2_mount.PNG" alt=""></a>
              <div class="card-body">
                <h3 class="card-title">
                  <a href="#">남녀공용 알피나 고어텍스</a>
                </h3>
                <h4 class="card-title">
                  <a>가격 : 55000</a>
                </h4>
                <p class="card-text">
	                • 아웃도어 워킹화: 당일 산행이나 가벼운 일상생활에 적합<br>
									• DRY EDGE: 밀레만의 기술력이 집약된 자체 개발원단으로 방수,투습,발수성을 모두 갖춰 다양한 날씨와 활동에 적합<br>
									• ARCHSTEP TRC: 충격흡수와 접지력이 우수하여 워킹,트레킹,런닝이 가능한 멀티기능솔<br>
									• L6 DIAL BOA: 풀림 현상이 개선되어 보다 편안한 착화를 도와줌<br>                                
            		</p>                
              </div>
              <a href='shopping_basket_action.jsp?number=<%=26%>'>장바구니 추가</a>
            </div>            
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="mount_image/3_mount.PNG" alt=""></a>
              <div class="card-body">
                <h3 class="card-title">
                  <a href="#">남녀공용 알피나 고어텍스</a>
                </h3>
                <h4 class="card-title">
                  <a>가격 : 55000</a>
                </h4>
                <p class="card-text">
	                • 당일 산행이나 가벼운 산행에 최적화된 경량 로우컷 등산화.<br>
									• 내구성이 뛰어난 누벅 사용.<br>
									• 산행 시 발의 뒤틀림을 방지하는 서포터가 삽입된 솔 구조<br>
									• 뛰어난 그립과 내구성을 동시에 충족시켜주는 뮤플러스 퍼플 아웃솔<br>
									• 복원력과 항균방취 기능이 뛰어난 오솔라이트 소재의 인솔<br>                                  
            		</p>                
              </div>
              <a href='shopping_basket_action.jsp?number=<%=27%>'>장바구니 추가</a>
            </div>            
          </div>

					<div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="mount_image/4_mount.PNG" alt=""></a>
              <div class="card-body">
                <h3 class="card-title">
                  <a href="#">남녀공용 알피나 고어텍스</a>
                </h3>
                <h4 class="card-title">
                  <a>가격 : 55000</a>
                </h4>
                <p class="card-text">
	                • 아웃도어 워킹화 : 당일 산행이나 가벼운 일상생활에 적합<br>
									• 산행의 목적이나 개인의 발의 상태의 따라 최상의 피팅감을 제공.<br>
									• 워킹화 트레킹에 최적화게 설계된 아웃솔을 적용하여, 보다 편안하고 안정된 산행을 가능케함<br>
									• IU소재 발포형 인솔로, 복원 탄성력 및 쿠션감이 뛰어나 워킹에 적합한 인솔<br>                                   
            		</p>                
              </div>
              <a href='shopping_basket_action.jsp?number=<%=28%>'>장바구니 추가</a>
            </div>            
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="mount_image/5_mount.PNG" alt=""></a>
              <div class="card-body">
                <h3 class="card-title">
                  <a href="#">남녀공용 알피나 고어텍스</a>
                </h3>
                <h4 class="card-title">
                  <a>가격 : 55000</a>
                </h4>
                <p class="card-text">
	                • 당일 산행이나 가벼운 산행에 최적화된 경량 등산화<br>
									• 내구성이 뛰어난 누벅 사용<br>
									• 산행시 발의 뒤틀림을 방지하는 서포터가 삽입된 솔 구조<br>
									• 뛰어난 그립과 내구성을 동시에 충족하는 뮤플러스 퍼플 아웃솔<br>
									• 복원력과 향균방취 기능이 뛰어난 오솔라이트 소재의 인솔<br>                                   
            		</p>                
              </div>
              <a href='shopping_basket_action.jsp?number=<%=29%>'>장바구니 추가</a>
            </div>            
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="mount_image/6_mount.PNG" alt=""></a>
              <div class="card-body">
                <h3 class="card-title">
                  <a href="#">남녀공용 알피나 고어텍스</a>
                </h3>
                <h4 class="card-title">
                  <a>가격 : 55000</a>
                </h4>
                <p class="card-text">
	                • 아웃도어 워킹화: 당일 산행이나 가벼운 일상생활에 적합<br>
									• ARCHSTEP TRC: 충격흡수와 접지력이 우수하여 워킹,트레킹,러닝이 가능한 멀티기능솔<br>
									• COLD EDGE: 인솔&내측 냉감소재를 적용하여, 피부와 접촉시 보다 시원하고 쾌적함 유지<br>
									• 4POINT GRIP: 밀레 자체 기술력으로 개발한 워킹화, 트레킹에 최적화되게 설계된 아웃솔을 적용하여,<br> 
									  보다 편안하고 안정된 산행을 가능케함<br>                                   
            		</p>                
              </div>
              <a href='shopping_basket_action.jsp?number=<%=30%>'>장바구니 추가</a>
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

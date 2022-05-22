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
              <a href="#"><img class="card-img-top" src="physhosel_image/1_physhose.PNG" alt=""></a>
              <div class="card-body">
                <h3 class="card-title">
                  <a href="#">오즈위고 - 트리플블랙</a>
                </h3>
                <h4 class="card-title">
                  <a>가격 : 45000</a>
                </h4>
                <p class="card-text">
	                • 초현대적인 비전을 담아낸 스포티한 슈즈 <br>
									• 반 사이즈 작은 핏: 일반 사이즈보다 반 치수 크게 착용 권장 <br>
									• 발의 압력을 고르게 분산시키는 아이스테이 칼라 튜브 <br>
									• 메쉬 갑피, 스웨이드 및 TPU 오버레이 <br>
									• 직물 안감; 고무 아웃솔 <br>                                  
            		</p>                
              </div>
              <a href='shopping_basket_action.jsp?number=<%=13%>'>장바구니 추가</a>
            </div>            
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="physhosel_image/2_physhose.PNG" alt=""></a>
              <div class="card-body">
                <h3 class="card-title">
                  <a href="#">올드스쿨 - 블랙</a>
                </h3>
                <h4 class="card-title">
                  <a>가격 : 70000</a>
                </h4>
                <p class="card-text">
	                • 올드스쿨은 반스의 클래식한 스케이트 슈즈 <br>
									• 로우 탑 레이스업 타입의 신발 <br>
									• 오래 신어도 견딜 수 있도록 우수한 지속성 <br>
									• 고무와플 아웃솔<br>
									• 가미된 카라로 편안함과 활동성을 더했다<br>                                  
            		</p>                
              </div>
              <a href='shopping_basket_action.jsp?number=<%=14%>'>장바구니 추가</a>
            </div>            
          </div>

           <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="physhosel_image/3_physhose.PNG" alt=""></a>
              <div class="card-body">
                <h3 class="card-title">
                  <a href="#">젤-카야노 5 OG - 화이트:화이트</a>
                </h3>
                <h4 class="card-title">
                  <a>가격 : 40000</a>
                </h4>
                <p class="card-text">
	                • 아식스가 자랑하는 대표적 아이템인 젤-카야노 시리즈 <br>
									• 1999년에 5번째로 출시 <br>
									• 젤-카야노 5 모델을 재연하여 출시 되는 GEL-KAYANO 5 OG는 현시대의 가장 클래식 <br>
									• 트렌디한 스니커즈<br>
									• VIS-TECH 기술이 삽입<br>                                  
            		</p>                
              </div>
              <a href='shopping_basket_action.jsp?number=<%=15%>'>장바구니 추가</a>
            </div>            
          </div>

					<div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="physhosel_image/4_physhose.PNG" alt=""></a>
              <div class="card-body">
                <h3 class="card-title">
                  <a href="#">챌린저 OG - 화이트 그레이 블랙</a>
                </h3>
                <h4 class="card-title">
                  <a>가격 : 55000</a>
                </h4>
                <p class="card-text">
	                • 70년대 러너의 개성 <br>
									• OG 러닝화를 마치 일대일 리메이크한 듯한 나이키 챌린저 OG <br>
									• 부드러운 스웨이드와 반작이는 소재, 통기성 좋은 메쉬 <br>
									• 날렵하고 탄력적인 중창<br>
									• 목의 푹신한 패딩처리로 편안한 룩을 완성<br>                                  
            		</p>                
              </div>
              <a href='shopping_basket_action.jsp?number=<%=16%>'>장바구니 추가</a>
            </div>            
          </div>

         <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="physhosel_image/5_physhose.PNG" alt=""></a>
              <div class="card-body">
                <h3 class="card-title">
                  <a href="#">바리 뮬 - 블랙:화이트</a>
                </h3>
                <h4 class="card-title">
                  <a>가격 : 15000</a>
                </h4>
                <p class="card-text">
	                • 푸마가 새롭게 선보이는 테니스 슈즈, BARI 입니다 <br>
									• 캔버스소재의 어퍼와 스트라이프 폼스트립 <br>
									• 푸마의 시그니처 화이트 아일렛을 사용하고 소프트폼+ 삭라이너로 극강의 쿠셔닝과 편안함을 제공 <br>
									• 뮬 형태의 디자인으로 신고 벗기 편리한 것이 특징<br>
									• 스포티하면서도 클래식한 스타일의 결합<br>                                  
            		</p>                
              </div>
              <a href='shopping_basket_action.jsp?number=<%=17%>'>장바구니 추가</a>
            </div>            
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="physhosel_image/6_physhose.PNG" alt=""></a>
              <div class="card-body">
                <h3 class="card-title">
                  <a href="#">로얄 EC 라이드 - 그레이:블랙</a>
                </h3>
                <h4 class="card-title">
                  <a>가격 : 50000</a>
                </h4>
                <p class="card-text">
	                • 레트로 바이브가 돋보이는 러닝화 <br>
									• 뛰어난 통기성과 서포트를 제공하는 샌드위치 메쉬 갑피와 합성 외피 <br>
									• 중 밀도 퓨얼폼 삭라이너; 발에 부드러운 완충감을 더하는 애스트로크루즈 삭라이너 <br>
									• 쿠셔닝과 반응성<br>
									• 최적화된 균형을 찾은 퓨얼폼 미드솔 적용<br>                                  
            		</p>                
              </div>
              <a href='shopping_basket_action.jsp?number=<%=18%>'>장바구니 추가</a>
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

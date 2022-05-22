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
              <a href="#"><img class="card-img-top" src="highhill_image/1_highhill.PNG" alt=""></a>
              <div class="card-body">
                <h3 class="card-title">
                  <a href="#">애나멜 스틸레토 하이힐</a>
                </h3>
                <h4 class="card-title">
                  <a>가격 : 25000</a>
                </h4>
                <p class="card-text">
	                • 베이직 디자인 <br>
									• 페이크레더, 애나멜, 스웨이드 <br>
									• 다양한 스타일 <br>
									• 10CM <br>
									• 3가지 버전  <br>                                    
            		</p>                
              </div>
              <a href='shopping_basket_action.jsp?number=<%=7%>'>장바구니 추가</a>
            </div>            
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="highhill_image/2_highhill.PNG" alt=""></a>
              <div class="card-body">
                <h3 class="card-title">
                  <a href="#">투명가보시 유리구두</a>
                </h3>
                <h4 class="card-title">
                  <a>가격 : 50000</a>
                </h4>
                <p class="card-text">
	                • 앞굽이 높고 안정감 있는 샌들 형태<br>
									• 각선미를 돋보인다 <br>
									• 피트니스대회, 드레스, 파티용 <br>
									• 발목의 단절감이 없다 <br>
									• 다리가 길어보이는 장점이 있다. <br>                                    
            		</p>                
              </div>
              <a href='shopping_basket_action.jsp?number=<%=8%>'>장바구니 추가</a>
            </div>            
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="highhill_image/3_highhill.PNG" alt=""></a>
              <div class="card-body">
                <h3 class="card-title">
                  <a href="#">링백 하이힐:실버</a>
                </h3>
                <h4 class="card-title">
                  <a>가격 : 100000</a>
                </h4>
                <p class="card-text">
	                • 심플한 디자인<br>
									• 엣지있는 스타일의 스틸레토힐 <br>
									• 앞코라인이 날렵한 스타일<br>
									• 안정감있는 여성용 구두 <br>
									• 격식있는 자리에 더욱 잘 어울린다 <br>                                    
            		</p>                
              </div>
              <a href='shopping_basket_action.jsp?number=<%=9%>'>장바구니 추가</a>
            </div>            
          </div>

					<div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="highhill_image/4_highhill.PNG" alt=""></a>
              <div class="card-body">
                <h3 class="card-title">
                  <a href="#">구찌하이힐</a>
                </h3>
                <h4 class="card-title">
                  <a>가격 : 20000</a>
                </h4>
                <p class="card-text">
	                • GUCCI 여성용 슈즈 '미들힐 샌들' <br>
									• 블랙 가죽에 크리스탈 디테일 <br>
									• 볼드한 힐로 편안하고 안정된 착화감<br>
									• 스퀘어 토와 구찌 프린트 라이닝<br>
									• 브랜드만의 럭셔리한 감성 <br>                                    
            		</p>                
              </div>
              <a href='shopping_basket_action.jsp?number=<%=10%>'>장바구니 추가</a>
            </div>            
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="highhill_image/5_highhill.PNG" alt=""></a>
              <div class="card-body">
                <h3 class="card-title">
                  <a href="#">스와로브스키 하이힐</a>
                </h3>
                <h4 class="card-title">
                  <a>가격 : 45000</a>
                </h4>
                <p class="card-text">
	                • 사피아노 패턴 <br>
									• SAFFIANO는 이탈리어로 '철망'이라는 뜻<br>
									• 소가죽의 부드로운 부분 선택<br>
									• 오데트의 직접 주문으로 고급스러움을 높임<br>
									• 단정한 옷차림에 조화가 잘되는 작품  <br>                                    
            		</p>                
              </div>
              <a href='shopping_basket_action.jsp?number=<%=11%>'>장바구니 추가</a>
            </div>            
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="highhill_image/6_highhill.PNG" alt=""></a>
              <div class="card-body">
                <h3 class="card-title">
                  <a href="#">세라 펌프스 하이힐</a>
                </h3>
                <h4 class="card-title">
                  <a>가격 : 25000</a>
                </h4>
                <p class="card-text">
	                • 밝은 그레이 색상 펌프스 <br>
									• 굼높이는 5CM <br>
									• 소가죽 <br>
									• 굽 안쪽 부분에 은장으로 포인티를 준 디자인<br>
									• 앞코 모양으로 나온 디자인으로 세련미 추가  <br>                                    
            		</p>                
              </div>
              <a href='shopping_basket_action.jsp?number=<%=12%>'>장바구니 추가</a>
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

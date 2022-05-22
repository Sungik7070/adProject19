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
              <a href="#"><img class="card-img-top" src="gudu_image/1_gudu.PNG" alt=""></a>
              <div class="card-body">
                <h3 class="card-title">
                  <a href="#">라텍스 플레인토 옥스포드 더비 구두</a>
                </h3>
                <h4 class="card-title">
                  <a>가격 : 60000</a>
                </h4>
                <p class="card-text">
	                • 튼튼한 내구성의 최고급 신세틱 래더 <br>
									• 편안한 착용감을 주는 천연 라텍스 <br>
									• 중창 앞쪽 더블 스펀지 패드 <br>
									• 신발의 밸런스를 잡아주는 기능성 중창 <br>
									• 가벼운몰드 우레탄 솔 <br>                                    
            		</p>                
              </div>
              <a href='shopping_basket_action.jsp?number=<%=19%>'>장바구니 추가</a>
            </div>            
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="gudu_image/2_gudu.PNG" alt=""></a>
              <div class="card-body">
                <h3 class="card-title">
                  <a href="#">EUROHOMME 로퍼</a>
                </h3>
                <h4 class="card-title">
                  <a>가격 :40000</a>
                </h4>
                <p class="card-text">
	                • 어ᄄᅠᆫ코디에도 쉽게 매치할수 있는 태슬로퍼로 깔끔한 재단처리와 박음질 처리 <br>
									• 만도솔이 매치되어 캐주얼한 무드 <br>
									• 댄디한 정장차림은 물론 캐주얼한 의상까지 매치 <br>
									• 은은한 광택이 매력으로 소가죽 내피를 사용해 소재의 고급스러움을 확실히 드러내면서 제품 <br>
									• 탄탄한 복스가죽의 질감  <br>                                    
            		</p>                
              </div>
              <a href='shopping_basket_action.jsp?number=<%=20%>'>장바구니 추가</a>
            </div>            
          </div>


          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="gudu_image/3_gudu.PNG" alt=""></a>
              <div class="card-body">
                <h3 class="card-title">
                  <a href="#">소가죽수제화 남자 몽크스트랩 정장구두</a>
                </h3>
                <h4 class="card-title">
                  <a>가격 : 60000</a>
                </h4>
                <p class="card-text">
	                • 수트와 잘어울리는 몽크스트랩 슈즈<br>
									• 슬림하게 빠진 앞코 라인이 수트와 매치되었을때 늘씬하고 길어보이는 다리라인 <br>
									• 디테일이 돋보이는 디자인으로 유니크한 디자인을 선호 <br>
									• 사이즈는 5mm단위 정사이즈로 제작 <br>
									• 신을수록 부드러워져 내발에 꼭맞는 맞춤화 핏 <br>                                    
            		</p>                
              </div>
              <a href='shopping_basket_action.jsp?number=<%=21%>'>장바구니 추가</a>
            </div>            
          </div>


					<div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="gudu_image/4_gudu.PNG" alt=""></a>
              <div class="card-body">
                <h3 class="card-title">
                  <a href="#">SOULCOMPANY캐주얼 구두</a>
                </h3>
                <h4 class="card-title">
                  <a>가격 : 65000</a>
                </h4>
                <p class="card-text">
	                • 가성비갑 캐주얼 구두 <br>
									• 미니멀하고 심플하지만 세련된 느낌의 캐주얼 구두 <br>
									• 신발이 가볍고 양쪽에 밴드가 있다 <br>
									• 신고 벗기 편안한 슬립온 스타일의 구두 <br>
									• 스타일 자체가 잘 나와서 포멀한 룩, 캐주얼 한 룩 어디에도 잘 어울린다.  <br>                                    
            		</p>                
              </div>
              <a href='shopping_basket_action.jsp?number=<%=22%>'>장바구니 추가</a>
            </div>            
          </div>

					<div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="gudu_image/5_gudu.PNG" alt=""></a>
              <div class="card-body">
                <h3 class="card-title">
                  <a href="#">뉴스마트로퍼 구두</a>
                </h3>
                <h4 class="card-title">
                  <a>가격 : 60000</a>
                </h4>
                <p class="card-text">
	                • 로맨틱 무브의 ‘스테디 셀러’ 제품 <br>
									• 유행을 타지 않으며 어떤 옷차림에도 퍼펙트 매치 <br>
									• 한국인 평균 발사이즈의 데이터를 이용 <br>
									• 착용감이 아주 좋다 <br>
									• 질 좋은 천연 소가죽과 원부자재를 이용하여 수작업으로 제작 <br>                                    
            		</p>                
              </div>
              <a href='shopping_basket_action.jsp?number=<%=23%>'>장바구니 추가</a>
            </div>            
          </div>				
				
        <div class="col-lg-4 col-md-6 mb-4">
          <div class="card h-100">
            <a href="#"><img class="card-img-top" src="gudu_image/6_gudu.PNG" alt=""></a>
            <div class="card-body">
              <h3 class="card-title">
                <a href="#">발렌시아가 BB 로고 더비</a>
              </h3>
              <h4 class="card-title">
                <a>가격 : 90000</a>
              </h4>
              <p class="card-text">
               • 발렌시아가(Balenciaga)의 블랙 스웨이드 스퀘어 토 뮬 <br>
								• 날렵하고 각진 실루엣 <br>
								• 디자이너 뎀나 바잘리아(Demna Gvasalia)의 2020 리조트 컬렉션 <br>
								• 반달 모양 힐을 세팅하고 토 스트랩에 브랜드 <br>
								• 스커트와 블라우스에 매치해 개성 있는 컨템포러리 감성  <br>                                    
          		</p>                
            </div>
            <a href='shopping_basket_action.jsp?number=<%=24%>'>장바구니 추가</a>
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

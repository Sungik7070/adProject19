<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Shop Home page</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/shop-homepage.css" rel="stylesheet">

</head>
<body>
  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" 
      aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="../main-html/index.jsp">메인</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="index2.jsp">모델설명</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="index3.jsp">테스트</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Page Content -->
  <div class="container">
      <!--메인페이지 상단부분 -->
      <div class="col-lg-9">       
        <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
                 
          <div class="carousel-inner" role="listbox">
            <div class="list-group" style="background:black; width:300px; 
            height:200px; padding:23px;">
              <a href="../userPictureBoard-all/userPictureBoard.jsp" class="list-group-item">가죽</a>
              <a href="../userBoard-all/userBoard.jsp" class="list-group-item">나무</a>
              <a href="../userBoard-all/userBoard.jsp" class="list-group-item">대리석/화강암 타일</a>
            </div>
          </div>        
        </div>
       </div>
   </div>

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">TeamProject &copy; JSP 2022</p>
    </div>
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>
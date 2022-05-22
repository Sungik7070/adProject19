<%@ page language="java" 
    contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    import="java.sql.*"%>
<%@ page import="java.io.PrintWriter" %>
<%
	request.setCharacterEncoding("euc-kr");
%>
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
            <a class="nav-link" href="index.jsp">메인페이지</a>
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
    </div>
  </div>
  <div clas="container">
		<div class="row">
			<table class="table table-striped" style="text-align:center; border: 1px solid #dddddd">
				<thead>
						<tr>
							<th colspan="3" style="background-color: #aaaaaa; text-align:center;">장바구니</th>						
						</tr>
				</thead>
			<tbody>				
			<%			
				
				try {										
					 // 드라이버 로딩
				  String driver = "oracle.jdbc.driver.OracleDriver";
				  Class.forName(driver);
				
				  String url = "jdbc:oracle:thin:@localhost:1521:xe";
					String user = "C##ksi";
				  String pwd = "1111";
				   		  	
					Connection conn = DriverManager.getConnection(url,user,pwd);				   				  
				   Statement st = conn.createStatement();
				   // 내가 입려한 id와 pw 값이 DB안에 있는지 확인한다
				   String sql = "select * from 장바구니 order by 일련번호 desc";				   
			     ResultSet rs = st.executeQuery(sql);
				   					     
				   while(rs.next()){
					   String product_number = rs.getString("상품번호");
					   
					   if(rs.getString("아이디").equals((String)session.getAttribute("id")))
				     {				    	  						   						 
				    	  st = conn.createStatement();
			          sql = "SELECT * FROM 상품 WHERE 상품번호='" + product_number + "'";
			          st.executeUpdate(sql);
			          ResultSet rs2 = st.executeQuery(sql);					     	
			          
			         	while(rs2.next()){				          
						      out.print("<tr>");
									out.print("<td>" + "이미지" + "</td>");															
									out.print("<td colspan='2'>" + 
									           "<img src='" + rs2.getString("이미지링크") + "'alt=loading='lazy' width='100px' height='100px'>"									           
														  + "</td>");																		
								  out.print("</tr>");  
								
								  out.print("<tr>");
								  out.print("<td>" + "상품이름" + "</td>");
								  out.print("<td colspan='2'>" + rs2.getString("상품이름") + "</td>");
									out.print("</tr>"); 
									 							
																			
									out.print("<tr>");
								  out.print("<td>" + "상품가격" + "</td>");
								  out.print("<td colspan='2'>" + rs2.getString("상품가격") + "</td>");
								  out.print("</tr>");								  								 
			         	}
				     }					     						   						   						  						
					}
				}catch (Exception e) {       
          out.println("DB 연동 실패");
      }    
%>
			</tbody>		
			</table>			
		</div>
	</div>
  
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

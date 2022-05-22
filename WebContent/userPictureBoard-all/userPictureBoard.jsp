<%@ page language="java" 
    contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    import="java.sql.*"%>
<%@ page import="java.io.PrintWriter" %>
<% 
			request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width",initial-scale="1">
	<!-- viewport=화면상의 표시영역, content=모바일 장치들에 맞게 크기조정, initial=초기화면 배율 설정 -->
	
<link rel="stylesheet" href="../css/bootstrap.css">
	<!-- 스타일시트로 css폴더의 bootstrap.css파일 사용 -->
	
<title>사진 게시판!!</title>
</head>
<body style= "background-color : lightblue;">

	<nav class="navbar navbar-inverse"> <!-- navbar-색상(inverse = 검은색, default 22222= 색x) -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
			data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
			aria-expanded="false">
				<!-- class="navbar-toggle collapsed"=>네비게이션의 화면 출력유무 
				data-toggle="collapse" : 모바일 상태에서 클릭하면서 메뉴가 나오게 설정 -->
			
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
					<!-- 아이콘 이미지 -->
				
			</button>
			
			<a class="navbar-brand" href="main-html/index.html">JSP 게시판</a>
				<!-- Bootstrap navbar 기본 메뉴바 -->
		</div>
		
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav"> <!-- navbar-nav => 네비게이션 바의 메뉴 -->
				<li><a href="../main-html/index.jsp">메인화면</a></li>
				<li class="active"><a href="../userBoard-all/userBoard.jsp">자유게시판</a></li>
				<li class="active"><a href="userPictureBoard.jsp">사진게시판</a></li>
				<!-- 메뉴, 게시판의 main.jsp와 bbs.jsp의 파일로 각각 이동 -->		
		</div>
	</nav>
	<!--  <img alt="그림 없음" src="Circle.png">
	<img src="JJWORLD.png"> 
	-->
	
	
	<div clas="container">
		<div class="row">
			<table class="table table-striped" style="text-align:center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align:center;">번호</th>
						<th style="background-color: #eeeeee; text-align:center;">제목</th>
						<th style="background-color: #eeeeee; text-align:center;">작성자</th>
						<th style="background-color: #eeeeee; text-align:center;">글내용</th>					
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
				   String sql = "select * from 사진게시판 order by 게시판번호 desc";				   
			     ResultSet rs = st.executeQuery(sql);
				   
			     int count = 0; 
				   while(rs.next()){					   
					   	 String content = rs.getString("글내용");
					   	 String board_no = rs.getString("게시판번호");					   		
					   						   						   
						   out.print("<tr>"); 						   
						   out.print("<td>"); 
%> 
							 <a href='PictureBoardList.jsp?board_no=<%=board_no%>'> 
<% 							
							 out.print(board_no + "</a>" + "</td>");						   						  
						   out.print("<td>" + rs.getString("제목") + "</td>");
						   out.print("<td>" + rs.getString("아이디") + "</td>"); 
						   out.print("<td>" + content.charAt(0) +  content.charAt(1) + content.charAt(2) + "..." + "</td>");						   
						   out.print("</tr>");						   						   						  						 
					}
				}catch (Exception e) {       
          out.println("DB 연동 실패");
      }    
%>
			</tbody>		
			</table>
			<a href="userPictureBoardScanf.jsp" class="btn btn-primary pull-right">글쓰기</a>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	
</body>
</html>
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
		<meta name="viewport" content="width=device-width", initial-scale="1">		
		<link rel="stylesheet" href="../css/bootstrap.css">
		
		<title>게시글</title>
	</head>
	<body style= "background-color : lightblue;">	
			<div class="container">
				<div class="row">
				<table class="table table-striped" style="text-align:center; border: 1px solid #dddddd">
					<thead>
						<tr>
							<th colspan="3" style="background-color: #aaaaaa; text-align:center;">게시판 글 보기</th>						
						</tr>
					</thead>
					<tbody>
						<%																	
								String user_id = "";
								try {										
									 // 드라이버 로딩
								  String driver = "oracle.jdbc.driver.OracleDriver";
								  Class.forName(driver);
								
								  String url = "jdbc:oracle:thin:@localhost:1521:xe";
									String user = "C##ksi";
								  String pwd = "1111";
								   		  	
									Connection conn = DriverManager.getConnection(url,user,pwd);				   				  				  
								   									 
									 session.setAttribute("board_no", request.getParameter("board_no"));									
										String s_board_no = (String)session.getAttribute("board_no");   
									  int board_no = Integer.parseInt(s_board_no);								   	   				  									 
						        Statement st = conn.createStatement();
						        
						        String sql = "SELECT * FROM 사진게시판 WHERE 게시판번호='" + board_no + "'";		        
						        st.executeUpdate(sql);
						        ResultSet rs = st.executeQuery(sql);
																        
						        while(rs.next()) {			            
						            break;
						        } 						       
						      user_id = rs.getString("아이디");
						        
						      out.print("<tr>");
							    out.print("<td style = 'width: 20%;''>" +  "제목" + "</td>");
							    out.print("<td colspan='2'>" + rs.getString("제목") + "</td>");
								  out.print("</tr>"); 
								
								  out.print("<tr>");
								  out.print("<td>" + "아이디" + "</td>");
								  out.print("<td colspan='2'>" + rs.getString("아이디") + "</td>");
									out.print("</tr>"); 
									 
									out.print("<tr>");
									out.print("<td>" + "이미지" + "</td>");															
									out.print("<td colspan='2'>" + 
									           "<img src='" + rs.getString("이미지링크") + "'alt=loading='lazy'>"									           
														  + "</td>");																		
									out.print("</tr>"); 
																			
									out.print("<tr>");
								  out.print("<td>" + "내용" + "</td>");
								  out.print("<td colspan='2' style='min-height: 200px; text-align: left;'>" + rs.getString("글내용") + "</td>");
									out.print("</tr>"); 	
								}catch (Exception e) {       
				           out.println("DB 연동 실패");
				       	}												    																									
						%>						
					</tbody>
					
					<!-- 글쓰기 버튼 => 실제로 데이터를 액션페이지로 보냄 -->
					</table>
					
					<a href="userBoard.jsp" class="btn btn-primary">목록</a>								
					
					<% 
						if((String)session.getAttribute("id") != null && user_id.equals(session.getAttribute("id")) )
						{
					%>
						<a href="Picture_userUpdate.jsp" class="btn btn-primary">수정</a>					
						<a href="Picture_userDelete.jsp" class="btn btn-primary">삭제</a>	
					<%						
						}
					%>																								
				</div>
			</div>
		</body>
	</html>				
<%@ page language="java" 
    contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    import="java.sql.*"%>
<%
    request.setCharacterEncoding("euc-kr");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
  <title>userDelete</title>
</head>
<body>
 <%        
      try {            
      	// 드라이버 로딩
         String driver = "oracle.jdbc.driver.OracleDriver";
         Class.forName(driver);

         String url = "jdbc:oracle:thin:@localhost:1521:xe";
   		   String user = "C##ksi";
   		   String pwd = "1111";
           		  	
   		   Connection conn = DriverManager.getConnection(url, user, pwd);
	                		  
  	  		String sql = "DELETE FROM 사진게시판 WHERE 게시판번호=?";   					
  	  		String s_board_no = (String)session.getAttribute("board_no");   
 					int board_no = Integer.parseInt(s_board_no);
 			
					PreparedStatement pstmt = conn.prepareStatement(sql);   		
					pstmt.setInt(1, board_no);
					
					pstmt.executeUpdate();
					response.sendRedirect("userPictureBoard.jsp");
					
				} catch (Exception e) {
					e.printStackTrace();
				}
%>

</body>
</html>
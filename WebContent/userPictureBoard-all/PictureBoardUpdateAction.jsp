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
<title> BoardeUpdateAction </title>
</head>
<body>
 	<% 
			request.setCharacterEncoding("UTF-8");
		%>
    <%        
        try {            
        	// 드라이버 로딩

           String driver = "oracle.jdbc.driver.OracleDriver";
           Class.forName(driver);

           String url = "jdbc:oracle:thin:@localhost:1521:xe";
     		   String user = "C##ksi";
     		   String pwd = "1111";
             		  	
     		   Connection conn = DriverManager.getConnection(url, user, pwd);
                  		  
   	        String user_title     = request.getParameter("title");   	     
	   	     	String user_content     = request.getParameter("content");  
   	  			String user_imageLink     = request.getParameter("imageLink");  
   	  			String s_board_no = (String)session.getAttribute("board_no");   
   	  			int board_no = Integer.parseInt(s_board_no);
   	  			   	  	                 
   	  			System.out.println(user_title + " " + user_content + " " + user_imageLink + " " + board_no + " ");
            String sql = "UPDATE 사진게시판 SET 제목=?, 글내용=?, 이미지링크=? WHERE 게시판번호=?";
       		            
            PreparedStatement st = conn.prepareStatement(sql);            
            st.setString(1, user_title);            
            st.setString(2, user_content);            
            st.setString(3, user_imageLink);            
            st.setInt(4, board_no);            
            
            st.executeUpdate();              
            response.sendRedirect("userPictureBoard.jsp");			
            
        }catch (Exception e) {
        	   out.println("DB 연동 실패");
        }		
    %>
 
</body>
</html>

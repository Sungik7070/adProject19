<%@ page language="java" 
    contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    import="java.sql.*"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title> BoardeUpdateAction </title>
</head>
<body>
 
    <%        
        try {            
        	// ����̹� �ε�

           String driver = "oracle.jdbc.driver.OracleDriver";
           Class.forName(driver);

           String url = "jdbc:oracle:thin:@localhost:1521:xe";
     		   String user = "C##ksi";
     		   String pwd = "1111";
             		  	
     		   Connection conn = DriverManager.getConnection(url, user, pwd);
                  		  
   	        String user_title     = request.getParameter("title");   	     
   	     		String user_content     = request.getParameter("content");   	     	
   	  			String s_board_no = (String)session.getAttribute("board_no");   
   	  			int board_no = Integer.parseInt(s_board_no);
   	  			   	  	                 
            String sql = "UPDATE �����Խ��� SET ����=?, �۳���=? WHERE �Խ��ǹ�ȣ=?";
       
            PreparedStatement st = conn.prepareStatement(sql);
          
            st.setString(1, user_title);
            st.setString(2, user_content);
            st.setInt(3, board_no);
            
            st.executeUpdate();    
            response.sendRedirect("userBoard.jsp");			
            
        }catch (Exception e) {
        	   out.println("DB ���� ����");
        }		
    %>
 
</body>
</html>

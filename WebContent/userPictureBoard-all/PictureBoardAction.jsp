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
<title> JoinCheck </title>
</head>
<body>
	<% 
			request.setCharacterEncoding("UTF-8");
		%>
 
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
     		    String user_imageLink     = request.getParameter("imageLink");
   	        String user_content     = request.getParameter("content");   	        
   	        String user_id = (String)session.getAttribute("id");   	           	          	        
   	           	        
            Statement st = conn.createStatement();
                                   	
            String sql = "INSERT INTO �����Խ��� "+ 
												 "(�Խ��ǹ�ȣ, ���̵�, ����, �۳���, �̹�����ũ) "+           							
											   "VALUES (�����Խ���_��ȣ.nextval, '"+user_id+"', '"+user_title+"', '"+user_content+"', '"+user_imageLink+"')";
        		           
            st.executeUpdate(sql);              
            response.sendRedirect("userPictureBoard.jsp");        
            
        } catch (Exception e) {       
            out.println("DB ���� ����");
        }    
    %>
 
</body>
</html>

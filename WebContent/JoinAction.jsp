<%@ page language="java" 
    contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    import="java.sql.*"%>
<%
    request.setCharacterEncoding("euc-kr");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title> JoinCheck </title>
</head>
<body>
 
    <%        
        try {                    
           String driver = "oracle.jdbc.driver.OracleDriver";
           Class.forName(driver);

           String url = "jdbc:oracle:thin:@localhost:1521:xe";
     		   String user = "C##ksi";
     		   String pwd = "1111";
             		  	
     		   Connection conn = DriverManager.getConnection(url,user,pwd);
   					
            Statement st = conn.createStatement();
            
            String id = request.getParameter("id");
            String name = request.getParameter("name");
            String password = request.getParameter("password");
            
            String sql = "INSERT INTO member VALUES ('" + id + 
                    "','" + name + 
                    "','" + password +                    
                    "')";             
            st.executeUpdate(sql); 
            response.sendRedirect("Login.jsp");             
        } catch (Exception e) {       
            out.println("DB 연동 실패");
        }    
    %>
</body>
</html>

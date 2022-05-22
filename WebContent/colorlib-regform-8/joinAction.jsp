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
        try {                    
           String driver = "oracle.jdbc.driver.OracleDriver";
           Class.forName(driver);

           String url = "jdbc:oracle:thin:@localhost:1521:xe";
     		   String user = "C##ksi";
     		   String pwd = "1111";
             		  	
     		   Connection conn = DriverManager.getConnection(url,user,pwd);
             
   	        String user_id     = request.getParameter("JOIN_id");
   	        String user_pw     = request.getParameter("JOIN_pw");
   	        String user_name   = request.getParameter("JOIN_name");
   	        String user_email  = request.getParameter("JOIN_email");
   	        
   	        System.out.println(user_id + " " + user_pw + " " + user_name + " " + user_email + " ");
          
            Statement st = conn.createStatement();
            String sql = "INSERT INTO 회원 VALUES ('" + user_id + 
                    "','" + user_pw + 
                    "','" + user_name +
                    "','" + user_email +
                    "')";             
            st.executeUpdate(sql); 
            response.sendRedirect("../Login_v4/login.jsp");             
        } catch (Exception e) {       
            out.println("DB 연동 실패");
        }    
    %>
 
</body>
</html>

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
<title> Login_Check </title>
</head>
<body>
 
    <h1> 로그인 체크 페이지 </h1>
    
    <%
    try {
        
   
       String driver = "oracle.jdbc.driver.OracleDriver";
       Class.forName(driver);

       String url = "jdbc:oracle:thin:@localhost:1521:xe";
		   String user = "C##ksi";
		   String pwd = "1111";
        		  	
		   Connection conn = DriverManager.getConnection(url,user,pwd);		   
      
        String id= request.getParameter("id");
        String password= request.getParameter("password");
         
        Statement st = conn.createStatement();

        String sql = "SELECT * FROM member WHERE 아이디='" + id + "' AND 비밀번호='" + password + "'";
        st.executeUpdate(sql);
        ResultSet rs = st.executeQuery(sql);
                
        Boolean isLogin = false;
        while(rs.next()) {            
            isLogin = true;
        }
        
        if(isLogin) {
            session.setAttribute("id", id); 
            session.setAttribute("pw", password);
            response.sendRedirect("main_home.jsp");    
        } else {
            %> <script> alert("로그인 실패"); history.go(-1); </script> <%            
        }

    } catch (Exception e) {       
        out.println("DB 연동 실패");
    }
    %>
</body>
</html>

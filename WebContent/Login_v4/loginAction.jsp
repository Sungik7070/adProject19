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
 
    <h1> �α��� üũ ������ </h1>
    
    <%
    try {
        
   
       String driver = "oracle.jdbc.driver.OracleDriver";
       Class.forName(driver);

       String url = "jdbc:oracle:thin:@localhost:1521:xe";
		   String user = "C##ksi";
		   String pwd = "1111";
        		  	
		   Connection conn = DriverManager.getConnection(url,user,pwd);		   
      
        String user_id= request.getParameter("input_id");
        String user_pw= request.getParameter("input_pw");
         
        Statement st = conn.createStatement();

        String sql = "SELECT * FROM ȸ�� WHERE ���̵�='" + user_id + "' AND ��й�ȣ='" + user_pw + "'";
        st.executeUpdate(sql);
        ResultSet rs = st.executeQuery(sql);
                
        Boolean isLogin = false;
        while(rs.next()) {            
            isLogin = true;
        }
        
        if(isLogin) {
            session.setAttribute("id", user_id); 
            session.setAttribute("pw", user_pw);
            response.sendRedirect("../main-html/index.jsp");    
        } else {
            %> <script> alert("�α��� ����"); history.go(-1); </script> <%            
        }

    } catch (Exception e) {       
        out.println("DB ���� ����");
    }
    %>
</body>
</html>

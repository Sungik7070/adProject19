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
        	// 드라이버 로딩
           String driver = "oracle.jdbc.driver.OracleDriver";
           Class.forName(driver);

           String url = "jdbc:oracle:thin:@localhost:1521:xe";
     		   String user = "C##ksi";
     		   String pwd = "1111";
             		  	
     		   Connection conn = DriverManager.getConnection(url, user, pwd);     		   
           Statement st = conn.createStatement();
                                         
           String user_id = (String)session.getAttribute("id");
           int product_number = Integer.parseInt(request.getParameter("number"));
                      
           String sql = "INSERT INTO 장바구니 "+ 
												 "(일련번호, 아이디, 상품번호) "+           							
											   "VALUES (장바구니_번호.nextval, '"+user_id+"', '"+product_number+"')";
        		           
            st.executeUpdate(sql);                          
            
        } catch (Exception e) {       
            out.println("DB 연동 실패");
        }    
    %>
    <script> history.back();</script> 
</body>
</html>

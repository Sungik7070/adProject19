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
		
		<title>�Խñ�</title>
	</head>
	<body style= "background-color : lightblue;">	
			<div class="container">
				<div class="row">
				<table class="table table-striped" style="text-align:center; border: 1px solid #dddddd">
					<thead>
						<tr>
							<th colspan="3" style="background-color: #aaaaaa; text-align:center;">�Խ��� �� ����</th>						
						</tr>
					</thead>
					<tbody>
						<%																	
								String user_id = "";
								try {										
									 // ����̹� �ε�
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
						        
						        String sql = "SELECT * FROM �����Խ��� WHERE �Խ��ǹ�ȣ='" + board_no + "'";		        
						        st.executeUpdate(sql);
						        ResultSet rs = st.executeQuery(sql);
																        
						        while(rs.next()) {			            
						            break;
						        } 						       
						      user_id = rs.getString("���̵�");
						        
						      out.print("<tr>");
							    out.print("<td style = 'width: 20%;''>" +  "����" + "</td>");
							    out.print("<td colspan='2'>" + rs.getString("����") + "</td>");
								  out.print("</tr>"); 
								
								  out.print("<tr>");
								  out.print("<td>" + "���̵�" + "</td>");
								  out.print("<td colspan='2'>" + rs.getString("���̵�") + "</td>");
									out.print("</tr>"); 
									 
									out.print("<tr>");
									out.print("<td>" + "�̹���" + "</td>");															
									out.print("<td colspan='2'>" + 
									           "<img src='" + rs.getString("�̹�����ũ") + "'alt=loading='lazy'>"									           
														  + "</td>");																		
									out.print("</tr>"); 
																			
									out.print("<tr>");
								  out.print("<td>" + "����" + "</td>");
								  out.print("<td colspan='2' style='min-height: 200px; text-align: left;'>" + rs.getString("�۳���") + "</td>");
									out.print("</tr>"); 	
								}catch (Exception e) {       
				           out.println("DB ���� ����");
				       	}												    																									
						%>						
					</tbody>
					
					<!-- �۾��� ��ư => ������ �����͸� �׼��������� ���� -->
					</table>
					
					<a href="userBoard.jsp" class="btn btn-primary">���</a>								
					
					<% 
						if((String)session.getAttribute("id") != null && user_id.equals(session.getAttribute("id")) )
						{
					%>
						<a href="Picture_userUpdate.jsp" class="btn btn-primary">����</a>					
						<a href="Picture_userDelete.jsp" class="btn btn-primary">����</a>	
					<%						
						}
					%>																								
				</div>
			</div>
		</body>
	</html>				
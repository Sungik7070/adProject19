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
<meta name="viewport" content="width=device-width",initial-scale="1">
	<!-- viewport=ȭ����� ǥ�ÿ���, content=����� ��ġ�鿡 �°� ũ������, initial=�ʱ�ȭ�� ���� ���� -->
	
<link rel="stylesheet" href="../css/bootstrap.css">
	<!-- ��Ÿ�Ͻ�Ʈ�� css������ bootstrap.css���� ��� -->
	
<title>���� �Խ���!!</title>
</head>
<body style= "background-color : lightblue;">

	<nav class="navbar navbar-inverse"> <!-- navbar-����(inverse = ������, default 22222= ��x) -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
			data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
			aria-expanded="false">
				<!-- class="navbar-toggle collapsed"=>�׺���̼��� ȭ�� ������� 
				data-toggle="collapse" : ����� ���¿��� Ŭ���ϸ鼭 �޴��� ������ ���� -->
			
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
					<!-- ������ �̹��� -->
				
			</button>
			
			<a class="navbar-brand" href="main-html/index.html">JSP �Խ���</a>
				<!-- Bootstrap navbar �⺻ �޴��� -->
		</div>
		
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav"> <!-- navbar-nav => �׺���̼� ���� �޴� -->
				<li><a href="../main-html/index.jsp">����ȭ��</a></li>
				<li class="active"><a href="../userBoard-all/userBoard.jsp">�����Խ���</a></li>
				<li class="active"><a href="userPictureBoard.jsp">�����Խ���</a></li>
				<!-- �޴�, �Խ����� main.jsp�� bbs.jsp�� ���Ϸ� ���� �̵� -->		
		</div>
	</nav>
	<!--  <img alt="�׸� ����" src="Circle.png">
	<img src="JJWORLD.png"> 
	-->
	
	
	<div clas="container">
		<div class="row">
			<table class="table table-striped" style="text-align:center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align:center;">��ȣ</th>
						<th style="background-color: #eeeeee; text-align:center;">����</th>
						<th style="background-color: #eeeeee; text-align:center;">�ۼ���</th>
						<th style="background-color: #eeeeee; text-align:center;">�۳���</th>					
					</tr>
				</thead>
			<tbody>				
			<%			
				
				try {										
					 // ����̹� �ε�
				  String driver = "oracle.jdbc.driver.OracleDriver";
				  Class.forName(driver);
				
				  String url = "jdbc:oracle:thin:@localhost:1521:xe";
					String user = "C##ksi";
				  String pwd = "1111";
				   		  	
					Connection conn = DriverManager.getConnection(url,user,pwd);				   				  
				   Statement st = conn.createStatement();
				   // ���� �Է��� id�� pw ���� DB�ȿ� �ִ��� Ȯ���Ѵ�
				   String sql = "select * from �����Խ��� order by �Խ��ǹ�ȣ desc";				   
			     ResultSet rs = st.executeQuery(sql);
				   
			     int count = 0; 
				   while(rs.next()){					   
					   	 String content = rs.getString("�۳���");
					   	 String board_no = rs.getString("�Խ��ǹ�ȣ");					   		
					   						   						   
						   out.print("<tr>"); 						   
						   out.print("<td>"); 
%> 
							 <a href='PictureBoardList.jsp?board_no=<%=board_no%>'> 
<% 							
							 out.print(board_no + "</a>" + "</td>");						   						  
						   out.print("<td>" + rs.getString("����") + "</td>");
						   out.print("<td>" + rs.getString("���̵�") + "</td>"); 
						   out.print("<td>" + content.charAt(0) +  content.charAt(1) + content.charAt(2) + "..." + "</td>");						   
						   out.print("</tr>");						   						   						  						 
					}
				}catch (Exception e) {       
          out.println("DB ���� ����");
      }    
%>
			</tbody>		
			</table>
			<a href="userPictureBoardScanf.jsp" class="btn btn-primary pull-right">�۾���</a>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	
</body>
</html>
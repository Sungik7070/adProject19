<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width", initial-scale="1">		
		<link rel="stylesheet" href="../css/bootstrap.css">
		
		<title>글쓰기</title>
	</head>	
	<body style= "background-color : lightblue;">
		<% 
			request.setCharacterEncoding("UTF-8");		
			if((String)session.getAttribute("id") == null)
			{
		%>
				<script> alert('로그인 후 사용해주세요'); </script>	
		<%
			response.sendRedirect("userBoard.jsp");
			}
		%>
		
		<div class="container">
			<div class="row"> 
				<form method="post" action="BoardAction.jsp"> 
					<table class="table table-striped" style="text-align:center; border: 1px solid #dddddd"> 
						<thead> 
							<tr> 
								<th colspan="2" style="background-color: #aaaaaa; text-align:center;">게시판 글쓰기</th>
							</tr> 
							</thead> 
							<tbody> 
							<tr>
							<td> <input type="text" class="form-control" placeholder="글 제목" name="title" maxlength="58"></td> 
							</tr> 
							<tr>
								<td> <textarea class="form-control" placeholder="글 내용" name="content" maxlength="2048" style="height: 350px"></textarea> </td>
							</tr> 
						</tbody>
					</table> 
					<input type="submit" class="btn btn-primary pull-right" value="글쓰기">
				</form>
				</div> 
			</div> 
			<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script> 
			<script src="js/bootstrap.js"></script>
		</body> 
	</html>				
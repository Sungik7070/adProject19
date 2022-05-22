<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form method=post action="LoginAction.jsp">
	<table>
		<tr>
			<td>
				<font>아이디: </font>
			</td>
			<td>
				<input type=text name=id size=12 maxlength=12>
			</td>
			<td>
			</td>
		</tr>
		<tr>
			<td>
				<font>비밀번호: </font>
			</td>
			<td>
				<input type=password name=password size=12 maxlength=12>
			</td>
			<td>
			</td>
		</tr>
		<tr>
			<td>
				<input type=submit value="로그인">
			</td>
			<td>
				<input type=button value
				="회원 가입" onclick="location='./Join.jsp'">
			</td>
		</tr>
	</table>
</form>
</body>
</html>
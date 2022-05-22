<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form method=post action="JoinAction.jsp">
	<table>
		<caption>
			회원 정보 입력
		</caption>
		<tr>
			<td>
				<font>아이디: </font>
			</td>
			<td>
				<input type=text name=id size=20 maxlength=12>
			</td>
		</tr>
		<tr>
			<td>
				<font>이름: </font>
			</td>
			<td>
				<input type=text name=name size=20 maxlength=12>
			</td>
		</tr>
		<tr>
			<td>
				<font>비밀번호: </font>
			</td>
			<td>
				<input type=password name=password size=20 maxlength=12>
			</td>
		</tr>
		<tr>
			<td>
				<input type=submit value="회원 가입">
			</td>
			<td>
				<input type=reset value="취소">
			</td>
		</tr>
	</table>
</form>
</body>
</html>

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
			ȸ�� ���� �Է�
		</caption>
		<tr>
			<td>
				<font>���̵�: </font>
			</td>
			<td>
				<input type=text name=id size=20 maxlength=12>
			</td>
		</tr>
		<tr>
			<td>
				<font>�̸�: </font>
			</td>
			<td>
				<input type=text name=name size=20 maxlength=12>
			</td>
		</tr>
		<tr>
			<td>
				<font>��й�ȣ: </font>
			</td>
			<td>
				<input type=password name=password size=20 maxlength=12>
			</td>
		</tr>
		<tr>
			<td>
				<input type=submit value="ȸ�� ����">
			</td>
			<td>
				<input type=reset value="���">
			</td>
		</tr>
	</table>
</form>
</body>
</html>

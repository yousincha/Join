<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ȸ������ ����</title>
<style>
 #box { border : 1px solid gold;
     width : 200px;
     background-color : white;
     padding : 8px;
 }
 
input[type=submit] {
  width: 150px;
  background-color: orange;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
</style>
</head>
<body>
<h2>�����ϰ� ���� �̸��� �Է��ϼ���.</h2>
<div id="box">
<form method="post" action="updatePro.jsp">
  ���̵�:<input type="text" name="id"><br>
  �н�����:<input type="password" name="passwd"><br>
  �̸�:<input type="text" name="name"><br>
      <input type="submit" value="Ȯ��">

</form>
<form method="post" action="insertForm.jsp">
      <input type="submit" value="���">
</form>
</div>
</body>
</html>
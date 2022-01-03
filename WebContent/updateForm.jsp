<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원정보 수정</title>
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
<h2>수정하고 싶은 이름을 입력하세요.</h2>
<div id="box">
<form method="post" action="updatePro.jsp">
  아이디:<input type="text" name="id"><br>
  패스워드:<input type="password" name="passwd"><br>
  이름:<input type="text" name="name"><br>
      <input type="submit" value="확인">

</form>
<form method="post" action="insertForm.jsp">
      <input type="submit" value="취소">
</form>
</div>
</body>
</html>
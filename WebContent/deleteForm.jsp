<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원정보 삭제</title>
 <style>

 #box { border : 1px solid skyblue;
     width : 200px;
     background-color : white;
     padding : 8px;
 }
 
input[type=submit] {
  width: 150px;
  background-color: skyblue;
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
<h2>삭제하고 싶은 아이디를 입력해주세요</h2>
<div id="box">
<form method="post" action="deletePro.jsp">
 아이디:<input type="text" name="id"><br>
비밀번호:<input type="password" name="passwd"><br>
<input type="submit" value="확인">
</form>
</body>
</html>
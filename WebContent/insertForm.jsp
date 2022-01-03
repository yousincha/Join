<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.css">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원가입</title>
<style>
 #box { border : 1px solid skyblue;
     width : 350px;
     background-color : white;
     padding : 15px;
 }
 
 input[type=text], select {
  width: 300px;
  padding: 12px 20px;
  margin: 8px 0;
  border: 1px solid #ccc;
  border-radius: 4px;
} 


input[type=submit] {
  width: 150px;
  background-color: pink;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
h2{
 color:purple;
}
 
</style>
</head>
<body>
   <h2>추가 할 회원정보를 입력 해주세요!</h2>
   <div id="box">
   <form action="insertPro.jsp" method="post"><br>
      아이디:<input type="text" name="id"><br>
      패스워드:<input type="password" name="passwd"><br>
      이름:<input type="text" name="name"><br>
   취미<br>
  <input type='checkbox' name='hobby' value='Movie' />영화 관람<br>
  <input type='checkbox' name='hobby' value='Exercise' />운동/헬스<br>
  <input type='checkbox' name='hobby' value='Travel' />여행<br>
  <input type='checkbox' name='hobby' value='Study' />공부<br>
  <input type='checkbox' name='hobby' value='Listening to music' />음악감상<br>
      <input type="submit" value="입력완료">
   </form>
   </div>
</body>
</html>
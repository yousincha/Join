<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("EUC-KR"); %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입 완료</title>
</head>
<body>
   <form action="updateForm.jsp" method="post"><br>
<input type="submit" value="수정">
</form>
   <% 
      String id=request.getParameter("id");
      String passwd=request.getParameter("passwd");
      String name=request.getParameter("name");
      Timestamp reg_date=new Timestamp(System.currentTimeMillis());
      String hob="";
      String ho[]=request.getParameterValues("hobby");
      
      Connection conn=null;
      PreparedStatement pstmt=null;
      String str="";
      
      for(int i=0;i<ho.length;i++){
         hob+=ho[i]+" ";
      }
      
      
      try{
         String url="jdbc:mysql://localhost:3306/bdb?serverTimezone=UTC";
         String dbId="root";
         String dbPass="1234";
         Class.forName("com.mysql.cj.jdbc.Driver");
         conn=DriverManager.getConnection(url,dbId,dbPass);
         
         String sql="insert into tbl_member values(?,?,?,?,?)";
         pstmt=conn.prepareStatement(sql);
         pstmt.setString(1, id);
         pstmt.setString(2, passwd);
         pstmt.setString(3, name);         
         pstmt.setTimestamp(4, reg_date);
         pstmt.setString(5,hob);
         pstmt.executeUpdate();
         str="회원가입 성공 됐습니다. ";
      }
      
      catch(Exception e){
         e.printStackTrace();
      }
   %>
   <%=str %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("EUC-KR"); %>
<%
   String id=request.getParameter("id");
   String passwd=request.getParameter("passwd");
   
   Connection conn=null;
   PreparedStatement pstmt=null;
   ResultSet rs=null;
   

   try{
       String url="jdbc:mysql://localhost:3306/bdb?serverTimezone=UTC";
         String dbId="root";
         String dbPass="1234";
         Class.forName("com.mysql.cj.jdbc.Driver");
         conn=DriverManager.getConnection(url,dbId,dbPass);
      
         String sql="select id, passwd from tbl_member where id=?";
         pstmt=conn.prepareStatement(sql);
         pstmt.setString(1,id);
         rs=pstmt.executeQuery();
         
         if(rs.next()){
            String rId=rs.getString("id");
            String rPasswd=rs.getString("passwd");
            if(id.equals(rId)&&passwd.equals(rPasswd)){
               sql="delete from tbl_member where id=?";
               pstmt=conn.prepareStatement(sql);
               pstmt.setString(1,id);
               pstmt.executeUpdate();
               
            }
         }
         
   }catch(Exception e){
      
      
   }

%>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>삭제하고 싶은 정보를 입력해주세요</title>
</head>
<body>
삭제되었습니다
</body>
</html>
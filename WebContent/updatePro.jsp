<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ page import="java.sql.*" %>
 <% request.setCharacterEncoding("euc-kr");%>
 
 <% 
 	String id=request.getParameter("id");
 	String passwd=request.getParameter("passwd");
 	String name=request.getParameter("name");
 	
 	 Connection conn=null;
     PreparedStatement pstmt=null;
     ResultSet rs=null;
     
     try{
		 String url="jdbc:mysql://localhost:3306/bdb?serverTimezone=UTC";
         String dbId="root";
         String dbPass="1234";
         Class.forName("com.mysql.cj.jdbc.Driver");
         conn=DriverManager.getConnection(url,dbId,dbPass);
        
         String sql="select id,passwd from tbl_member where id=?";
         pstmt=conn.prepareStatement(sql);
         pstmt.setString(1, id);
         rs=pstmt.executeQuery();
         System.out.print("test rs:"+rs);
         
         if(rs.next()){
        	String rId=rs.getString("id");
        	System.out.print("rId"+rId);
        	String rPasswd=rs.getString("passwd");
        	if(id.equals(rId)&&passwd.equals(rPasswd)){
        		sql="update tbl_member set name=? where id=? and passwd=?";
        		pstmt=conn.prepareStatement(sql);
        		pstmt.setString(1,name);
                pstmt.setString(2,id);
                pstmt.setString(3,passwd);
                pstmt.executeUpdate();
        	}
         }
     
     	}catch(Exception e){
 		e.printStackTrace();
 		
 	}
 %>
 
 
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원정보 수정 성공!</title>
</head>
<body>
수정이 완료 되었습니다.
</body>
</html>
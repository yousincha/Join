<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원정보 리스트</title>
<style>
	table,tr,td{
	border:1px solid pink;
	border-collapse:collapse;
	}
	th, td {
  border-bottom: 1px solid #ddd;
}
th {
  background-color: pink;
  color: white;
}
tr:hover {background-color: #fff294;}
th{
text-align: center;
}

</style>
</head>
<body>
<h2>테이블 멤버 화면에 표시</h2>
<table>
<tr>
<th>아이디</th><th>패스워드</th>
<th>이름</th><th>가입날짜</th><th>취미</th>
</tr>

<%
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	
	try{
		 String url="jdbc:mysql://localhost:3306/bdb?serverTimezone=UTC";
         String dbId="root";
         String dbPass="1234";
         Class.forName("com.mysql.cj.jdbc.Driver");
         conn=DriverManager.getConnection(url,dbId,dbPass);
        
         
         String sql="select* from tbl_member";
         pstmt=conn.prepareStatement(sql);
         rs=pstmt.executeQuery();
         
         while(rs.next()){
        	 String id=rs.getString("id");
        	 String passwd=rs.getString("passwd");
        	 String name=rs.getString("name");
        	 Timestamp reg_date=rs.getTimestamp("reg_date");
        	 String hobby=rs.getString("hobby");
         
 %>
 <tr>
 	<td><%=id %></td> <td><%=passwd %></td>
 	<td><%=name %></td><td><%=reg_date%></td><td><%=hobby%></td> 
 </tr>
 
 <% } 
	}catch(Exception e){
		e.printStackTrace();
		
	}

%>
</table>

</body>
</html>
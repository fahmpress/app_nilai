<html>
<%@ page language="java" import="java.sql.*" %>
<%
ResultSet myResultSet=null;
String nip=request.getParameter("nip");
String alamat=request.getParameter("alamat");
String no_hp=request.getParameter("no_hp");
String email=request.getParameter("email");
Class.forName("org.gjt.mm.mysql.Driver");
Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_tugas_akhir", "root", "");
Statement stmt=myConn.createStatement();
String kueri="UPDATE tb_dosen SET alamat='"+alamat+"',no_hp='"+no_hp+"',email='"+email+"' where nip="+nip;
int edittabel=stmt.executeUpdate(kueri);
response.sendRedirect("dosen_home.jsp?link=home");
%>
</html>

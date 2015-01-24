<html>
<%@ page language="java" import="java.sql.*" %>
<%
ResultSet myResultSet=null;
String kd_matkul=request.getParameter("kd_matkul");
String nm_matkul=request.getParameter("nm_matkul");
String sks=request.getParameter("sks");
String semester=request.getParameter("semester");
String nip=request.getParameter("nip");
String kd_jurusan=request.getParameter("kd_jurusan");

Class.forName("org.gjt.mm.mysql.Driver");
Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_tugas_akhir", "root", "");
Statement stmt=myConn.createStatement();
String kueri="insert into tb_mahasiswa SET kd_matkul='"+nim+"', nm_mhs='"+nama+"', kd_jurusan='"+jur+"', thn_masuk='"+angkatan+"', tmpt_lahir='"+tmpt_lhr+"', tgl_lahir='"+tgl_lahir+"', bln_lahir='"+bln_lahir+"', thn_lahir='"+thn_lahir+"', jk='"+jk+"', alamat='"+alamat+"',no_hp='"+no_hp+"',email='"+email+"', username='"+nim+"', password='"+tgl_lahir+bln_lahir+thn_lahir+"', foto=''";
int edittabel=stmt.executeUpdate(kueri);
response.sendRedirect("admin_home.jsp?link=mahasiswa");
%>
</html>

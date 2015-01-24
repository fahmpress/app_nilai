<%@ page import="java.sql.*,java.util.*,java.text.*,java.text.SimpleDateFormat" %>
<%@ page import="java.sql.*" %>

<%
String nim ="";
String nm_mhs ="";
String bayar ="";
if ((String)session.getAttribute("sessionusername")==null && (String)session.getAttribute("sessionpassword")==null){
response.sendRedirect("index.jsp");
}
String username = (String)session.getAttribute("sessionusername");
String password = (String)session.getAttribute("sessionpassword");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_tugas_akhir", "root", "");
Statement st = con.createStatement();

ResultSet rs = st.executeQuery("select tb_mahasiswa.nim, nm_mhs, tb_bayaran.bayar, tb_jurusan.nm_jurusan from tb_mahasiswa, tb_bayaran, tb_jurusan where tb_mahasiswa.nim=tb_bayaran.nim and tb_mahasiswa.kd_jurusan=tb_jurusan.kd_jurusan");
if (rs.next ())
{
nim = rs.getString("nim");
nm_mhs = rs.getString("nm_mhs");
bayar = rs.getString("bayar");
}
%>
<html>
    
    <body>
        <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header">Laporan Data Bayaran Mahasiswa</h3>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
            </div>
        
                
               <div class="row">                
                <div class="col-lg-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Filter data berdasarkan Jurusan
                        </div>
                         <div class="panel-body">
                            <form role="form" method="post" action="pimpinan_home.jsp?link=bayar_jur_tampil">
                            <div class="form-group">
                                <label>Jurusan</label>
                                    <select class="form-control" name="jurusan">
                                        <option selected></option>
                                        <option value="11">Admin</option>
                                        <option value="21">Mesin</option>
                                        <option value="31">Tekom</option>
                                        <option value="32">TKJ</option>
                                        <option value="41">Sipil</option>
                                        
                                                                               
                                </select>
                            </div>
                            <button type="submit" class="btn btn-default">Submit</button>
                            <button type="reset" class="btn btn-default">Reset</button>
                            </form>
                         </div>
                    </div>
                </div>
                
               </div>
		
</body>
</html>

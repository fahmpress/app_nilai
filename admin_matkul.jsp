<%@ page import="java.sql.*,java.util.*,java.text.*,java.text.SimpleDateFormat" %>
<%@ page import="java.sql.*" %>

<%
String kd_matkul ="";
String nm_matkul ="";
String sks ="";
String semester ="";
String nip ="";
String kd_jurusan ="";
if ((String)session.getAttribute("sessionusername")==null && (String)session.getAttribute("sessionpassword")==null){
response.sendRedirect("index.jsp");
}
String username = (String)session.getAttribute("sessionusername");
String password = (String)session.getAttribute("sessionpassword");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_tugas_akhir", "root", "");
Statement st = con.createStatement();

ResultSet rs = st.executeQuery("SELECT * from tb_matkul, tb_dosen where tb_mahasiswa.kd_jurusan=tb_jurusan.kd_jurusan");
if (rs.next ())
{
kd_matkul = rs.getString("kd_matkul");
nm_matkul = rs.getString("nm_matkul");
sks = rs.getString("sks");
semester = rs.getString("semester");
nip = rs.getString("nip");
kd_jurusan = rs.getString("kd_jurusan");
}
%>
<html>
    
    <body>
        <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header">Edit Data Mahasiswa</h3>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
            </div>
        
                
               <div class="row">
                <div class="col-lg-4">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <center>
                            <a href="admin_home.jsp?link=tambah"><i class="fa fa-file"></i> Tambah data Mahasiswa</a>
                            </center>
                         </div>
                    </div>
                </div>
                
                            <button type="submit" class="btn btn-default">Submit</button>
                            <button type="reset" class="btn btn-default">Reset</button>
                            </form>
                         </div>
                    </div>
                </div>
               </div>
    <script>
    $("#commentForm").validate();
    </script>	
</body>
</html>

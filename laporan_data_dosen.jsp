<%@ page import="java.sql.*,java.util.*,java.text.*,java.text.SimpleDateFormat" %>
<%@ page import="java.sql.*" %>

<%
{
}
String username = (String)session.getAttribute("sessionusername");
String password = (String)session.getAttribute("sessionpassword");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_tugas_akhir", "root", "");
Statement st = con.createStatement();
%>
<html>
    
    <body>
        <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header">Daftar Dosen <b></b></h3>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
            </div>
        
        <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                        <th><center>NIP</center></th>
                                        <th><center>NAMA</center></th>
                                        <th><center>MATA KULIAH</center></th>
                                        <th><center>JENIS KELAMIN</center></th>
                                        <th><center>ALAMAT</center></th>
                                        <th><center>NO HP</center></th>
                                        <th><center>EMAIL</center></th>
                                        </tr>
                                        <tr>
                                        <%
                                        ResultSet rs = st.executeQuery("select tb_dosen.nip, nm_dosen, tb_matkul.nm_matkul, tb_dosen.jk, alamat, no_hp, email from tb_dosen, tb_matkul where tb_dosen.nip=tb_matkul.nip");
                                        while (rs.next()) {
                                        out.println("<tr>");
                                        out.println("<td><center>" + rs.getString ("nip") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("nm_dosen") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("nm_matkul") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("jk") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("alamat") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("no_hp") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("email") + "</center></td>");
                                        }
                                        rs.close();
                                        %>
                                        </tr>
                                    </thead>
                                </table>
                            </div>
			</div>
                    </div>
		</div>
        </div>
		
</body>
</html>

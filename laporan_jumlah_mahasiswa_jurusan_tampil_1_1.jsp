<%@ page import="java.sql.*,java.util.*,java.text.*,java.text.SimpleDateFormat" %>
<%@ page import="java.sql.*" %>

<%
String jur=request.getParameter("jurusan");
String akt=request.getParameter("angkatan");
String nim=request.getParameter("nim");
String nm_mhs=request.getParameter("nama");
String akt2="";
int jumlah_mahasiswa =0;
if ((String)session.getAttribute("sessionusername")==null && (String)session.getAttribute("sessionpassword")==null){
response.sendRedirect("index.jsp");
}
String username = (String)session.getAttribute("sessionusername");
String password = (String)session.getAttribute("sessionpassword");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_tugas_akhir", "root", "");
Statement st = con.createStatement();
ResultSet rs2 = st.executeQuery("SELECT * from tb_mahasiswa, tb_jurusan where tb_mahasiswa.kd_jurusan=tb_jurusan.kd_jurusan and tb_mahasiswa.thn_masuk='"+akt+"'");
while (rs2.next()) {
akt2=rs2.getString ("thn_masuk");
}
%>
<html>
    
    <body>
        <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header">Daftar Mahasiswa<b> <%=akt2%></b></h3>
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
                                        <th><center>NIM</center></th>
                                        <th><center>NAMA</center></th>
                                        <th><center>ANGKATAN</center></th>
                                         <th><center>DETAIL</center></th>
                                        </tr>
                                        <tr>
                                        <%
                                        ResultSet rs = st.executeQuery("SELECT * from tb_mahasiswa, tb_jurusan where tb_mahasiswa.kd_jurusan=tb_jurusan.kd_jurusan and tb_mahasiswa.thn_masuk='"+akt+"'");
                                        while (rs.next()) {
                                        out.println("<tr>");
                                        out.println("<td><center>" + rs.getString ("nim") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("nm_mhs") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("thn_masuk") + "</center></td>");
                                       
                                        out.println("<td><center><form role='form' method='post' action='pimpinan_home.jsp?link=detail&&nim="+ rs.getString ("nim") +"'><div class='tooltip-demo'><button type='submit' class='btn btn-default' data-toggle='tooltip' data-placement='top' title='detail'><i class='fa fa-share'></i></button></div></form>");
                                        }
                                        rs.close();
                                        %>
                                        
                                        <tr>
						<% 
						ResultSet rsa1 = st.executeQuery("select count(nm_mhs) as jumlah_mahasiswa from tb_mahasiswa,tb_jurusan where tb_jurusan.kd_jurusan=tb_mahasiswa.kd_jurusan and tb_mahasiswa.thn_masuk='"+akt+"'");
						if (rsa1.next ())
						{
                                                jumlah_mahasiswa = rsa1.getInt("jumlah_mahasiswa");
                                                }
						%>	
						<th></th>
                                                <th></th>
                                                <th><right>TOTAL SEMUA MAHASISWA</right></th>
						<th><center><%=jumlah_mahasiswa%> ORANG </center></th>
						</tr>
                                          
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

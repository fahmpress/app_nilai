<%@ page import="java.sql.*,java.util.*,java.text.*,java.text.SimpleDateFormat" %>
<%@ page import="java.sql.*" %>

<%
 DecimalFormat df = new DecimalFormat("###,###,###");
 
String jur=request.getParameter("jurusan");
String akt=request.getParameter("angkatan");
String nim=request.getParameter("nim");
String jur2="";
int sub_bayar =0;

if ((String)session.getAttribute("sessionusername")==null && (String)session.getAttribute("sessionpassword")==null){
response.sendRedirect("index.jsp");
}
String username = (String)session.getAttribute("sessionusername");
String password = (String)session.getAttribute("sessionpassword");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_tugas_akhir", "root", "");
Statement st = con.createStatement();
ResultSet rs2 = st.executeQuery("SELECT * from tb_mahasiswa, tb_jurusan where tb_mahasiswa.kd_jurusan=tb_jurusan.kd_jurusan and tb_jurusan.kd_jurusan='"+jur+"' and thn_masuk='"+akt+"'");
while (rs2.next()) {
jur2=rs2.getString("nm_jurusan");
}
%>
<html>
    
    <body>
        <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header">Data Pembayaran Semester Mahasiswa <b><%=jur2%> <%=akt%></b></h3>
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
                                        <th><center>SEMESTER</center></th>
                                        <th><center>BAYAR</center></th>
                                        
                                        </tr>
                                        <tr>
                                        <%
                                        ResultSet rs = st.executeQuery("SELECT * from tb_mahasiswa, tb_bayaran, tb_jurusan where tb_mahasiswa.nim=tb_bayaran.nim and tb_mahasiswa.kd_jurusan=tb_jurusan.kd_jurusan and tb_jurusan.kd_jurusan='"+jur+"' and thn_masuk='"+akt+"'");
                                        while (rs.next()) {
                                        out.println("<tr>");
                                        out.println("<td><center>" + rs.getString ("nim") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("nm_mhs") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("semester") + "</center></td>");
                                        sub_bayar = rs.getInt("bayar");
                                        out.println("<td><center>Rp. " + df.format(sub_bayar) + "</center></td>");                                                                     
                                         }
                                        rs.close();
                                        %>
                                        
                                        <tr>
                                            <% 
						ResultSet rsa1 = st.executeQuery("select sum(bayar) as sub_bayar from tb_bayaran,tb_jurusan, tb_mahasiswa where tb_jurusan.kd_jurusan=tb_mahasiswa.kd_jurusan and tb_mahasiswa.nim=tb_bayaran.nim and tb_mahasiswa.thn_masuk='"+akt+"' and tb_jurusan.kd_jurusan='"+jur+"'");
						if (rsa1.next ())
						{
                                                sub_bayar = rsa1.getInt("sub_bayar");
                                                }
						%>	
						<th></th>
                                                <th></th>
                                                <th><right>TOTAL SEMUA BAYARAN</right></th>
						<th><center>Rp. <%=df.format(sub_bayar)%> </center></th>
                                        </tr>
                                      
                                    </thead>
                                </table>
                            </div>
			</div>
                    </div>
		</div>
        </div>
                  <div class="col-lg-6">
                 <a class="btn btn-primary" href="#" onClick="window.print();">Cetak</a>
                 </div>
		
</body>
</html>

<%@ page import="java.sql.*,java.util.*,java.text.*,java.text.SimpleDateFormat" %>
<%@ page import="java.sql.*" %>

<%
    
    NumberFormat nf = NumberFormat.getInstance();
    nf.setMaximumFractionDigits(2);
    nf.setMinimumFractionDigits(2);
    
String nim ="";
String nm_mhs ="";
String semester ="";
String bayar ="";
int sub_bayar =0;

if ((String)session.getAttribute("sessionusername")==null && (String)session.getAttribute("sessionpassword")==null){
response.sendRedirect("index.jsp");
}
String username = (String)session.getAttribute("sessionusername");
String password = (String)session.getAttribute("sessionpassword");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_tugas_akhir", "root", "");
Statement st = con.createStatement();

ResultSet rs = st.executeQuery("SELECT * from tb_mahasiswa, tb_bayaran where tb_mahasiswa.nim=tb_bayaran.nim");
if (rs.next ())
{
nim = rs.getString("nim");
nm_mhs = rs.getString("nm_mhs");
semester = rs.getString("semester");
bayar = rs.getString("bayar");
}
%>
<html>
    
    <body>
        <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                       <h3 class="page-header">Jumlah Total Keuangan</h3>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
            </div>         
                                        
                                   		
        						<table class="table table-striped table-bordered table-hover">
										<thead>
											<tr>
												<th><center>NIM</center></th>
												<th><center>Nama</center></th>
												<th><center>Semester</center></th>
												<th><center>Bayar</center></th>
											</tr>
										</thead>
										<tbody>
                                                                                    
                                                                                                
                                                                                    <%
                                                                                                ResultSet rs1 = st.executeQuery("select * from tb_mahasiswa, tb_bayaran where tb_mahasiswa.nim=tb_bayaran.nim and tb_bayaran.bayar");
												while (rs1.next()) {
												out.println("<tr>");
												out.println("<td><center>" + rs1.getString ("nim") + "</center></td>");
												out.println("<td><center>" + rs1.getString ("nm_mhs") + "</center></td>");
                                                                                                out.println("<td><center>" + rs1.getString ("semester") + "</center></td>");
                                                                                                out.println("<td><center>Rp. " + rs1.getString ("bayar") + "</center></td>");                                                                                   
                                                                                             	}
                                                                                                rs1.close();
												%>
											<tr>
												<% 
												ResultSet rsa1 = st.executeQuery("select sum(bayar) as sub_bayar from tb_bayaran");
												if (rsa1.next ())
												{
                                                                                               sub_bayar = rsa1.getInt("sub_bayar");
												}
												%>	
												<th></th>
                                                                                                <th></th>
												<th><right>TOTAL SEMUA PEMBAYARAN</right></th>
												<th><center>Rp. <%=sub_bayar%></center></th>
													</tr>
										</tbody>
									</table>
                  <div class="col-lg-6">
                 <a class="btn btn-primary" href="#" onClick="window.print();">Cetak</a>
                 </div>
								</div>
							</div>
                    </div>
	</div>
       	
</body>
</html>

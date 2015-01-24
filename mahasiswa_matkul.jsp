<%@ page import="java.sql.*,java.util.*,java.text.*,java.text.SimpleDateFormat" %>
<%@ page import="java.sql.*" %>

<%
String nim ="";
String nm_mhs ="";
String jurusan ="";
String thn_masuk ="";
String semester ="";

if ((String)session.getAttribute("sessionusername")==null && (String)session.getAttribute("sessionpassword")==null){
response.sendRedirect("index.jsp");
}
String username = (String)session.getAttribute("sessionusername");
String password = (String)session.getAttribute("sessionpassword");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_tugas_akhir", "root", "");
Statement st = con.createStatement();

ResultSet rs = st.executeQuery("SELECT * from tb_mahasiswa, tb_jurusan where tb_mahasiswa.kd_jurusan=tb_jurusan.kd_jurusan and username='"+username+"' and password='"+password+"'");
if (rs.next ())
{
nim = rs.getString("nim");
nm_mhs = rs.getString("nm_mhs");
jurusan = rs.getString("kd_jurusan");
thn_masuk = rs.getString("thn_masuk");
}
%>
<html>
    
    <body>
        <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                       <h3 class="page-header">Mata Kuliah</h3>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
            </div>
        
        
                        <div class="panel-body">
                            <div class="panel-group" id="accordion">
                                
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#1">Semester 1</a>
                                        </h4>
                                    </div>
                                    <div id="1" class="panel-collapse collapse in">
                                        <div class="panel-body">
                                            <div class="table-responsive">
									<table class="table table-striped table-bordered table-hover">
										<thead>
											<tr>
												<th><center>Kode</center></th>
												<th>Mata Kuliah</th>
												<th><center>SKS</center></th>
												<th><center>Dosen</center></th>
											</tr>
										</thead>
										<tbody>
												<%
                                                                                                String sks="";
                                                                                                ResultSet rs1 = st.executeQuery("select * from tb_matkul, tb_jurusan, tb_dosen where tb_jurusan.kd_jurusan=tb_matkul.kd_jurusan and tb_dosen.nip=tb_matkul.nip and tb_matkul.semester='"+1+"' and tb_jurusan.kd_jurusan='"+jurusan+"'");
												while (rs1.next()) {
												out.println("<tr>");
												out.println("<td><center>" + rs1.getString ("kd_matkul") + "</center></td>");
												out.println("<td>" + rs1.getString ("nm_matkul") + "</td>");
                                                                                                out.println("<td><center>" + rs1.getString ("sks") + "</center></td>");
                                                                                                out.println("<td><center><a href='mahasiswa_home.jsp?link=dosen_detail&&nip="+ rs1.getString ("nip") +"'>" + rs1.getString ("nm_dosen") + "</a></center></td>");
                                                                                                   
                                                                                                out.println("</tr>");
												}
                                                                                                rs1.close();
												%>
											<tr>
												
											</tr>
										</tbody>
									</table>
								</div>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#2">Semester 2</a>
                                        </h4>
                                    </div>
                                    <div id="2" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <div class="table-responsive">
									<table class="table table-striped table-bordered table-hover">
										<thead>
											<tr>
												<th><center>Kode</center></th>
												<th>Mata Kuliah</th>
												<th><center>SKS</center></th>
												<th><center>Dosen</center></th>
											</tr>
										</thead>
										<tbody>
												<%
                                                                                                ResultSet rs2 = st.executeQuery("select * from tb_matkul, tb_jurusan, tb_dosen where tb_jurusan.kd_jurusan=tb_matkul.kd_jurusan and tb_dosen.nip=tb_matkul.nip and tb_matkul.semester='"+2+"' and tb_jurusan.kd_jurusan='"+jurusan+"'");
                                                                                                while (rs2.next()) {
												out.println("<tr>");
												out.println("<td><center>" + rs2.getString ("kd_matkul") + "</center></td>");
												out.println("<td>" + rs2.getString ("nm_matkul") + "</td>");
                                                                                                out.println("<td><center>" + rs2.getString ("sks") + "</center></td>");
                                                                                                out.println("<td><center><a href='mahasiswa_home.jsp?link=dosen_detail&&nip="+ rs2.getString ("nip") +"'>" + rs2.getString ("nm_dosen") + "</a></center></td>");
                                                                                                   
                                                                                                out.println("</tr>");
												}
                                                                                                rs2.close();
												%>
											<tr>
												
											</tr>
										</tbody>
									</table>
								</div>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#3">Semester 3</a>
                                        </h4>
                                    </div>
                                    <div id="3" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <div class="table-responsive">
									<table class="table table-striped table-bordered table-hover">
										<thead>
											<tr>
												<th><center>Kode</center></th>
												<th>Mata Kuliah</th>
												<th><center>SKS</center></th>
												<th><center>Dosen</center></th>
											</tr>
										</thead>
										<tbody>
												<%
                                                                                                ResultSet rs3 = st.executeQuery("select * from tb_matkul, tb_jurusan, tb_dosen where tb_jurusan.kd_jurusan=tb_matkul.kd_jurusan and tb_dosen.nip=tb_matkul.nip and tb_matkul.semester='"+3+"' and tb_jurusan.kd_jurusan='"+jurusan+"'");
                                                                                                while (rs3.next()) {
												out.println("<tr>");
												out.println("<td><center>" + rs3.getString ("kd_matkul") + "</center></td>");
												out.println("<td>" + rs3.getString ("nm_matkul") + "</td>");
                                                                                                out.println("<td><center>" + rs3.getString ("sks") + "</center></td>");
                                                                                                out.println("<td><center><a href='mahasiswa_home.jsp?link=dosen_detail&&nip="+ rs3.getString ("nip") +"'>" + rs3.getString ("nm_dosen") + "</a></center></td>");
                                                                                                   
                                                                                                out.println("</tr>");
												}
                                                                                                rs3.close();
												%>
											<tr>
												
											</tr>
										</tbody>
									</table>
								</div>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#4">Semester 4</a>
                                        </h4>
                                    </div>
                                    <div id="4" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <div class="table-responsive">
									<table class="table table-striped table-bordered table-hover">
										<thead>
											<tr>
												<th><center>Kode</center></th>
												<th>Mata Kuliah</th>
												<th><center>SKS</center></th>
												<th><center>Dosen</center></th>
											</tr>
										</thead>
										<tbody>
												<%
                                                                                                ResultSet rs4 = st.executeQuery("select * from tb_matkul, tb_jurusan, tb_dosen where tb_jurusan.kd_jurusan=tb_matkul.kd_jurusan and tb_dosen.nip=tb_matkul.nip and tb_matkul.semester='"+4+"' and tb_jurusan.kd_jurusan='"+jurusan+"'");
                                                                                                while (rs4.next()) {
												out.println("<tr>");
												out.println("<td><center>" + rs4.getString ("kd_matkul") + "</center></td>");
												out.println("<td>" + rs4.getString ("nm_matkul") + "</td>");
                                                                                                out.println("<td><center>" + rs4.getString ("sks") + "</center></td>");
                                                                                                out.println("<td><center><a href='mahasiswa_home.jsp?link=dosen_detail&&nip="+ rs4.getString ("nip") +"'>" + rs4.getString ("nm_dosen") + "</a></center></td>");
                                                                                                   
                                                                                                out.println("</tr>");
												}
                                                                                                rs4.close();
												%>
											<tr>
												
											</tr>
										</tbody>
									</table>
								</div>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#5">Semester 5</a>
                                        </h4>
                                    </div>
                                    <div id="5" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <div class="table-responsive">
									<table class="table table-striped table-bordered table-hover">
										<thead>
											<tr>
												<th><center>Kode</center></th>
												<th>Mata Kuliah</th>
												<th><center>SKS</center></th>
												<th><center>Dosen</center></th>
											</tr>
										</thead>
										<tbody>
												<%
                                                                                                ResultSet rs5 = st.executeQuery("select * from tb_matkul, tb_jurusan, tb_dosen where tb_jurusan.kd_jurusan=tb_matkul.kd_jurusan and tb_dosen.nip=tb_matkul.nip and tb_matkul.semester='"+5+"' and tb_jurusan.kd_jurusan='"+jurusan+"'");
                                                                                                while (rs5.next()) {
												out.println("<tr>");
												out.println("<td><center>" + rs5.getString ("kd_matkul") + "</center></td>");
												out.println("<td>" + rs5.getString ("nm_matkul") + "</td>");
                                                                                                out.println("<td><center>" + rs5.getString ("sks") + "</center></td>");
                                                                                                out.println("<td><center><a href='mahasiswa_home.jsp?link=dosen_detail&&nip="+ rs5.getString ("nip") +"'>" + rs5.getString ("nm_dosen") + "</a></center></td>");
                                                                                                   
                                                                                                out.println("</tr>");
												}
                                                                                                rs5.close();
												%>
											<tr>
												
											</tr>
										</tbody>
									</table>
								</div>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#6">Semester 6</a>
                                        </h4>
                                    </div>
                                    <div id="6" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <div class="table-responsive">
									<table class="table table-striped table-bordered table-hover">
										<thead>
											<tr>
												<th><center>Kode</center></th>
												<th>Mata Kuliah</th>
												<th><center>SKS</center></th>
												<th><center>Dosen</center></th>
											</tr>
										</thead>
										<tbody>
												<%
                                                                                                ResultSet rs6 = st.executeQuery("select * from tb_matkul, tb_jurusan, tb_dosen where tb_jurusan.kd_jurusan=tb_matkul.kd_jurusan and tb_dosen.nip=tb_matkul.nip and tb_matkul.semester='"+6+"' and tb_jurusan.kd_jurusan='"+jurusan+"'");
                                                                                                while (rs6.next()) {
												out.println("<tr>");
												out.println("<td><center>" + rs6.getString ("kd_matkul") + "</center></td>");
												out.println("<td>" + rs6.getString ("nm_matkul") + "</td>");
                                                                                                out.println("<td><center>" + rs6.getString ("sks") + "</center></td>");
                                                                                                out.println("<td><center><a href='mahasiswa_home.jsp?link=dosen_detail&&nip="+ rs6.getString ("nip") +"'>" + rs6.getString ("nm_dosen") + "</a></center></td>");
                                                                                                   
                                                                                                out.println("</tr>");
												}
                                                                                                rs6.close();
												%>
											<tr>
												
											</tr>
										</tbody>
									</table>
								</div>
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                        </div>
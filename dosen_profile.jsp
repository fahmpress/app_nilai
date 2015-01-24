<%@ page import="java.sql.*,java.util.*,java.text.*,java.text.SimpleDateFormat" %>
<%@ page import="java.sql.*" %>

<%
String nip ="";
String nm_dosen ="";
String jk ="";
String tmpt_lahir ="";
String tgl_lahir ="";
String bln_lahir ="";
String thn_lahir ="";  
String alamat ="";
String no_hp ="";
String email ="";
String foto ="";
if ((String)session.getAttribute("sessionusername")==null && (String)session.getAttribute("sessionpassword")==null){
response.sendRedirect("index.jsp");
}
String username = (String)session.getAttribute("sessionusername");
String password = (String)session.getAttribute("sessionpassword");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_tugas_akhir", "root", "");
Statement st = con.createStatement();

ResultSet rs = st.executeQuery("SELECT * from tb_dosen where username='"+username+"' and password='"+password+"'");
if (rs.next ())
{
nip = rs.getString("nip");
nm_dosen = rs.getString("nm_dosen");
jk = rs.getString("jk");
tmpt_lahir = rs.getString("tmpt_lahir");
tgl_lahir = rs.getString("tgl_lahir");
bln_lahir = rs.getString("bln_lahir");
thn_lahir = rs.getString("thn_lahir");
alamat = rs.getString("alamat");
no_hp = rs.getString("no_hp");
email = rs.getString("email");
foto = rs.getString("foto");
}
%><!DOCTYPE html>
<html>
    
    <body>
        <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header">Halaman Dosen</h3>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
            </div>
        <div class="row">
                <div class="col-lg-8">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                              <i class="fa fa-user"></i> Data Dosen
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <td><img class="profile-img" src="<%=foto%>" ></td>
                                                
                                                <td>
                                                    <b>NIP  </b><br /><br />
                                                    <b>NAMA  </b><br /><br />
                                                    <b>TTL  </b><br /><br />
                                                    <b>GENDER  </b><br /><br />
                                                    <b>ALAMAT  </b><br /><br />
                                                    <b>NO HP  </b><br /><br />
                                                    <b>EMAIL  </b><br /><br />
                                                    <b></b><br /><br />
                                                </td>
                                                <td>
                                                    : <%=nip%> <br /><br />
                                                    : <%=nm_dosen%> <br /><br />
                                                    : <%=jk%> <br /><br />
                                                    : <%=tmpt_lahir%>, <%=tgl_lahir%>-<%=bln_lahir%>-<%=thn_lahir%> <br /><br />
                                                    : <%=alamat%> <br /><br />
                                                    : <%=no_hp%> <br /><br />
                                                    : <%=email%> <br /><br />
                                                    <a href="dosen_home.jsp?link=profile"><i class="fa fa-pencil"></i> Edit data</a> <br /><br />
                                                </td>
                                                </tr>
                                    </thead>
                                </table>
                            </div>
                            <!-- /.table-responsive -->
                        </div>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-4 -->
            </div>
    </body>
</html>

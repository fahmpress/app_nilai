<%@ page import="java.sql.*,java.util.*,java.text.*,java.text.SimpleDateFormat" %>
<%@ page import="java.sql.*" %>

<%
if ((String)session.getAttribute("sessionusername")==null && (String)session.getAttribute("sessionpassword")==null){
response.sendRedirect("index.jsp");
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
                        <h3 class="page-header">Mata Kuliah</h3>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                
        </div>
        	
        <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="table-responsive">
				<table class="table table-striped table-bordered table-hover">
                                    <thead>
					<tr>
                                            <th><center>KODE</center></th>
                                            <th><center>MATA KULIAH</center></th>
                                            <th><center>SEMESTER</center></th>
                                            <th><center>SKS</center></th>
                                            <th><center>JURUSAN</center></th>
					</tr>
                                    </thead>
                                    <tbody>
					<%
                                        ResultSet rs = st.executeQuery("select * from tb_dosen, tb_matkul, tb_jurusan where tb_dosen.nip=tb_matkul.nip and tb_matkul.kd_jurusan=tb_jurusan.kd_jurusan and tb_dosen.username='"+username+"'"); 
                                        while (rs.next()) {
					out.println("<tr>");
					out.println("<td><center>" + rs.getString ("kd_matkul") + "</center></td>");
                                        out.println("<td>" + rs.getString ("nm_matkul") + "</td>");
                                        out.println("<td><center>" + rs.getString ("semester") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("sks") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("nm_jurusan") + "</center></td>");
                                        out.println("</tr>");
					}
                                        rs.close();
					%>
                                    </tbody>
				</table>
                            </div>
			</div>
                    </div>
		</div>
	</div>
</body>
</html>

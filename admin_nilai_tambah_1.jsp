<%@ page import="java.sql.*" %>
<%
String nim=request.getParameter("nim");
String jur=request.getParameter("jur");
String connectionURL = "jdbc:mysql://localhost:3306/db_tugas_akhir" ;
Connection connection = null;
Statement statement = null;
ResultSet rs = null;
%>
<html>
    
    <body>
<div class="form-group">
<label>MATA KULIAH</label>
<select class="form-control" name="nim">
<option selected>Pilih Mata Kuliah</option>
<option></option>
<%
Class.forName("com.mysql.jdbc.Driver").newInstance();
connection = DriverManager.getConnection(connectionURL, "root", "");
statement = connection.createStatement();
rs = statement.executeQuery("SELECT * FROM tb_matkul");
while (rs.next()) {
String isi=rs.getString(1);
%>
<option value="<%=isi%>"><%=rs.getString(2)%> - Semester <%=rs.getString(3)%></option>
<%
}
rs.close();
statement.close();
connection.close();
%>
</select>
                                            </div>        
                                            <label><b>NILAI :</b></label>
                                                <input class="form-control" type="text" name="nilai">
                                        </div>
                                        <button type="submit" class="btn btn-default">Submit</button>
                                        <button type="reset" class="btn btn-default">Reset</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
    </body>
</html>

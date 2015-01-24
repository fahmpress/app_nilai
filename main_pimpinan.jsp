<%
    String cek=request.getParameter("menu");
    if(cek.equals("home")){
            %>
            <%@include file="pimpinan_profile.jsp" %> 
            <%
           } 
      
        else if(cek.equals("mahasiswa")){
            %>
            <%@include file="laporan_mahasiswa.jsp" %> 
            <%
           }
     
     else if(cek.equals("mhs_tampil")){
            %>
            <%@include file="laporan_mahasiswa_tampil.jsp" %> 
            <%
           }
     
     else if(cek.equals("detail")){
            %>
            <%@include file="laporan_mahasiswa_tampil_detail.jsp" %> 
            <%
           }
     
    else if(cek.equals("jumlah_mahasiswa")){
            %>
            <%@include file="laporan_jumlah_mahasiswa.jsp" %> 
            <%
           }
    
    else if(cek.equals("jumlah_mahasiswa2")){
            %>
            <%@include file="laporan_jumlah_mahasiswa_jurusan_2.jsp" %> 
            <%
           }
        
    else if(cek.equals("jumlah_mahasiswa_jurusan")){
            %>
            <%@include file="laporan_jumlah_mahasiswa_jurusan.jsp" %> 
            <%
           }
    
    else if(cek.equals("jumlah_mahasiswa_jurusan_tampil")){
            %>
            <%@include file="laporan_jumlah_mahasiswa_jurusan_tampil.jsp" %> 
            <%
           }
    
    else if(cek.equals("jumlah_mahasiswa_jurusan_1")){
            %>
            <%@include file="laporan_jumlah_mahasiswa_jurusan_1.jsp" %> 
            <%
           }
      
    else if(cek.equals("jumlah_mhs_1_1")){
            %>
            <%@include file="laporan_jumlah_mahasiswa_jurusan_1_1.jsp" %> 
            <%
           }
    
    else if(cek.equals("jur")){
            %>
            <%@include file="laporan_jumlah_mahasiswa_jurusan_tampil_1.jsp" %> 
            <%
           }
    
   else if(cek.equals("jumlah_mhs_tampil_1_1")){
            %>
            <%@include file="laporan_jumlah_mahasiswa_jurusan_tampil_1_1.jsp" %> 
            <%
           } 
    
    else if(cek.equals("bayar")){
            %>
            <%@include file="laporan_data_bayar_mahasiswa.jsp" %> 
            <%
           }
    
    else if(cek.equals("bayar_tampil")){
            %>
            <%@include file="laporan_data_bayar_mahasiswa_tampil.jsp" %> 
            <%
           }
    
    else if(cek.equals("bayar_jur")){
            %>
            <%@include file="laporan_data_bayar_mahasiswa_jur.jsp" %> 
            <%
           }
    
    else if(cek.equals("bayar_jur_tampil")){
            %>
            <%@include file="laporan_data_bayar_mahasiswa_jur_tampil.jsp" %> 
            <%
           }
    
    else if(cek.equals("bayar_AJ")){
            %>
            <%@include file="laporan_data_bayar_mahasiswa_AJ.jsp" %> 
            <%
           }
    
    else if(cek.equals("bayar_AJ_tampil")){
            %>
            <%@include file="laporan_data_bayar_mahasiswa_AJ_tampil.jsp" %> 
            <%
           }
    
    else if(cek.equals("jumlah_bayar")){
            %>
            <%@include file="laporan_jumlah_banyak_pembayaran.jsp" %> 
            <%
           }
    
    else if(cek.equals("data_dosen")){
            %>
            <%@include file="laporan_data_dosen.jsp" %> 
            <%
           }
      
           else{
           out.println("");
           }

           %>

<html>
    
    <body>
        <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header"><i class="fa fa-file"></i> Tambah Data Matkul</h3>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
            </div>
        
        <div class="row">
                <div class="col-lg-6">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <form role="form" method="post" action="admin_matkul_tambah_proses.jsp">
                                        <div class="form-group">
                                            <label><b>KODE MATA KULIAH :</b></label>
                                                <input class="form-control" type="text" name="kd_matkul" autofocus required><br>
                                            <label><b>MATA KULIAH:</b></label>
                                                <input class="form-control" type="text" name="nm_matkul" autofocus required><br>
                                            <label><b>SKS :</b></label>
                                                <input class="form-control" type="text" name="sks" autofocus required><br>
                                            <label><b>NIP :</b></label>
                                                <input class="form-control" type="text" name="nip" autofocus required><br>                                   
                                            <label><b>KODE JURUSAN :</b></label>
                                                <input class="form-control" type="text" name="kd_jurusan" autofocus required><br>
                                            
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
        <script>
    $("#commentForm").validate();
    </script>
    </body>
</html>

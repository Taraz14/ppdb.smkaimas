<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<style>
    .table tbody tr > td.success {
      background-color: #dff0d8 !important;
    }
    
    .table tbody tr > td.error {
      background-color: #f2dede !important;
    }
    
    .table tbody tr > td.warning {
      background-color: #fcf8e3 !important;
    }
    
    .table tbody tr > td.info {
      background-color: #d9edf7 !important;
    }
    
    .table-hover tbody tr:hover > td.success {
      background-color: #d0e9c6 !important;
    }
    
    .table-hover tbody tr:hover > td.error {
      background-color: #ebcccc !important;
    }
    
    .table-hover tbody tr:hover > td.warning {
      background-color: #faf2cc !important;
    }
    
    .table-hover tbody tr:hover > td.info {
      background-color: #c4e3f3 !important;
    }
</style>
<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="box box-success">
                <div class="box-header">
                    <h3 class="box-title">PPDB(2020) | 
                        <small>List Pendaftar</small>
                    </h3>
                </div>
                <div class="box-body pad">
                    <table class="table table-bordered table-hover display nowrap" style="width:100%" id="psb_admin">
                        <thead>
                            <tr>
                                <th>No. Pendaftar</th>
                                <th>Nama Lengkap</th>
                                <th>NISN</th> 
                                <th>TTL</th>
                                <th>Jenis Kelamin</th>
                                <th>Agama</th>
                                <th>Warga Negara</th>
                                <th>No. Telp</th>
                                <th>Alamat</th>
                                <th>Jurusan #1</th>
                                <th>Jurusan #2</th>
                                <th>Nama Ayah</th>
                                <th>Pekerjaan Ayah</th>
                                <th>Nama Ibu</th>
                                <th>Pekerjaan Ibu</th>
                                <th>Telp Orangtua</th>
                                <th>Alamat Orangtua</th>
                                <th>Nama Wali</th>
                                <th>Pekerjaan Wali</th>
                                <th>Alamat Wali</th>
                                <th>Telp Wali</th>
                                <th>Asal Sekolah</th>
                                <th>Alamat Sekolah</th>
                                <th>Tahun Lulus</th>
                                <th>NPP</th>
                                <th>Nilai</th>
                                <th>Sudah Test</th>
                                <th>#</th>
                            </tr>
                        </thead>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- /.content -->

<script>
  var psb_admin;
  $(function(){
        //Datatable : psb -> Admin
        //nilai = 24
        psb_admin = $('#psb_admin').DataTable({
        "processing"  : true,
        "serverSide"  : true,
        "scrollX"       : true,
        // "scrollY"       : "200px",
        "scrollCollapse": true,
        "order"       : [],
        "ajax"        : {
          url         : '<?= site_url('admin/Psb/getPsb')?>',
        },
        "createdRow": function( row, data, dataIndex){
            if(data[24] == ''){
                $(row).addClass('info');
            }
        },
        "columnDefs" : [
            {
                "targets" : [5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26],
                "visible" : false,
                "searchable" : false
            }
        ],
        dom : 'lBfrtip',
        button : [
            {
                extend : 'pdfHtml5',
                oriented : 'potrait',
                pageSize : 'Legal',
                download : 'open',
            },
    
            'csv', 'excel', 'print', 'copy'
        ],
            pageLength: 10,
            lengthMenu: [10, 20, 50, 100, 200, 500],
      });
  })

  function reload_table()
    {
      psb_admin.ajax.reload(null,false); //reload datatable ajax 
    }

    function delete_psb(id){
      if(confirm('Yakin Hapus Pendaftar?')){
        $.ajax({
          url : "<?= site_url('admin/psb/d/')?>"+id,
          type : "POST",
          dataType : "JSON",
          success : function(data) {
            reload_table();
          },
          error: function (jqXHR, textStatus, errorThrown)
          {
              alert('Gagal dihapus');
          }

        });
      }
    }
</script>
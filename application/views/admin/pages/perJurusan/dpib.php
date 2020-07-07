<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="box box-success">
                <div class="box-header">
                    <h3 class="box-title">PPDB(2020) | 
                        <small>List Siswa Jurusan <?= $header; ?></small>
                    </h3>
                </div>
                <div class="box-body pad">
                    <table class="table table-bordered table-hover display nowrap" style="width:100%" id="dpib_admin">
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
                                <th>Jurusan</th>
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
                                <th>Nilai</th>
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
  var akl_admin;
  $(function(){
        //Datatable : DPIB -> Admin
        akl_admin = $('#dpib_admin').DataTable({
        "processing"  : true,
        "serverSide"  : true,
        "scrollX"       : true,
        "scrollY"       : "200px",
        "scrollCollapse": true,
        "order"       : [],
        "ajax"        : {
          url         : '<?= site_url('admin/perJurusan/Dpib/getJur')?>',
        },
        "columnDefs" : [
            {
                "targets" : [5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22],
                "visible" : false,
                "searchable" : false
            }
        ],
        dom : 'Bfrtip',
        button : [
            {
                extend : 'pdfHtml5',
                oriented : 'potrait',
                pageSize : 'Legal',
                download : 'open',
            },
    
            'csv', 'excel', 'print', 'copy'
        ]
      });
  })

//   function reload_table()
//     {
//       psb_admin.ajax.reload(null,false); //reload datatable ajax 
//     }

//     function delete_psb(id){
//       if(confirm('Yakin Hapus Pendaftar?')){
//         $.ajax({
//           url : "<?= site_url('admin/psb/d/')?>"+id,
//           type : "POST",
//           dataType : "JSON",
//           success : function(data) {
//             reload_table();
//           },
//           error: function (jqXHR, textStatus, errorThrown)
//           {
//               alert('Gagal dihapus');
//           }

//         });
//       }
//     }
</script>
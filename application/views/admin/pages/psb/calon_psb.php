<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>

<!-- Main content -->
<section class="content">
  <div class="row">
    <div class="col-md-12">
      <div class="box box-success">
        <div class="box-header">
          <h3 class="box-title">PPDB(<?= date('Y', time()) ?>) |
            <small><?= $header; ?> Siswa</small>
          </h3>
        </div>
        <div class="box-body pad">
          <table class="table table-bordered table-hover display nowrap" width="100%" id="arsip">
            <div class="col-lg-12 row">
              <div class="col-lg-10">
                <ul>
                  <li style="color:red">Nomor Pendaftar dan Nama berwarna merah adalah siswa cadangan</li>
                  <li style="color:blue">Nomor Pendaftar dan Nama berwarna biru adalah siswa yang sudah diterima</li>
              </div>
              <div class="col-lg-2 text-right">
                <button class="btn btn-warning"><i class="fa fa-archive"></i> Arsipkan</button>
              </div>
              </ul>
            </div>
            <thead>
              <tr>
                <th>#</th>
                <th>No. Pendaftar</th>
                <th>Nama Lengkap</th>
                <th>NIK</th>
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
                <th>Suku</th>
                <th>Nilai</th>
                <th>Keterangan</th>
                <!-- <th>Cadangkan</th> -->
              </tr>
            </thead>
          </table>
          <form action="#" method="post" id="form-user">
            <input type="hidden" name="uid" value="<?= $auth_user_id; ?>">
          </form>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- /.content -->
<script>
  var arsip;

  function reload_table() {
    arsip.ajax.reload(null, false); //reload datatable ajax 
  }

  $(function() {
    //Datatable : AKL -> Admin
    arsip = $('#arsip').DataTable({
      "processing": true,
      "serverSide": true,
      "scrollX": true,
      // "scrollY": "200px",
      "scrollCollapse": true,
      "order": [],
      "ajax": {
        url: '<?= site_url('admin/psb/getPsb') ?>',
      },
      "columnDefs": [{
        "targets": [5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23],
        "visible": false,
        "searchable": false
      }],
      dom: 'lBfrtip',
      button: [{
          extend: 'pdfHtml5',
          oriented: 'potrait',
          pageSize: 'Legal',
          download: 'open',
        },

        'csv', 'excel', 'print', 'copy'
      ],
      pageLength: 10,
      lengthMenu: [10, 20, 50, 100, 200, 500],
    });
  })

  function cadangkan(id) {
    swal({
        title: "Cadangkan siswa ini?",
        text: "Siswa akan dicadangkan!",
        icon: "warning",
        buttons: true,
        dangerMode: true,
      })
      .then((result) => {
        if (result) {
          var uid = new FormData($('#form-user')[0]);
          $.ajax({
            url: "<?= site_url('admin/cadangkan/') ?>" + id,
            type: "POST",
            contentType: false,
            processData: false,
            dataType: "JSON",
            data: {
              id: id,
              uid: uid
            },
            success: function(data) {
              if (data.status == true) {
                swal("Sip! Siswa Berhasil dicadangkan!", {
                  icon: "success",
                });
                reload_table();
              } else if (data.status == false) {
                swal({
                  title: 'Gagal',
                  text: 'Siswa ini sudah dicadangkan',
                  icon: 'error',
                  dangerMode: 'true'
                })
                reload_table();
              }
            }
          });
        } else {
          console.log(id);
          console.log(uid);
          swal("Kelas tidak jadi dihapus!");
        }
      });
  }
</script>
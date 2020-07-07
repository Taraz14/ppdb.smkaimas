<!-- Main content -->
<section class="content">
  <div class="row">
    <div class="col-md-12">
      <div class="box box-danger">
        <div class="box-header">
          <h3 class="box-title">Kelas |
            <small>Tambah Kelas</small>
          </h3>
          <!-- tools box -->
          <!-- /. tools -->
        </div>
        <!-- /.box-header -->
        <div class="box-body pad">
          <form action="#" method="post" id="form-kelas">
            <input type="hidden" name="class_id" value="smk1-">
            <div class="form-group row">
              <label for="addkelas" class="col-sm-2 control-label">Nama Kelas</label>
              <div class="col-sm-4">
                <input type="text" name="addkelas" class="form-control" placeholder="contoh : X TKJ 1">
                <div class="text-danger text-muted"><i><?php echo form_error('addkelas') ?></i></div>
              </div>
              <div class="col-sm-2">
                <a class="btn btn-success btn-sm" id="save">Simpan <i class="glyphicon glyphicon-blackboard"></i></a>
              </div>
            </div>
          </form>
        </div>
      </div>
      <!-- /.box -->
    </div>
    <!-- /.col-->
  </div>
  <!-- ./row -->

  <div class="row">
    <div class="col-md-12">
      <div class="box box-danger">
        <div class="box-header">
          <h3 class="box-title">Kelas |
            <small>List Kelas</small>
          </h3>
        </div>
        <!-- /.box-header -->
        <div class="box-body pad">
          <?php if ($this->session->flashdata('success')) : ?>
            <div class="alert alert-success alert-dismissible" role="alert">
              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
              <h4><i class="icon fa fa-check"></i> Publish berhasil!</h4>
              <?php echo $this->session->flashdata('success'); ?>
            </div>
          <?php endif; ?>

          <table class="table table-bordered table-hover display nowrap" style="width:100%" id="berita_admin">
            <thead>
              <tr>
                <th>No.</th>
                <th>Nama Kelas</th>
                <th>Tanggal / Waktu dibuat</th>
                <th>Action</th>
              </tr>
            </thead>
          </table>

        </div>
      </div>
      <!-- /.box -->
    </div>
    <!-- /.col-->
  </div>
  <!-- ./row -->
</section>

<script>
  var a_table;

  function reload_table() {
    a_table.ajax.reload(null, false); //reload datatable ajax 
  }

  $('#form-kelas').keypress(function(e) {
    if (e.which == 13) {
      return false;
    }
  });
  $(function() {
    $('#save').click(function() {
      var data = new FormData($('#form-kelas')[0]);
      $.ajax({
        type: "POST",
        url: "<?= site_url('admin/kelas/kelas/saveKelas') ?>",
        contentType: false,
        processData: false,
        dataType: "JSON",
        data: data,
        success: function(data) {
          // alert(JSON.stringify(data));
          if ($('input[name=addkelas]').val() == '') {
            swal({
              title: 'Gagal',
              text: 'Harap isi kelas',
              icon: 'error',
              dangerMode: 'true'
            })
          } else {
            if (data.status == true) {
              swal({
                // type: 'success',
                title: 'Tambah Kelas',
                text: 'Kelas berhasil ditambahkan',
                icon: 'success'
              })
              reload_table();
            } else {
              swal({
                title: 'Gagal',
                text: 'Kelas sudah ada',
                icon: 'error',
                dangerMode: 'true'
              })
            }
          }
        }
      })
    })
  });

  $(function() {
    //Datatable : berita -> Admin
    a_table = $('#berita_admin').DataTable({
      "processing": true,
      "serverSide": true,
      "scrollX": true,
      "scrollY": "200px",
      "order": [],
      "ajax": {
        url: '<?= site_url('admin/kelas/kelas/getKelas') ?>',
        'responsive': true
      }
    });
  })

  function delete_b(id) {
    swal({
        title: "Yakin hapus kelas?",
        text: "Jika sudah terhapus tidak dapat dikembalikan!",
        icon: "warning",
        buttons: true,
        dangerMode: true,
      })
      .then((willDelete) => {
        if (willDelete) {
          $.ajax({
            url: "<?= site_url('admin/kelas/kelas/delete/') ?>" + id,
            type: "POST",
            dataType: "JSON",
            success: function(data) {
              swal("Sip! Kelas sudah terhapus!", {
                icon: "success",
              });
              reload_table();
            }
          });
        } else {
          swal("Kelas tidak jadi dihapus!");
        }
      });
  }
</script>
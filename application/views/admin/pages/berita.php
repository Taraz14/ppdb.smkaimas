<!-- Main content -->
<section class="content">
    <div class="row">
      <div class="col-md-12">
        <div class="box box-danger">
          <div class="box-header">
            <h3 class="box-title">Berita | 
              <small>List Berita</small>
            </h3>
            <!-- tools box -->
            <div class="pull-right box-tools">
              <a href="<?= site_url('admin/berita/u'); ?>" class="btn btn-success btn-sm" data-toggle="tooltip"
                      title="Tambah Berita">New &nbsp;
                <i class="fa fa-newspaper-o"></i></a>
            </div>
            <!-- /. tools -->
          </div>
          <!-- /.box-header -->
          <div class="box-body pad">
            <?php if ($this->session->flashdata('success')): ?>
              <div class="alert alert-success alert-dismissible" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <h4><i class="icon fa fa-check"></i> Publish berhasil!</h4>
                <?php echo $this->session->flashdata('success'); ?>
              </div>
            <?php endif; ?>
              
            <table class="table table-bordered table-hover display nowrap" style="width:100%" id="berita_admin">
                <thead>
                    <tr>
                        <!-- <th>No.</th> -->
                        <th>Judul</th>
                        <th>Slug</th>
                        <th>Tanggal Post</th>
                        <th>Terakhir diubah</th>
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
<?= form_close(); ?>

<script>
  var a_table;
  $(function(){
        //Datatable : berita -> Admin
       a_table = $('#berita_admin').DataTable({
        "processing"  : true,
        "serverSide"  : true,
        "scrollX"       : true,
        "scrollY"       : "200px",
        "order"       : [],
        "ajax"        : {
          url         : '<?= site_url('admin/Forum/berita_table')?>',
          'responsive': true
        }
      });
  })
    function reload_table()
    {
      a_table.ajax.reload(null,false); //reload datatable ajax 
    }

    function delete_b(id){
      if(confirm('Yakin Hapus Berita?')){
        $.ajax({
          url : "<?= site_url('admin/berita/d/')?>"+id,
          type : "POST",
          dataType : "JSON",
          success : function(data) {
            reload_table();
          },
          error: function (jqXHR, textStatus, errorThrown)
          {
              alert('Error deleting data');
          }

        });
      }
    }

</script>

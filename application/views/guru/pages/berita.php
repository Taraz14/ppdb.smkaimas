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
              <a href="<?= site_url('guru/berita/u'); ?>" class="btn btn-success btn-sm" data-toggle="tooltip"
                      title="Tambah Berita">New &nbsp;
                <i class="fa fa-newspaper-o"></i></a>
            </div>
            <!-- /. tools -->
          </div>
          <!-- /.box-header -->
          <div class="box-body pad">
            <table class="table table-bordered table-hover" id="tb_berita">
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>Judul</th>
                        <th>Slug</th>
                        <th>Tanggal Post</th>
                        <th>Tanggal Ubah</th>
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
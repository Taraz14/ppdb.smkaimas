<?php
  $hide = [
    'user_id' => $auth_user_id
  ];

  echo form_open_multipart('guru/berita/u', ["method" => "POST"], $hide);

?>
<!-- Main content -->
<section class="content">
    <div class="row">
      <div class="col-md-12">
        <div class="box box-info">
          <div class="box-header">
            <h3 class="box-title">Publishing |
              <small>Dilarang membuat berita hoax(palsu/penipuan)</small>
            </h3>
            <!-- tools box -->
            <div class="pull-right box-tools">
                <a href="<?= site_url('guru/berita')?>" class="btn btn-danger btn-sm">Batal <i class="glyphicon glyphicon-remove"></i></a>                
                &nbsp;&nbsp;
                <button type="submit" class="btn btn-info btn-sm" data-toggle="tooltip"
                        title="Publish" name="publish">Publish <i class="glyphicon glyphicon-send"></i></button>
            </div>
            <!-- /. tools -->
          </div>
          <!-- /.box-header -->
          <div class="box-body pad">
            
              <div class="form-group">
                <label>Judul Berita</label>
                <input type="text" class="form-control" name="judul_b" style="font-weight:bold">
              </div>
              <div class="form-group">
                <label>Slug</label>
                <input type="text" class="form-control" name="sub_b" style="font-weight:light">
              </div>
              <div class="form-group">
                <textarea id="isi_b" name="isi_b" rows="10" cols="80"></textarea>
              </div>
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
    $(function () {
      //guru
      CKEDITOR.replace('isi_b',{
          filebrowserImageBrowseUrl : '<?php echo base_url('assets/5b43112/bower_components/kcfinder/browse.php');?>',
          height: '400px'             
      });
    });
</script>
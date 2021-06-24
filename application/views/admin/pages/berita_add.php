<?php
  $hide = [
    'user_id' => $auth_user_id
  ];

  echo form_open_multipart('admin/berita/u', ["method" => "POST"], $hide);

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
                <a href="<?= site_url('admin/berita')?>" class="btn btn-danger btn-sm"><i class="glyphicon glyphicon-arrow-left"></i> Kembali</a>                
                &nbsp;&nbsp;
                <button type="submit" class="btn btn-success btn-sm" data-toggle="tooltip"
                        title="Publish" name="publish">Publish <i class="glyphicon glyphicon-send"></i></button>
                        <!-- <input type="submit" class="btn btn-info btn-sm" data-toggle="tooltip"
                        title="Publish" name="publish" value="Publish"> -->
            </div>
            <!-- /. tools -->
          </div>
          <!-- /.box-header -->
          <div class="box-body pad">
            
              <?php if ($this->session->flashdata('success')): ?>
              <div class="alert alert-success" role="alert">
                <?php echo $this->session->flashdata('success'); ?>
              </div>
              <?php endif; ?>
              
              <div class="form-group">
                <label>Judul Berita*</label>
                <input type="text" class="form-control" name="judul_b" style="font-weight:bold">
                <div class="invalid-feedback">
                  <?php echo form_error('judul_b') ?>
                </div>
              </div>
              <div class="form-group">
                <label>Slug</label>
                <input type="text" class="form-control" name="sub_b" style="font-weight:light">
                <?php echo form_error('sub_b') ?>
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
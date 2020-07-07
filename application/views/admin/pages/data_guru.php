<!-- Main content -->
<section class="content">
    <!-- Small boxes (Stat box) -->
    <div class="row">
        <div class="col-md-12">
          <!-- Form box element -->
          <div class="box box-success">
            <div class="box-header with-border">
                <h3 class="box-title">Guru</h3>
                <button class="btn btn-success btn-sm" data-toggle="tooltip" data-placement="bottom" title="Tambah Guru" style="float:right" onClick="add_guru()"><i class="fa fa-user-plus"></i></button>
            </div>
            <div class="box-body">
                <table class="table table-bordered table-responsive display nowrap" style="width:100%" id="data_guru">
                    <thead>
                        <tr>
                            <th>NIDN/NUPTK</th>
                            <th>Nama</th>
                            <th>Status</th>
                            <th>Alamat</th>
                            <th>No.telp</th>
                            <th>Gender</th>
                            <th>Status</th>
                            <th>#</th>
                        </tr>
                    </thead>
                </table>
            </div>
          </div>
        </div>
        <!-- ./col -->
    </div>
</section>

<script>
    var save_method;
    var table;
    var base_url = '<?php echo base_url();?>';

    function add_guru() {
        save_method = 'add';
        $('#form')[0].reset(); // reset form on modals
        $('.form-group').removeClass('has-error'); // clear error class
        $('.help-block').empty(); // clear error string
        $('#modal_form').modal('show'); // show bootstrap modal
        $('.modal-title').text('Tambah Guru'); // Set Title to Bootstrap modal title
    };
</script>

<!-- Bootstrap modal -->
<div class="modal fade" id="modal_form" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
              <h3 class="modal-title">Tambah Guru</h3>
              <!-- <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button> -->
            </div>
            <div class="modal-body form">
                <form enctype="multipart/form-data" action="#" id="form" class="form-horizontal">
                    <input type="hidden" value="" name="id"/> 
                    <div class="form-body">
                        <div class="form-group">
                            <label class="control-label col-md-3">*</label>
                            <div class="col-md-9">
                                <select name="noinduk" class="form-control">
                                  <option>NIDN</option>
                                  <option>NUPTK</option>
                                  <option>KTP</option>
                                </select>
                                <span class="help-block"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Nomor Induk</label>
                            <div class="col-md-9">
                                <input name="nodig" placeholder="Nomor Induk" class="form-control" type="text" required>
                                <span class="help-block"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Nama Guru</label>
                            <div class="col-md-9">
                                <input name="prod_name" placeholder="Nama Guru dan Gelar" class="form-control" type="text">
                                <span class="help-block"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Email</label>
                            <div class="col-md-9">
                                <input name="email" placeholder="contoh@gmail.com" class="form-control" type="email">
                                <span class="help-block"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Alamat</label>
                            <div class="col-md-9">
                                <textarea name="alamat" placeholder="Alamat" class="form-control"></textarea>
                                <span class="help-block"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Gender</label>
                            <div class="col-md-9">
                              <label>
                                <input type="radio" name="gen1" class="flat-red">
                                Pria
                              </label>
                              &nbsp;&nbsp;&nbsp;
                              <label>
                                <input type="radio" name="gen1" class="flat-red">
                                Wanita
                              </label>
                                <span class="help-block"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Foto</label>
                            <div class="col-md-9">
                                <input type="file" name="pict" accept="image/x-png,image/gif,image/jpeg">
                                <span class="help-block"></span>
                            </div>
                        </div>
                        <hr>
                        <div class="form-group">
                            <label class="control-label col-md-3">Pendidikan Terakhir</label>
                            <div class="col-md-9">
                                <select name="lastpend" class="form-control">
                                  <option>S1</option>
                                  <option>S2</option>
                                  <option>S3</option>
                                </select>
                                <span class="help-block"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Jurusan</label>
                            <div class="col-md-9">
                                <select name="jurusan" class="form-control">
                                  <option>S1</option>
                                </select>
                                <span class="help-block"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Nomor HP</label>
                            <div class="col-md-9">
                                <input name="nohp" class="form-control" type="text">
                                <span class="help-block"></span>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" id="btnSave" onclick="save()" class="btn btn-success">Save</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!-- End Bootstrap modal -->


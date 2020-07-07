<?php defined('BASEPATH') or exit('No direct script access allowed');
$tgl = date('Y-m-d', $berkas->submit_at);
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $input = $this->input->post();
} else {
    $input['npp'] = '';
}
?>
<form action="" method="post" enctype="multipart/form-data">
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-md-6">
                <div class="box box-primary">
                    <div class="box-header">
                        <h3 class="box-title">PSB |
                            <small>Isi Nilai</small>
                        </h3>
                        <small class="pull-right">Mendaftar pada tanggal : <?= tanggal($tgl) . ', pukul : ' . date('H:i', $berkas->submit_at); ?></small>
                        <br><small class="pull-right uppercase text-muted"><i><?= $berkas->nama_lengkap; ?></i></small>
                    </div>
                    <?php if ($this->session->flashdata('success')) { ?>
                        <div class="alert alert-success alert-dismissible">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                            <h4><i class="icon fa fa-check"></i> Selamat!</h4>
                            <?= $this->session->flashdata('success') ?>
                        </div>
                    <?php }
                    if ($this->session->flashdata('error')) { ?>
                        <div class="alert alert-danger alert-dismissible">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                            <h4><i class="icon fa fa-ban"></i> Gagal!</h4>
                            <?= $this->session->flashdata('error') ?>
                        </div>
                    <?php } ?>
                    <div class="box-body pad">
                        <div class="col-md-12">
                            <div class="form-group row">
                                <label for="nilai" class="col-sm-1 control-label">Nilai </label>
                                <div class="col-sm-10">
                                    <?php if ($berkas->nilai == 0) {
                                        echo '<p class="text-muted"><i class="glyphicon glyphicon-remove" style="color:#FF3D00"></i> Belum ada Nilai</p>';
                                    } else { ?>
                                        <p><?= $berkas->nilai; ?></p>
                                    <?php } ?>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Isi Nilai</label>
                                <input type="number" class="form-control" min="0.00" step="0.01" name="nilai" value="<?= $berkas->nilai; ?>">
                                <small class="text-muted"><i>Menuliskan angka desimal menggunakan titik(.), bukan koma(,)</i></small>
                            </div>
                            <div class="form-group">
                                <label>NP/P</label>
                                <select class="form-control" name="npp" style="font-size:14.5px;">
                                    <option <?php if ($berkas->id_jalur == 0) {
                                                echo 'selected';
                                            } ?> value="" hidden>--Pilih Reguler--</option>
                                    <option <?php if ($berkas->id_jalur == 1) {
                                                echo 'selected';
                                            } ?> value="1">Papua</option>
                                    <option <?php if ($berkas->id_jalur == 2) {
                                                echo 'selected';
                                            } ?> value="2">Non Papua</option>
                                </select>

                            </div>
                            <div class="form-group">
                                <button class="btn btn-success"><i class="glyphicon glyphicon-send"></i>&nbsp; Submit</button>
                                <a href="<?= site_url('admin/psb') ?>" class="btn btn-danger"><i class="glyphicon glyphicon-chevron-left"> Kembali</i></a>
                            </div>

                        </div>

                    </div>
                </div>
            </div>

            <!-- Upload File berkas -->
            <!-- ====================== -->
            <!-- <div class="col-md-6">
            <div class="box box-success">
                <div class="box-header">
                    <h3 class="box-title">PSB | 
                        <small>Update Berkas</small>
                    </h3>
                    <p class="pull-right">Mendaftar pada tanggal : <?= tanggal($tgl) . ', pukul : ' . date('H:i', $berkas->submit_at); ?></p>
                </div>
                <?php if ($this->session->flashdata('error')) {
                    $this->session->flashdata('error');
                } ?>
                <div class="box-body pad">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>Berkas :</label>
                            <?php if ($berkas->file == null) {
                                echo '<p class="text-muted"><i class="glyphicon glyphicon-remove" style="color:#FF3D00"></i> Belum ada berkas</p>';
                            } else { ?>
                                <img src="<?= $berkas->file; ?>" width="100px">
                            <?php } ?>
                        </div>
                        <div class="form-group">
                            <label>Update Scan Ijazah terakhir</label>
                            <input type="file" class="form-control" name="imgupdate" accept="image/*">
                        </div>
                        <div class="form-group">
                            <button class="btn btn-success"><i class="glyphicon glyphicon-upload"></i> Upload</button>
                            <a href="<?= site_url('admin/psb') ?>" class="btn btn-danger"><i class="glyphicon glyphicon-chevron-left"> Kembali</i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div> -->
        </div>
    </section>
</form>
<?php defined('BASEPATH') or exit('No direct script access allowed');
$tgl = date('Y-m-d', $detail->submit_at);
echo validation_errors();
?>
<!-- Main content -->
<?= form_open('admin/psb/acc') ?>
<!-- Hidden Input -->
<input type="hidden" name="id" value="<?= $this->uri->segment(4) ?>">
<input type="hidden" name="jalur" value="<?= $detail->id_jalur ?>">
<input type="hidden" name="no_pendaftar" value="<?= $detail->nomor_pendaftar ?>">
<input type="hidden" name="nama_lengkap" value="<?= $detail->nama_lengkap ?>">
<input type="hidden" name="nisn" value="<?= $detail->nisn ?>">
<input type="hidden" name="tempat_lahir" value="<?= $detail->tempat_lahir ?>">
<input type="hidden" name="tanggal_lahir" value="<?= $detail->tanggal_lahir ?>">
<input type="hidden" name="jenis_kelamin" value="<?= $detail->jenis_kelamin ?>">
<input type="hidden" name="agama" value="<?= $detail->agama ?>">
<input type="hidden" name="alamat" value="<?= htmlentities($detail->alamat, ENT_QUOTES, 'UTF-8') ?>">
<input type="hidden" name="kewarganegaraan" value="<?= $detail->kewarganegaraan ?>">
<input type="hidden" name="no_telp" value="<?= $detail->no_telp ?>">
<input type="hidden" name="nilai" value="<?= $detail->nilai ?>">
<input type="hidden" name="ayah_kandung" value="<?= $detail->ayah_kandung ?>">
<input type="hidden" name="pekerjaan_ayah" value="<?= $detail->pekerjaan_ayah ?>">
<input type="hidden" name="ibu_kandung" value="<?= $detail->ibu_kandung ?>">
<input type="hidden" name="pekerjaan_ibu" value="<?= $detail->pekerjaan_ibu ?>">
<input type="hidden" name="alamat_ortu" value="<?= $detail->alamat_ortu ?>">
<input type="hidden" name="telp_ortu" value="<?= $detail->telp_ortu ?>">
<input type="hidden" name="nama_wali" value="<?= $detail->nama_wali ?>">
<input type="hidden" name="pekerjaan_wali" value="<?= $detail->pekerjaan_wali ?>">
<input type="hidden" name="alamat_wali" value="<?= $detail->alamat_wali ?>">
<input type="hidden" name="telp_wali" value="<?= $detail->telp_wali ?>">
<input type="hidden" name="asal_sekolah" value="<?= $detail->asal_sekolah ?>">
<input type="hidden" name="alamat_sekolah" value="<?= $detail->alamat_sekolah ?>">
<input type="hidden" name="tahun_lulus" value="<?= $detail->tahun_lulus ?>">
<input type="hidden" name="nilai" value="<?= $detail->nilai ?>">
<input type="hidden" name="berkas" value="<?= $detail->file ?>">



<!-- section -->
<section class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="box box-success">
                <div class="box-header">
                    <h3 class="box-title">PSB |
                        <small>Detail Pendaftar PSB</small>
                    </h3>
                    <p class="pull-right">Mendaftar pada tanggal : <?= tanggal($tgl) . ', pukul : ' . date('H:i', $detail->submit_at); ?></p>

                    <?php if ($this->session->flashdata('error')) { ?>
                        <div class="alert alert-danger alert-dismissible">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                            <h4><i class="icon fa fa-ban"></i> Penerimaan Gagal!</h4>
                            <?= $this->session->flashdata('error') ?>
                        </div>
                    <?php } ?>
                </div>
                <div class="box-body pad">
                    <div class="row">
                        <div class="col sm-6">
                            <h2 class="col-sm-6">Data Pribadi</h2>
                        </div>
                        <div class="col-sm-6">
                            <h2 class="col-sm-6 pull-right">Nilai : <?php gaskan($detail->nilai) ?></h2>
                        </div>
                    </div>
                    <hr>
                    <div class="form-group">
                        <label for="nomorPendaftar" class="col-sm-2 control-label">Nomor Pendaftar</label>
                        <div class="col-sm-10">
                            <p class="form-control"><?php gaskan($detail->nomor_pendaftar) ?></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="namalengkap" class="col-sm-2 control-label">Nama Lengkap</label>
                        <div class="col-sm-10">
                            <p class="form-control uppercase"><?php gaskan($detail->nama_lengkap) ?></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">NISN</label>
                        <div class="col-sm-10">
                            <p class="form-control"><?php gaskan($detail->nisn) ?></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Tempat, Tanggal Lahir</label>
                        <div class="col-sm-10">
                            <p class="form-control"><?= $detail->tempat_lahir . ', ' . tanggal($detail->tanggal_lahir); ?></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Jenis Kelamin</label>
                        <div class="col-sm-10">
                            <p class="form-control"><?= $detail->jenis_kelamin; ?></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Agama</label>
                        <div class="col-sm-10">
                            <p class="form-control"><?php gaskan($detail->agama) ?></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Alamat</label>
                        <div class="col-sm-10">
                            <p class="form-control"><?php gaskan($detail->alamat) ?></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Kewarganegaraan</label>
                        <div class="col-sm-10">
                            <p class="form-control uppercase"><?php gaskan($detail->kewarganegaraan) ?></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Nomor telepon</label>
                        <div class="col-sm-10">
                            <p class="form-control"><?php gaskan($detail->no_telp) ?></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Jalur Pendaftaran</label>
                        <div class="col-sm-10">
                            <p class="form-control"><?php gaskan($detail->jalur) ?></p>
                        </div>
                    </div>
                    <h2>Jurusan yang dipilih</h2>
                    <hr>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Jurusan 1</label>
                        <div class="col-sm-10">
                            <p class="form-control"><?= $detail->jurusan1; ?></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <!-- <div class="col-sm-1"></div> -->
                        <label class="col-sm-2 control-label">Jurusan 2</label>
                        <div class="col-sm-10">
                            <p class="form-control"><?= $detail->jurusan2; ?></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Jurusan/Kelas</label>
                        <div class="container row">
                            <div class="col-sm-4">
                                <select class="form-control" name="jurusan" id="jurusan" style="font-size:14.5px;">
                                    <option value="" selected hidden>--Jurusan--</option>
                                    <?php foreach ($jurusan as $jur) : ?>
                                        <option value="<?= $jur->kode_jurusan; ?>"><?= $jur->nama_jurusan; ?></option>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                            <div class="col-sm-4">
                                <select class="form-control" name="kelas" id="kelas" style="font-size:14.5px;">
                                    <option value="" selected hidden>--Kelas--</option>
                                    <?php
                                    foreach ($kelas as $val) : ?>
                                        <option value="<?= $val->class_id ?>"><?= $val->class_name; ?></option>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                        </div>
                        <!-- <?= form_error('jurusan'); ?> -->
                        <!--<h3>Nilai : <?= $detail->nilai; ?></h3>-->

                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Acc</label>
                        <div class="col-sm-10">
                            <button class="btn btn-success"><i class="fa fa-check"></i> Diterima</button>
                            <a href="<?= site_url('admin/psb'); ?>" class="btn btn-danger"><i class="fa fa-remove"></i> Kembali</a>
                        </div>
                    </div>
                    <br />
                    <h2>Data Orangtua</h2>
                    <hr>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Nama Ayah</label>
                        <div class="col-sm-10">
                            <p class="form-control"><?= $detail->ayah_kandung; ?></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <!-- <div class="col-sm-1"></div> -->
                        <label class="col-sm-2 control-label">Pekerjaan Ayah</label>
                        <div class="col-sm-10">
                            <p class="form-control"><?= $detail->pekerjaan_ayah; ?></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Nama Ibu</label>
                        <div class="col-sm-10">
                            <p class="form-control"><?= $detail->ibu_kandung; ?></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Pekerjaan Ibu</label>
                        <div class="col-sm-10">
                            <p class="form-control"><?= $detail->pekerjaan_ibu; ?></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Alamat Orangtua</label>
                        <div class="col-sm-10">
                            <p class="form-control"><?= $detail->alamat_ortu; ?></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Telp</label>
                        <div class="col-sm-10">
                            <p class="form-control"><?= $detail->telp_ortu; ?></p>
                        </div>
                    </div>
                    <h2>Data Wali</h2>
                    <hr>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Nama Wali</label>
                        <div class="col-sm-10">
                            <p class="form-control"><?= $detail->nama_wali == "" ? "-" : $detail->nama_wali; ?></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <!-- <div class="col-sm-1"></div> -->
                        <label class="col-sm-2 control-label">Pekerjaan Wali</label>
                        <div class="col-sm-10">
                            <p class="form-control"><?= $detail->pekerjaan_wali == "" ? "-" : $detail->pekerjaan_wali; ?></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Alamat Wali</label>
                        <div class="col-sm-10">
                            <p class="form-control"><?= $detail->alamat_wali == "" ? "-" : $detail->alamat_wali; ?></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Telp Wali</label>
                        <div class="col-sm-10">
                            <p class="form-control"><?= $detail->telp_wali == "" ? "-" : $detail->telp_wali; ?></p>
                        </div>
                    </div>
                    <h2>Data Sekolah Lama</h2>
                    <hr>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Asal Sekolah</label>
                        <div class="col-sm-10">
                            <p class="form-control"><?= $detail->asal_sekolah; ?></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Alamat Sekolah</label>
                        <div class="col-sm-10">
                            <p class="form-control"><?= $detail->alamat_sekolah == "" ? "-" : $detail->alamat_sekolah; ?></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Tahun Lulus</label>
                        <div class="col-sm-10">
                            <p class="form-control"><?= $detail->tahun_lulus; ?></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Berkas</label>
                        <div class="col-sm-10">
                            <?php if (!$detail->file == null) { ?>
                                <img src="<?= $detail->file; ?>" style="width:100px;">
                            <?php } else {
                                echo '<p><i class="glyphicon glyphicon-remove" style="color:#FF3D00"></i> Belum Upload Berkas</p>';
                            } ?>
                        </div>
                    </div>
                    <!-- <div class="form-group">
                        <a href="<?= site_url('admin/psb') ?>" class="btn btn-danger"><i class="glyphicon glyphicon-chevron-left"> Kembali</i></a>
                    </div> -->
                </div>
            </div>
        </div>
    </div>
</section>
</form>
<!-- <script>
    $(document).ready(function() {
        var kode_jurusan = $;
        var nama_jurusan = $;
        var class_id = $;
        var class_name = $;
        $.ajax({
            type: "GET",
            url: '<?= base_url() ?>admin/detailSiswa/Detail',
            dataType: "JSON",
            data: {
                kode_jurusan: kode_jurusan,
                nama_jurusan: nama_jurusan,
                class_id: class_id,
                class_name: class_name
            },
            success: function(respon) {
                console.log(respon[0][0].nama_jurusan);
                $("#jurusan").change(function() {
                    var val = $(this).val;
                    if (respon[0][0].kode_jurusan.val == 1) {
                        // $("#kelas").html("<option value='test'>item1: test 1</option><option value='test2'>item1: test 2</option>");
                        console.log(respon[0][0].kode_jurusan);
                    }
                })
            }
        })
    })
</script> -->
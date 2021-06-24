<?php defined('BASEPATH') or exit('No direct script access allowed');
$input = $this->input->post();
if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    $input = $this->input->post();
} else {

    $input['nama'] = '';
    $input['nisn'] = '';
    $input['nik'] = '';
    $input['tempat_lahir'] = '';
    $input['tanggal_lahir'] = '';
    //========
    $input['jenis_kelamin'] = '';
    $input['agama'] = '';
    $input['kewarganegaraan'] = '';
    $input['jurusan1'] = '';
    // $input['jurusan2'] = '';
    //========
    $input['no_telp'] = '';
    $input['alamat'] = '';
    $input['prov'] = '';
    $input['ayah_kandung'] = '';
    $input['pekerjaan_ayah'] = '';
    $input['ibu_kandung'] = '';
    $input['pekerjaan_ibu'] = '';
    $input['alamat_ortu'] = '';
    $input['telp_ortu'] = '';
    $input['nama_wali'] = '';
    $input['pekerjaan_wali'] = '';
    $input['alamat_wali'] = '';
    $input['telp_wali'] = '';
    $input['asal_sekolah'] = '';
    $input['alamat_sekolah'] = '';
    $input['tahun_lulus'] = '';
}

?>
<style>
    span,
    h2 {
        color: #048ED8;
    }

    .alert {
        background-color: orange;
    }

    .f-wht {
        color: white;
    }
</style>
<section class="blog">
    <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1>Form Pendaftaran <span> PENERIMAAN PESERTA DIDIK BARU</span></h1>
                    <div class="p-b-20 alert bgm-orange f-wht"><strong>PERHATIAN!</strong> Silahkan isikan data secara lengkap. Data yang diisikan merupakan data yang <strong>SEBENAR - BENARNYA</strong>, data tersebut akan menjadi <strong>TANGGUNG JAWAB</strong> pendaftar yang bersangkutan.</div>
                </div>

                <!--<div class="col-md-12">-->
                <!--   <h1>Form Pendaftaran <span> PENERIMAAN PESERTA DIDIK BARU</span></h1>-->
                <!--   <div class="p-b-20 alert bgm-orange f-wht"></i><strong>Uji Coba<i class="fa fa-exclamation"></i></strong> Silahkan isikan data secara lengkap.</div>-->
                <!--</div>-->
            </div>
        </div>
    </div>
    <br />
    <?= form_open_multipart('daftar/submit', ["method" => "POST"]); ?>
    <div class="container">
        <h2>Data Diri Pendaftar</h2><small class="text-muted"><i>Untuk label yang ada bintang merah wajib diisi.</i></small>
        <hr>
        <div class="form-group row">
            <label for="nama" class="col-sm-4 control-label">Nama Lengkap <sup style="color:#F53F37">*</sup></label>
            <div class="col-sm-8">
                <input type="text" class="form-control" name="nama" value="<?= $input['nama']; ?>" placeholder="Masukkan Nama Lengkap" autocomplete="off">
                <div class="text-danger text-muted"><i><?php echo form_error('nama') ?></i></div>
            </div>
        </div>
        <div class="form-group row mt-2">
            <label for="nisn" class="col-sm-4 control-label">NISN <sup style="color:#F53F37">*</sup></label>
            <div class="col-sm-8">
                <input type="text" class="form-control" id="nisn" name="nisn" value="<?= $input['nisn']; ?>" placeholder="Contoh : 0051234567 (10 digit) ada di Ijazah SD" autocomplete="off">
                <div class="text-danger text-muted"><i><?php echo form_error('nisn') ?></i></div>
            </div>
        </div>
        <div class="form-group row mt-2">
            <label for="nik" class="col-sm-4 control-label">NIK <sup style="color:#F53F37">*</sup></label>
            <div class="col-sm-8">
                <input type="text" class="form-control" id="nik" name="nik" value="<?= $input['nik']; ?>" placeholder="Contoh : 9201xxxxxxxxxxxx (16 digit) ada di Kartu Keluarga (bukan nomor Kartu Keluarga)" autocomplete="off">
                <div class="text-danger text-muted"><i><?php echo form_error('nik') ?></i></div>
            </div>
        </div>
        <div class="form-group row mt-2">
            <label for="tempat_lahir" class="col-sm-4 control-label">Tempat Lahir <sup style="color:#F53F37">*</sup></label>
            <div class="col-sm-8">
                <input type="text" class="form-control" name="tempat_lahir" value="<?= $input['tempat_lahir']; ?>" placeholder="Masukkan Tempat Lahir" autocomplete="off">
                <div class="text-danger text-muted"><i><?php echo form_error('tempat_lahir') ?></i></div>
            </div>
        </div>
        <div class="form-group row mt-2">
            <label for="tanggal_lahir" class="col-sm-4 control-label">Tanggal Lahir <sup style="color:#F53F37">*</sup></label>
            <div class="col-sm-8">
                <div class="input-group">
                    <input type="text" class="form-control" id="datepicker" name="tanggal_lahir" value="<?= $input['tanggal_lahir']; ?>" readonly>
                    <div class="input-group-addon">
                        <i class="fa fa-calendar"></i>
                    </div>
                </div>
                <div class="text-danger text-muted"><i><?php echo form_error('tanggal_lahir') ?></i></div>
            </div>
        </div>
        <div class="form-group row mt-2">
            <label for="jenis_kelamin" class="col-sm-4 control-label">Jenis Kelamin <sup style="color:#F53F37">*</sup></label>
            <div class="col-sm-8">
                <select class="form-control" name="jenis_kelamin" style="font-size:14.5px;">
                    <option value="" hidden>--Pilih Jenis Kelamin--</option>
                    <option <?php if ($input['jenis_kelamin'] == 'Laki-laki') {
                                echo 'selected';
                            } ?> value="Laki-laki">Laki-laki</option>
                    <option <?php if ($input['jenis_kelamin'] == 'Perempuan') {
                                echo 'selected';
                            } ?> value="Perempuan">Perempuan</option>
                </select>
                <div class="text-danger text-muted"><i><?php echo form_error('jenis_kelamin') ?></i></div>
            </div>
        </div>
        <div class="form-group row mt-2">
            <label for="agama" class="col-sm-4 control-label">Agama <sup style="color:#F53F37">*</sup></label>
            <div class="col-sm-8">
                <select class="form-control" name="agama" style="font-size:14.5px;">
                    <option value="" hidden>--Pilih Agama--</option>
                    <option <?php if ($input['agama'] == 'Islam') {
                                echo 'selected';
                            } ?> value="Islam">Islam</option>
                    <option <?php if ($input['agama'] == 'Katolik') {
                                echo 'selected';
                            } ?> value="katolik">Katolik</option>
                    <option <?php if ($input['agama'] == 'Protestan') {
                                echo 'selected';
                            } ?> value="Protestan">Protestan</option>
                    <option <?php if ($input['agama'] == 'Hindu') {
                                echo 'selected';
                            } ?> value="Hindu">Hindu</option>
                    <option <?php if ($input['agama'] == 'Budha') {
                                echo 'selected';
                            } ?> value="Budha">Budha</option>
                    <option <?php if ($input['agama'] == 'Lainnya') {
                                echo 'selected';
                            } ?> value="Lainnya">Lainnya</option>
                </select>
                <div class="text-danger text-muted"><i><?php echo form_error('agama') ?></i></div>
            </div>
        </div>
        <div class="form-group row mt-2">
            <label for="kewarganegaraan" class="col-sm-4 control-label">Kewarganegaraan <sup style="color:#F53F37">*</sup></label>
            <div class="col-sm-8">
                <select class="form-control" name="kewarganegaraan" style="font-size:14.5px;">
                    <option value="" hidden>--Kewarganegaraan--</option>
                    <option <?php if ($input['kewarganegaraan'] == 'wni') {
                                echo 'selected';
                            } ?> value="wni">Warga Negara Indonesia</option>
                    <option <?php if ($input['kewarganegaraan'] == 'wna') {
                                echo 'selected';
                            } ?> value="wna">Warga Negara Asing</option>
                </select>
                <div class="text-danger text-muted"><i><?php echo form_error('kewarganegaraan') ?></i></div>
            </div>
        </div>
        <div class="form-group row mt-2">
            <label for="no_telp" class="col-sm-4 control-label">Nomor Telepon</label>
            <div class="col-sm-8">
                <input type="text" class="form-control" name="no_telp" value="<?= $input['no_telp']; ?>" placeholder="08123456789" autocomplete="off">
                <div class="text-danger text-muted"><i><?php echo form_error('no_telp') ?></i></div>
            </div>
        </div>
        <h2>Data Alamat</h2>
        <hr>
        <div class="form-group row mt-2">
            <label for="alamat" class="col-sm-4 control-label">Alamat <sup style="color:#F53F37">*</sup></label>
            <div class="col-sm-8">
                <input type="text" class="form-control" name="alamat" value="<?= $input['alamat']; ?>" placeholder="Masukkan Alamat" autocomplete="off">
                <div class="text-danger text-muted"><i><?php echo form_error('alamat') ?></i></div>
            </div>
        </div>
        <div class="form-group row mt-2">
            <label for="prov" class="col-sm-4 control-label">Kecamatan/Kabupaten/Provinsi <sup style="color:#F53F37">*</sup></label>
            <div class="col-sm-8">
                <input type="text" class="form-control" name="prov" value="<?= $input['prov']; ?>" placeholder="Kecamatan, Kabupaten, Provinsi" autocomplete="off">
                <div class="text-danger text-muted"><i><?php echo form_error('prov') ?></i></div>
            </div>
        </div>
        <h2>Pilih Jurusan</h2>
        <hr>
        <div class="form-group row mt-2">
            <label for="jurusan1" class="col-sm-4 control-label">Pilih Jurusan <sup style="color:#F53F37">*</sup></label>
            <div class="col-sm-8">
                <select class="form-control" name="jurusan1" style="font-size:14.5px;">
                    <option value="" hidden>--Jurusan--</option>
                    <option <?php if ($input['jurusan1'] == 'Akuntansi dan Keuangan Lembaga') {
                                echo 'selected';
                            } ?> value="Akuntansi dan Keuangan Lembaga">Akuntansi dan Keuangan Lembaga</option>
                    <option <?php if ($input['jurusan1'] == 'Otomatisasi dan Tata Kelola Perkantoran') {
                                echo 'selected';
                            } ?> value="Otomatisasi dan Tata Kelola Perkantoran">Otomatisasi dan Tata Kelola Perkantoran</option>
                    <option <?php if ($input['jurusan1'] == 'Desain Pemodelan dan Informasi Bangunan') {
                                echo 'selected';
                            } ?> value="Desain Pemodelan dan Informasi Bangunan">Desain Pemodelan dan Informasi Bangunan</option>
                    <option <?php if ($input['jurusan1'] == 'Teknik Komputer dan Jaringan') {
                                echo 'selected';
                            } ?> value="Teknik Komputer dan Jaringan">Teknik Komputer dan Jaringan</option>
                    <option <?php if ($input['jurusan1'] == 'Teknik Kendaraan Ringan Otomotif') {
                                echo 'selected';
                            } ?> value="Teknik Kendaraan Ringan Otomotif">Teknik Kendaraan Ringan Otomotif</option>
                    <option <?php if ($input['jurusan1'] == 'Teknik Instalasi Tenaga Listrik') {
                                echo 'selected';
                            } ?> value="Teknik Instalasi Tenaga Listrik">Teknik Instalasi Tenaga Listrik</option>
                    <option <?php if ($input['jurusan1'] == 'Teknik dan Bisnis Sepeda Motor') {
                                echo 'selected';
                            } ?> value="Teknik dan Bisnis Sepeda Motor">Teknik dan Bisnis Sepeda Motor</option>
                </select>
                <div class="text-danger text-muted"><i><?php echo form_error('jurusan1') ?></i></div>
            </div>
        </div>
        <!-- <div class="form-group row mt-2">
            <label for="jurusan2" class="col-sm-4 control-label">Pilih Jurusan 2 <sup style="color:#F53F37">*</sup></label>
            <div class="col-sm-8">
                <select class="form-control" name="jurusan2" style="font-size:14.5px;">
                    <option value="" hidden>--Jurusan 2--</option>
                    <option <?php if ($input['jurusan2'] == 'Akuntansi Keuangan Lembaga') {
                                echo 'selected';
                            } ?> value="Akuntansi Keuangan Lembaga">Akuntansi Keuangan Lembaga</option>
                    <option <?php if ($input['jurusan2'] == 'Otomatisasi Tata Kelola Perkantoran') {
                                echo 'selected';
                            } ?> value="Otomatisasi Tata Kelola Perkantoran">Otomatisasi Tata Kelola Perkantoran</option>
                    <option <?php if ($input['jurusan2'] == 'Desain Pemodelan dan Informasi Bangunan') {
                                echo 'selected';
                            } ?> value="Desain Pemodelan dan Informasi Bangunan">Desain Pemodelan dan Informasi Bangunan</option>
                    <option <?php if ($input['jurusan2'] == 'Teknik Komputer dan Jaringan') {
                                echo 'selected';
                            } ?> value="Teknik Komputer dan Jaringan">Teknik Komputer dan Jaringan</option>
                    <option <?php if ($input['jurusan2'] == 'Teknik Kendaraan Ringan Otomotif') {
                                echo 'selected';
                            } ?> value="Teknik Kendaraan Ringan Otomotif">Teknik Kendaraan Ringan Otomotif</option>
                    <option <?php if ($input['jurusan2'] == 'Teknik Instalasi Tenaga Listrik') {
                                echo 'selected';
                            } ?> value="Teknik Instalasi Tenaga Listrik">Teknik Instalasi Tenaga Listrik</option>
                    <option <?php if ($input['jurusan2'] == 'Teknik dan Bisnis Sepeda Motor') {
                                echo 'selected';
                            } ?> value="Teknik dan Bisnis Sepeda Motor">Teknik dan Bisnis Sepeda Motor</option>
                </select>
                <div class="text-danger text-muted"><i><?php echo form_error('jurusan2') ?></i></div>
            </div>
        </div> -->
        <h2>Data Orang Tua</h2>
        <hr>
        <div class="form-group row mt-2">
            <label for="ayah_kandung" class="col-sm-4 control-label">Nama Ayah Kandung <sup style="color:#F53F37">*</sup></label>
            <div class="col-sm-8">
                <input type="text" class="form-control" name="ayah_kandung" value="<?= $input['ayah_kandung']; ?>" placeholder="Masukkan Nama Ayah Kandung" autocomplete="off">
                <div class="text-danger text-muted"><i><?php echo form_error('ayah_kandung') ?></i></div>
            </div>
        </div>
        <div class="form-group row mt-2">
            <div class="col-sm-1"></div>
            <label for="pekerjaan_ayah" class="col-sm-3 control-label">Pekerjaan Ayah <sup style="color:#F53F37">*</sup></label>
            <div class="col-sm-8">
                <input type="text" class="form-control" name="pekerjaan_ayah" value="<?= $input['pekerjaan_ayah']; ?>" placeholder="Masukkan Pekerjaan Ayah" autocomplete="off">
                <div class="text-danger text-muted"><i><?php echo form_error('pekerjaan_ayah') ?></i></div>
            </div>
        </div>
        <div class="form-group row mt-2">
            <label for="ibu_kandung" class="col-sm-4 control-label">Nama Ibu Kandung <sup style="color:#F53F37">*</sup></label>
            <div class="col-sm-8">
                <input type="text" class="form-control" name="ibu_kandung" value="<?= $input['ibu_kandung']; ?>" placeholder="Masukkan Nama Ibu Kandung" autocomplete="off">
                <div class="text-danger text-muted"><i><?php echo form_error('ibu_kandung') ?></i></div>
            </div>
        </div>
        <div class="form-group row mt-2">
            <div class="col-sm-1"></div>
            <label for="pekerjaan_ibu" class="col-sm-3 control-label">Pekerjaan Ibu <sup style="color:#F53F37">*</sup></label>
            <div class="col-sm-8">
                <input type="text" class="form-control" name="pekerjaan_ibu" value="<?= $input['pekerjaan_ibu']; ?>" placeholder="Masukkan Pekerjaan Ibu" autocomplete="off">
                <div class="text-danger text-muted"><i><?php echo form_error('pekerjaan_ibu') ?></i></div>
            </div>
        </div>
        <div class="form-group row mt-2">
            <label for="alamat_ortu" class="col-sm-4 control-label">Alamat Orang Tua <sup style="color:#F53F37">*</sup></label>
            <div class="col-sm-8">
                <input type="text" class="form-control" name="alamat_ortu" value="<?= $input['alamat_ortu']; ?>" placeholder="Masukkan Alamat Orang Tua" autocomplete="off">
                <div class="text-danger text-muted"><i><?php echo form_error('alamat_ortu') ?></i></div>
            </div>
        </div>
        <div class="form-group row mt-2">
            <label for="telp_ortu" class="col-sm-4 control-label">Telepon <sup style="color:#F53F37">*</sup></label>
            <div class="col-sm-8">
                <input type="text" class="form-control" name="telp_ortu" value="<?= $input['telp_ortu']; ?>" placeholder="08123456789" autocomplete="off">
                <div class="text-danger text-muted"><i><?php echo form_error('telp_ortu') ?></i></div>
            </div>
        </div>
        <h2>Wali Siswa</h2>
        <hr>
        <div class="form-group row mt-2">
            <label for="nama_wali" class="col-sm-4 control-label">Nama Wali</label>
            <div class="col-sm-8">
                <input type="text" class="form-control" name="nama_wali" value="<?= $input['nama_wali']; ?>" placeholder="Masukkan Nama Wali" autocomplete="off">
                <div class="text-danger text-muted"><i><?php echo form_error('nama_wali') ?></i></div>
            </div>
        </div>
        <div class="form-group row mt-2">
            <!-- <div class="col-sm-1"></div> -->
            <label for="pekerjaan_wali" class="col-sm-4 control-label">Pekerjaan </label>
            <div class="col-sm-8">
                <input type="text" class="form-control" name="pekerjaan_wali" value="<?= $input['pekerjaan_wali']; ?>" placeholder="Masukkan Pekerjaan" autocomplete="off">
                <div class="text-danger text-muted"><i><?php echo form_error('pekerjaan_wali') ?></i></div>
            </div>
        </div>
        <div class="form-group row mt-2">
            <label for="alamat_wali" class="col-sm-4 control-label">Alamat Wali </label>
            <div class="col-sm-8">
                <input type="text" class="form-control" name="alamat_wali" value="<?= $input['alamat_wali']; ?>" placeholder="Masukkan Alamat" autocomplete="off">
                <div class="text-danger text-muted"><i><?php echo form_error('alamat_wali') ?></i></div>
            </div>
        </div>
        <div class="form-group row mt-2">
            <label for="telp_wali" class="col-sm-4 control-label">Telepon </label>
            <div class="col-sm-8">
                <input type="text" class="form-control" name="telp_wali" value="<?= $input['telp_wali']; ?>" placeholder="08123456789" autocomplete="off">
                <div class="text-danger text-muted"><i><?php echo form_error('telp_wali') ?></i></div>
            </div>
        </div>

        <h2>Data Pendidikan</h2>
        <hr>
        <div class="form-group row mt-2">
            <label for="asal_sekolah" class="col-sm-4 control-label">Asal Sekolah <sup style="color:#F53F37">*</sup></label>
            <div class="col-sm-8">
                <input type="text" class="form-control" name="asal_sekolah" value="<?= $input['asal_sekolah']; ?>" placeholder="Asal Sekolah" autocomplete="off">
                <div class="text-danger text-muted"><i><?php echo form_error('asal_sekolah') ?></i></div>
            </div>
        </div>
        <div class="form-group row mt-2">
            <label for="alamat_sekolah" class="col-sm-4 control-label">Alamat Asal Sekolah</label>
            <div class="col-sm-8">
                <input type="text" class="form-control" name="alamat_sekolah" value="<?= $input['alamat_sekolah']; ?>" placeholder="Alamat Asal Sekolah" autocomplete="off">
                <div class="text-danger text-muted"><i><?php echo form_error('alamat_sekolah') ?></i></div>
            </div>
        </div>
        <div class="form-group row mt-2">
            <label for="tahun_lulus" class="col-sm-4 control-label">Tahun Lulus <sup style="color:#F53F37">*</sup></label>
            <div class="col-sm-8">
                <div class="input-group">
                    <input type="text" class="form-control" id="yearpicker" name="tahun_lulus" value="<?= $input['tahun_lulus']; ?>" readonly>
                    <div class="input-group-addon">
                        <i class="fa fa-calendar"></i>
                    </div>
                </div>
                <div class="text-danger text-muted"><i><?php echo form_error('tahun_lulus') ?></i></div>
            </div>
        </div>
        <h2>Pernyataan dan Keamanan</h2>
        <hr />
        <div class="form-group row mt-2">
            <label for="pernyataan" class="col-sm-4 control-label">Pernyataan <sup style="color:#F53F37">*</sup></label>
            <div class="col-sm-8">
                <input type="checkbox" name="pernyataan" required>
                Saya menyatakan dengan sesungguhnya bahwa isian data dalam formulir ini adalah benar. Apabila ternyata data tersebut tidak benar / palsu, maka saya bersedia menerima sanksi berupa <strong>Pembatalan</strong> sebagai Calon Peserta Didik <span>SMK Negeri 1 Kabupaten Sorong.</span>
            </div>
        </div>
        <hr />
        <div class="form-group row mt-2">
            <label class="col-sm-4 control-label"></label>
            <div class="row">
                <div class="col-sm-2">
                    <button class="btn btn-warning btn-block" data-rel="back"><i class="glyphicon glyphicon-send"></i> &nbsp;&nbsp;Daftar</button>
                </div>
                <div class="col-sm-2">
                    <a href="<?= site_url('psb') ?>" class="btn btn-danger btn-block">Batal</a>
                </div>
            </div>
        </div>
    </div>
    </form>
</section>
<script>
    $("#nisn").inputFilter(function(value) {
        return /^\d*$/.test(value) && (value === "" || parseInt(value.length) <= 10);
    });
    $("#nik").inputFilter(function(value) {
        return /^\d*$/.test(value) && (value === "" || parseInt(value.length) <= 16);
    });
</script>
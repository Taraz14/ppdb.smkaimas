<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>

<style>
    .alert {
        background-color: orange;
    }

    .f-wht {
        color: white;
    }

    span,
    h2 {
        color: #078D75;
    }
</style>
<!-- BLOG -->
<form action="<?= site_url('daftar/print') ?>" method="post">
    <input type="hidden" name="nomor_pendaftar" value="<?= $getData->nomor_pendaftar; ?>">
    <input type="hidden" name="nama" value="<?= $getData->nama_lengkap; ?>">
    <input type="hidden" name="nisn" value="<?= $getData->nisn; ?>">
    <input type="hidden" name="tanggal_lahir" value="<?= $getData->tanggal_lahir; ?>">
    <input type="hidden" name="tempat_lahir" value="<?= $getData->tempat_lahir; ?>">

    <section class="blog">
        <div class="page-header">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="row">
                            <div class="col-md-6">
                                <h1><span>Bukti Pendaftaran Anda : <?= $getData->nomor_pendaftar; ?></span></h1>
                            </div>
                            <div class="col-md-6">
                                <button class="btn btn-success pull-right" formtarget="_blank"><i class="fa fa-print"></i> Print</button>

                            </div>
                        </div>
                        <div class="p-b-20 alert bgm-orange f-wht"><strong>PERHATIAN!</strong> Nomor Pendaftaran digunakan untuk melakukan tes online dan cek hasil seleksi, harap <strong>disimpan</strong>.</div>
                    </div>
                </div>
            </div>
        </div>
        <br>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="text-muted">Nomor Pendaftaran :</label>
                                <p><strong><?= $getData->nomor_pendaftar; ?></strong></p>
                            </div>

                            <div class="form-group">
                                <label class="text-muted">Nama Calon Siswa :</label>
                                <p><strong><?= $getData->nama_lengkap; ?></strong></p>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="text-muted">NISN :</label>
                                <p><strong><?= $getData->nisn; ?></strong></p>
                            </div>

                            <div class="form-group">
                                <label class="text-muted">Tanggal Lahir :</label>
                                <?php $ttl = date('Y-m-d', strtotime($getData->tanggal_lahir)); ?>
                                <p><strong><?= $getData->tempat_lahir . ', ' . tanggal($ttl); ?></strong></p>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="col-md-12">
                    <table class="table table-bordered table-sm">
                        <tr style="color:white; background-color:#024380">
                            <th colspan="2" class="text-center">Verifikasi/Uji Kompetensi</th>
                        </tr>
                        <tr>
                            <td colspan="2" class="text-center" style="background-color: khaki;"><b>TEST ONLINE</b></td>
                        </tr>
                        <tr>
                            <td>Tanggal : </td>
                            <td>28 Juni 2021 s/d 02 Juli 2021</td>
                        </tr>
                        <tr>
                            <td>Melalui : </td>
                            <td><a href="https://ppdb.smkn1kabsorong.sch.id/">https://ppdb.smkn1kabsorong.sch.id/</a> </td>
                        </tr>
                        <tr>
                            <td colspan="2" class="text-center" style="background-color: khaki;"><b>TEST OFFLINE</b></td>
                        </tr>
                        <tr>
                            <td>Tanggal : </td>
                            <td>01 Juli 2021 s/d 02 Juli 2021</td>
                        </tr>
                        <tr>
                            <td>Tempat : </td>
                            <td>SMK Negeri 1 Kabupaten Sorong</td>
                        </tr>

                    </table>
                </div>

                <div class="col-md-12">
                    <a href="<?= site_url('psb'); ?>">
                        << Kembali</a>
                </div>
            </div>
        </div>
    </section>
</form>

<script type="text/javascript">
    // window.print();
</script>
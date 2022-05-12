<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>


<section class="blog">
    <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1>Data <span style="color:#024380">Pendaftar</span></h1>
                </div>
            </div>
        </div>
    </div>
</section>
<section>
    <!-- <div class="container"> -->
    <form action="" method="POST">
        <div class="col-lg-7">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="col-md-12">
                        <?php
                        if (!validation_errors() && !empty($_POST['nisn'])) { ?>
                            <?php
                            if (strlen($_POST['nisn']) < 10) { ?>
                                <div class="form-group">
                                    <label class="col-sm-8 control-label"> NISN Kurang dari 10 digit, Harap periksa lagi! </label>
                                </div>
                                <?php } else {
                                if ($cari->num_rows() > 0) {

                                    foreach ($cari->result() as $val) :
                                ?>
                                        <table class="table table-bordered">
                                            <tr style="color:white;">
                                                <!-- <th>Data Orangtua</th> -->
                                                <td class="text-center" style="background-color:#719AFF;" colspan="2"><strong>Data Pribadi</strong></td>
                                            </tr>
                                            <tr>
                                                <th>Nomor Pendaftar</th>
                                                <td><strong><?php gaskan($val->nomor_pendaftar) ?></strong></td>
                                            </tr>
                                            <tr>
                                                <th>Nama Lengkap</th>
                                                <td class="uppercase"><?php gaskan($val->nama_lengkap); ?></td>
                                            </tr>
                                            <tr>
                                                <th>NISN</th>
                                                <td><?php gaskan($val->nisn); ?></td>
                                            </tr>

                                            <tr>
                                                <th>Tanggal Lahir</th>
                                                <td><?php gaskan(tanggal($val->tanggal_lahir)); ?></td>
                                            </tr>
                                            <tr>
                                                <th>Jenis Kelamin</th>
                                                <td><?php gaskan($val->jenis_kelamin); ?></td>
                                            </tr>

                                            <tr>
                                                <th>No. Telp. </th>
                                                <td><?= empty($val->no_telp) ? '-' : $val->no_telp; ?></td>
                                            </tr>
                                            <tr>
                                                <th colspan="2" class="text-center" style="background-color: #B00000;color:white"><b><i>PERHATIAN</i></b></th>
                                                <!-- <td>06 Juli 2021 s/d 10 Juli 2021</td> -->
                                            </tr>
                                            <tr>
                                                <th rowspan="2">INFO DAFTAR ULANG OFFLINE</th>
                                                <td><b>Tanggal : </b>06 Juli 2021 s/d 10 Juli 2021</td>
                                            </tr>
                                            <tr>
                                                <!-- <th>INFO DAFTAR ULANG OFFLINE</th> -->
                                                <td><b>Tempat : </b>SMK Negeri 1 Kabupaten Sorong</td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <p align="justify"><i>*Wajib menggunakan Seragam SMP/MTs dan menggunakan Standar Protokol Kesehatan yang sudah ditetapkan Pemerintah.</i></p>
                                                </td>
                                            </tr>



                                        </table>
                                        <table class="table table-bordered">
                                            <tr>
                                                <th rowspan="16">KELENGKAPAN BERKAS<br /><small><i>(Wajib dibawa saat daftar ulang)</i></small></th>
                                                <td>1. Map Merah untuk Laki-laki</td>
                                            </tr>
                                            <tr>
                                                <td>2. Map Biru untuk Perempuan</td>
                                            </tr>
                                            <tr>
                                                <td>3. Foto Copy Ijazah SMP/MTs (Jika Sudah Ada) 2 Rangkap dilegalisir </td>
                                            </tr>
                                            <tr>
                                                <td>4. Foto Copy Surat Keterangan Lulus (SKL) 2 Rangkap dilegalisir </td>
                                            </tr>
                                            <tr>
                                                <td>5. Foto Copy Kartu Keluarga 2 Rangkap</td>
                                            </tr>
                                            <tr>
                                                <td>6. Foto Copy KTP Ayah 2 Rangkap </td>
                                            </tr>
                                            <tr>
                                                <td>7. Foto Copy KTP Ibu 2 Rangkap </td>
                                            </tr>
                                            <tr>
                                                <td>8. Foto Copy Akte Kelahiran 2 Rangkap</td>
                                            </tr>
                                            <tr>
                                                <td>9. Surat Keterangan Berkelakuan Baik dari Sekolah Asal (Asli)</td>
                                            </tr>
                                            <tr>
                                                <td>10. Foto Copy Raport Semester 1, 2, 3, 4, dan 5 yang telah dilegalisir masing-masing 2 Rangkap</td>
                                            </tr>
                                            <tr>
                                                <td>11. Foto Copy KIP (Bagi Yang Memiliki) 2 Rangkap</td>
                                            </tr>
                                            <tr>
                                                <td>12. Foto Warna Ukuran 3x4 Menggunakan Seragam SMP/MTs 2 Lembar</td>
                                            </tr>
                                            <tr>
                                                <!-- <td>-</td> -->
                                                <td>&nbsp;&nbsp;&nbsp;- Latar/Background Biru untuk Laki-laki</td>
                                            </tr>
                                            <tr>
                                                <td>&nbsp;&nbsp;&nbsp;- Latar/Background Merah untuk Perempuan</td>
                                            </tr>
                                            <tr>
                                                <td>13. Foto Copy Sertifikat Prestasi (Jika Ada) 2 Rangkap</td>
                                            </tr>
                                            <tr>
                                                <td>14. Materai 10.000 (2 Lembar)</td>
                                            </tr>

                                        </table>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <input type="hidden" name="nisnx" value="<?= $val->nisn; ?>">
    <div class="col-lg-5">
        <div class="panel panel-default">
            <div class="panel-body">
                <div class="col-md-12">

                    <table class="table table-bordered">
                        <tr style="color:white;">
                            <td class="text-center" style="<?php
                                                            if ($val->kode_jurusan == 1) {
                                                                echo 'background-color:#ff0000';
                                                            }
                                                            if ($val->kode_jurusan == 2) {
                                                                echo 'background-color:#ed9532';
                                                            }
                                                            if ($val->kode_jurusan == 3) {
                                                                echo 'background-color:#0cc243';
                                                            }
                                                            if ($val->kode_jurusan == 4) {
                                                                echo 'background-color:#340332';
                                                            }
                                                            if ($val->kode_jurusan == 5) {
                                                                echo 'background-color:#428bca';
                                                            }
                                                            if ($val->kode_jurusan == 6) {
                                                                echo 'background-color:#e0a75d; color:#31363b';
                                                            }
                                                            if ($val->kode_jurusan == 7) {
                                                                echo 'background-color:#3f0000';
                                                            }
                                                            ?>" colspan="2"><strong>Selamat!!!</strong></td>
                        </tr>
                        <tr>
                            <td class="text-center" colspan="2"><strong>
                                    Anda diterima di
                                </strong>
                            </td>
                        </tr>
                        <tr>
                            <th class="text-center">Jurusan</th>
                            <td><?php gaskan($val->nama_jurusan); ?></td>

                        </tr>
                        <tr>
                            <th class="text-center">Kelas</th>
                            <td><?php gaskan($val->class_name); ?></td>
                        </tr>
                        <tr>
                            <td class="text-center" colspan="2"><strong>
                                    Informasi Sekolah dapat dilihat di sini : <a href="https://smkn1kabsorong.sch.id/info/" class="btn btn-warning btn-block" style="color:#31363b" target="_blank"><i class="fa fa-info"></i> Informasi</a>
                                </strong>
                            </td>
                        </tr>
                        <tr>
                            <th colspan="2" class="text-center" style="background-color: #B00000;color:white">
                                <p>PERHATIAN</p>
                            </th>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <p align="justify"><i>*Bagi yang dinyatakan <b style="color:#4C9BD3">Diterima/Lulus</b> hasil seleksi, diharapkan datang ke sekolah untuk mengambil Surat Pernyataan dan Rincian Biaya dengan menggunakan Seragam SMP/MTs serta menggunakan Standar Protokol Kesehatan yang sudah ditetapkan Pemerintah.</i></p>
                            </td>
                        </tr>
                    </table>

            <?php endforeach;
                                } ?>

            <?php if ($cari->num_rows() <= 0) {

                                    $cari2x = $cari2->row();
                                    if ($cari2x->cadangkan == 1 && $cari3->num_rows() > 0) {
                                        foreach ($cari3->result() as $cadang) { ?>
                        <table class="table table-bordered">
                            <tr style="color:white;">
                                <!-- <th>Data Orangtua</th> -->
                                <td class="text-center" style="background-color:#719AFF;" colspan="2"><strong>Data Pribadi</strong></td>
                            </tr>
                            <tr>
                                <th>Nomor Pendaftar</th>
                                <td><strong><?php gaskan($cadang->nomor_pendaftar) ?></strong></td>
                            </tr>
                            <tr>
                                <th>Nama Lengkap</th>
                                <td class="uppercase"><?php gaskan($cadang->nama_lengkap); ?></td>
                            </tr>
                            <tr>
                                <th>NISN</th>
                                <td><?php gaskan($cadang->nisn); ?></td>
                            </tr>

                            <tr>
                                <th>Tanggal Lahir</th>
                                <td><?php gaskan(tanggal($cadang->tanggal_lahir)); ?></td>
                            </tr>
                            <tr>
                                <th>Jenis Kelamin</th>
                                <td><?php gaskan($cadang->jenis_kelamin); ?></td>
                            </tr>
                            <tr>
                                <th>Jurusan Yang Dipilih</th>
                                <td><b><?php gaskan($cadang->jurusan1); ?></b></td>
                            </tr>

                            <tr>
                                <th>No. Telp. </th>
                                <td><?= empty($cadang->no_telp) ? '-' : $cadang->no_telp; ?></td>
                            </tr>
                            <tr>
                                <th>Status </th>
                                <td class="text-center" style="background-color:#FECB10 ;">
                                    <b>Cadangan</b>
                                </td>
                            </tr>
                            <!-- <tr>
                                <td colspan="2">
                                    <p align="justify"><i>*Bagi yang dinyatakan <b style="color:#4C9BD3">Diterima/Lulus</b> hasil seleksi, diharapkan datang ke sekolah untuk mengambil Surat Pernyataan dan Rincian Biaya dengan menggunakan Seragam SMP/MTs serta menggunakan Standar Protokol Kesehatan yang sudah ditetapkan Pemerintah.</i></p>
                                </td>
                            </tr> -->

                        </table>
                    <?php }
                                    } else {
                                        foreach ($cari2->result() as $val) :
                    ?>
                        <table class="table table-bordered">
                            <tr style="color:white;">
                                <!-- <th>Data Orangtua</th> -->
                                <td class="text-center" style="background-color:#719AFF;" colspan="2"><strong>Data Pribadi</strong></td>
                            </tr>
                            <tr>
                                <th>Nomor Pendaftar</th>
                                <td><strong><?php gaskan($val->nomor_pendaftar) ?></strong></td>
                            </tr>
                            <tr>
                                <th>Nama Lengkap</th>
                                <td class="uppercase"><?php gaskan($val->nama_lengkap); ?></td>
                            </tr>
                            <tr>
                                <th>NISN</th>
                                <td><?php gaskan($val->nisn); ?></td>
                            </tr>

                            <tr>
                                <th>Tanggal Lahir</th>
                                <td><?php gaskan(tanggal($val->tanggal_lahir)); ?></td>
                            </tr>
                            <tr>
                                <th>Jenis Kelamin</th>
                                <td><?php gaskan($val->jenis_kelamin); ?></td>
                            </tr>
                            <tr>
                                <th>Jurusan Yang Dipilih</th>
                                <td><b><?php gaskan($val->jurusan1); ?></b></td>
                            </tr>

                            <tr>
                                <th>No. Telp. </th>
                                <td><?= empty($val->no_telp) ? '-' : $val->no_telp; ?></td>
                            </tr>
                            <tr>
                                <th>Link Ujian Seleksi </th>
                                <td>
                                    <?php
                                            if ($val->jurusan1 == "Akuntansi dan Keuangan Lembaga") {
                                                if (!empty($val->nilai)) {
                                                    echo "<button class='btn bg-maroon btn-flat margin' disabled>Sudah Mengikuti Ujian Tes Seleksi</button>";
                                                } else {
                                                    echo "<a href='https://forms.gle/kfj3QVPiw22JT9KTA' class='btn bg-navy btn-flat margin'>Mulai Ujian Tes Seleksi</a>";
                                                }
                                            }
                                            if ($val->jurusan1 == "Otomatisasi dan Tata Kelola Perkantoran") {
                                                if (!empty($val->nilai)) {
                                                    echo "<button class='btn bg-maroon btn-flat margin' disabled>Sudah Mengikuti Ujian Tes Seleksi</button>";
                                                } else {
                                                    echo "<a href='https://forms.gle/hYwZV18TPzw45eEH9' class='btn bg-navy btn-flat margin'>Mulai Ujian Tes Seleksi</a>";
                                                }
                                            }
                                            if ($val->jurusan1 == "Desain Pemodelan dan Informasi Bangunan") {
                                                if (!empty($val->nilai)) {
                                                    echo "<button class='btn bg-maroon btn-flat margin' disabled>Sudah Mengikuti Ujian Tes Seleksi</button>";
                                                } else {
                                                    echo "<a href='https://forms.gle/UBe6ab7ALRFjARCR9' class='btn bg-navy btn-flat margin'>Mulai Ujian Tes Seleksi</a>";
                                                }
                                            }
                                            if ($val->jurusan1 == "Teknik Komputer dan Jaringan") {
                                                if (!empty($val->nilai)) {
                                                    echo "<button class='btn bg-maroon btn-flat margin' disabled>Sudah Mengikuti Ujian Tes Seleksi</button>";
                                                } else {

                                                    echo "<a href='https://forms.gle/XnDJjJShHuxpPMfWA' class='btn bg-navy btn-flat margin'>Mulai Ujian Tes Seleksi</a>";
                                                }
                                            }
                                            if ($val->jurusan1 == "Teknik Kendaraan Ringan Otomotif") {
                                                if (!empty($val->nilai)) {
                                                    echo "<button class='btn bg-maroon btn-flat margin' disabled>Sudah Mengikuti Ujian Tes Seleksi</button>";
                                                } else {
                                                    echo "<a href='https://forms.gle/a9wygs1T9nopM5729' class='btn bg-navy btn-flat margin'>Mulai Ujian Tes Seleksi</a>";
                                                }
                                            }
                                            if ($val->jurusan1 == "Teknik Instalasi Tenaga Listrik") {
                                                if (!empty($val->nilai)) {
                                                    echo "<button class='btn bg-maroon btn-flat margin' disabled>Sudah Mengikuti Ujian Tes Seleksi</button>";
                                                } else {
                                                    echo "<a href='https://forms.gle/RhekyP52K6suz6uh9' class='btn bg-navy btn-flat margin'>Mulai Ujian Tes Seleksi</a>";
                                                }
                                            }
                                            if ($val->jurusan1 == "Teknik dan Bisnis Sepeda Motor") {
                                                if (!empty($val->nilai)) {
                                                    echo "<button class='btn bg-maroon btn-flat margin' disabled>Sudah Mengikuti Ujian Tes Seleksi</button>";
                                                } else {
                                                    echo "<a href='https://forms.gle/AMpYsqU4QDYqCARZ9' class='btn bg-navy btn-flat margin'>Mulai Ujian Tes Seleksi</a>";
                                                }
                                            }
                                    ?>
                                </td>
                            </tr>
                            <!-- <tr>
                                                        <td colspan="2">
                                                            <p align="justify"><i>*Bagi yang dinyatakan <b style="color:#4C9BD3">Diterima/Lulus</b> hasil seleksi, diharapkan datang ke sekolah untuk mengambil Surat Pernyataan dan Rincian Biaya dengan menggunakan Seragam SMP/MTs serta menggunakan Standar Protokol Kesehatan yang sudah ditetapkan Pemerintah.</i></p>
                                                        </td>
                                                    </tr> -->

                        </table>
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-5">
        <div class="panel panel-default">
            <div class="panel-body">
                <div class="col-md-12">

                    <table class="table table-bordered table-sm" width="100%">
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
                        <tr>
                            <td colspan="2" class="text-center" style="background-color: khaki;"><b>PENGUMUMAN HASIL TEST ONLINE</b></td>
                        </tr>
                        <tr>
                            <td>Tanggal : </td>
                            <td>05 Juli 2021</td>
                        </tr>
                        <tr>
                            <td>Melalui : </td>
                            <td><a href="https://ppdb.smkn1kabsorong.sch.id/">https://ppdb.smkn1kabsorong.sch.id/</a> </td>
                        </tr>
                        <tr>
                            <td colspan="2" class="text-center" style="background-color: khaki;"><b>PENGUMUMAN HASIL TEST OFFLINE</b></td>
                        </tr>
                        <tr>
                            <td>Tanggal : </td>
                            <td>05 Juli 2021</td>
                        </tr>
                        <tr>
                            <td>Melalui : </td>
                            <td>SMK Negeri 1 Kabupaten Sorong</td>
                        </tr>
                        <tr>
                            <td class="text-center" colspan="2"><strong>
                                    Informasi Sekolah dapat dilihat di sini : <a href="https://smkn1kabsorong.sch.id/info/" class="btn btn-warning btn-block" style="color:white" target="_blank"><i class="fa fa-info"></i> Informasi</a>
                                </strong>
                            </td>
                        </tr>
                    </table>

    <?php
                                        endforeach;
                                    }
                                }
                            }
                        } else { ?>
    <div class="form-group">
        <label class="col-sm-8 control-label"> Harap isi NISN! </label>
    </div>
                </div>
            </div>
        <?php } ?>
        </div>
    </div>


</section>



<script type="text/javascript">
    var elems = document.getElementsByClassName('confirmation');
    var confirmIt = function(e) {
        if (!confirm('Siap Mengikuti Tes?')) e.preventDefault();
    };
    for (var i = 0, l = elems.length; i < l; i++) {
        elems[i].addEventListener('click', confirmIt, false);
    }
</script>
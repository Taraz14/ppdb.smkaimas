<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>


<section class="blog">
    <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1>Hasil Pencarian <span> Data Pendaftar</span></h1>
                </div>
            </div>	
        </div>	
    </div>
</section>
<section>
    <div class="container">
        <form action="" method="POST">
        <div class="col-lg-7">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="col-md-12">
                    <?php 
                        // if($_SERVER['REQUEST_METHOD'] == 'POST'){
                            if(!validation_errors() && !empty($_POST['nisn'])){ ?>
                            <?php foreach($cari as $val): ?>
                                <table class="table table-bordered">
                                    <tr style="color:white;">
                                        <!-- <th>Data Orangtua</th> -->
                                        <td class="text-center" style="background-color:#719AFF;" colspan="2"><strong>Data Pribadi</strong></td>
                                    </tr>
                                    <tr>
                                        <th>Nomor Pendaftar</th>
                                        <td><strong><?php gaskan( $val->nomor_pendaftar)?></strong></td>
                                    </tr>
                                    <tr>
                                        <th>Nama Lengkap</th>
                                        <td class="uppercase"><?php gaskan( $val->nama_lengkap); ?></td>
                                    </tr>
                                    <tr>
                                        <th>NISN</th>
                                        <td><?php gaskan( $val->nisn); ?></td>
                                    </tr>
                                    <tr>
                                        <th>Tempat Lahir</th>
                                        <td><?php gaskan( $val->tempat_lahir); ?></td>
                                    </tr>
                                    <tr>
                                        <th>Tanggal Lahir</th>
                                        <td><?php gaskan( tanggal($val->tanggal_lahir)); ?></td>
                                    </tr>
                                    <tr>
                                        <th>Jenis Kelamin</th>
                                        <td><?php gaskan( $val->jenis_kelamin); ?></td>
                                    </tr>
                                    <tr>
                                        <th>Agama</th>
                                        <td><?php gaskan( $val->agama); ?></td>
                                    </tr>
                                    <tr>
                                        <th>Alamat</th>
                                        <td><?php gaskan( $val->alamat); ?></td>
                                    </tr>
                                    <tr>
                                        <th>Kewarganegaraan</th>
                                        <td><?php gaskan( $val->kewarganegaraan); ?></td>
                                    </tr>
                                    <tr>
                                        <th>No. Telp. </th>
                                        <td><?= empty($val->no_telp) ? '-':$val->no_telp; ?></td>
                                    </tr>
                                    <tr>
                                        <th>Diterima di Jurusan</th>
                                        <td><?php gaskan( $val->nama_jurusan); ?></td>
                                    </tr>
                                    <tr style="color:white;">
                                        <!-- <th>Data Orangtua</th> -->
                                        <td class="text-center" style="background-color:#719AFF;" colspan="2"><strong>Data Orangtua</strong></td>
                                    </tr>
                                    <tr>
                                        <th>Nama Ayah</th>
                                        <td><?php gaskan( $val->ayah_kandung); ?></td>
                                    </tr>
                                    <tr>
                                        <th>Pekerjaan Ayah</th>
                                        <td><?php gaskan( $val->pekerjaan_ayah); ?></td>
                                    </tr>
                                    <tr>
                                        <th>Nama Ibu</th>
                                        <td><?php gaskan( $val->ibu_kandung); ?></td>
                                    </tr>
                                    <tr>
                                        <th>Pekerjaan Ibu</th>
                                        <td><?php gaskan( $val->pekerjaan_ibu); ?></td>
                                    </tr>
                                    <tr>
                                        <th>Alamat Orangtua</th>
                                        <td><?php gaskan( $val->alamat_ortu); ?></td>
                                    </tr>
                                    <tr>
                                        <th>No. Telp. </th>
                                        <td><?php gaskan( $val->telp_ortu); ?></td>
                                    </tr>
                                    <tr style="color:white;">
                                        <!-- <th>Data Orangtua</th> -->
                                        <td class="text-center" style="background-color:#719AFF;" colspan="2"><strong>Data Wali</strong></td>
                                    </tr>
                                    <tr>
                                        <th>Nama Wali</th>
                                        <td><?php gaskan( empty($val->nama_wali) ? '-':$val->nama_wali); ?></td>
                                    </tr>
                                    <tr>
                                        <th>Pekerjaan Wali</th>
                                        <td><?php gaskan( empty($val->pekerjaan_wali) ? '-':$val->pekerjaan_wali); ?></td>
                                    </tr>
                                    <tr>
                                        <th>Alamat Wali</th>
                                        <td><?php gaskan( empty($val->alamat_wali) ? '-':$val->alamat_wali); ?></td>
                                    </tr>
                                    <tr>
                                        <th>Telp Wali</th>
                                        <td><?php gaskan( empty($val->telp_wali) ? '-':$val->telp_wali); ?></td>
                                    </tr>
                                    <tr style="color:white;">
                                        <!-- <th>Data Orangtua</th> -->
                                        <td class="text-center" style="background-color:#719AFF;" colspan="2"><strong>Data Sekolah Lama</strong></td>
                                    </tr>
                                    <tr>
                                        <th>Asal Sekolah</th>
                                        <td><?php gaskan( $val->asal_sekolah); ?></td>
                                    </tr>
                                    <tr>
                                        <th>Alamat Sekolah</th>
                                        <td><?= empty($val->alamat_sekolah) ? '-':$val->alamat_sekolah; ?></td>
                                    </tr>
                                    <tr>
                                        <th>Tahun Lulus</th>
                                        <td><?php gaskan( $val->tahun_lulus); ?></td>
                                    </tr>
                                    <tr>
                                        <!-- <th>Data Orangtua</th> -->
                                        <td class="text-center" style="background-color:#719AFF" colspan="2"></td>
                                    </tr>
                                </table>
                    </div>
                </div>
            </div>
        </div>
        </form>
        <form action="<?= site_url('update-test')?>" method="post">
        <input type="hidden" name="nisnx" value="<?= $val->nisn; ?>">
        <div class="col-lg-5">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="col-md-12">
                        
                        <table class="table table-bordered table-sm">
                            <tr style="color:white;">
                                <td class="text-center" style="background-color:#719AFF;" colspan="2"><strong>Tes Online</strong></td>
                            </tr>
                            <tr>
                                <td>
                                <small class="muted">Aturan : </small><br/>
                                <small> 
                                    <li>
                                        Peserta harap menyiapkan kertas dan alat tulis
                                    </li>
                                    <li>Siapkan nomor pendaftaran karena akan diminta sebelum mengerjakan soal.</li>
                                    <li>Nomor pendaftar ada di tabel data pendaftar</li>
                                    <li>Peserta <strong>WAJIB</strong> membaca aturan pada form tes online.</li>
                                    <li>Peserta <strong>hanya bisa mengikuti test online satu kali.</strong></li>
                                    <li>Setelah Peserta menekan/klik <strong>Mulai Test</strong> Peserta tidak bisa kembali ke Laman sebelumnya dan tombol <strong>Mulai Test</strong> sudah Non Aktif.</li>
                                    <li>Jika sudah siap, selamat mengikuti tes online.</li>
                                
                                </small>
                                </td>
                            </tr>
                            <tr>

                                
                                <?php if($val->is_tested == 0) { ?>
                                    <td align="center"><a class="btn btn-success btn-block disabled">Tes Online sudah ditutup</a></td>
                                    
                                                                    <!--<td align="center"><a href="https://forms.gle/TLL8dxyJpKNTpuUQ9" class="btn btn-success btn-block confirmation" target="_blank">Mulai Test</a></td>-->
                                <?php } else{ ?>
                                    <td align="center"><a class="btn btn-danger btn-block disabled">Sudah Mengikuti Tes Online</a></td>
                                <?php } ?>
                            </tr>
                        </table>
                        
                        <?php endforeach; }else{ ?>
                        <div class="form-group">
                        <label class="col-sm-8 control-label"> NISN Tidak terdaftar sebagai peserta PPDB </label>
                        <a href="<?= site_url('pendaftaran'); ?>">Daftar di sini</a>
                        </div>
                    <?php site_url('pencarian-data'); } ?>
                    </div>
                </div>
            </div>
        </div>
        </form>
    </div>
</section>
<section>
    <div class="container">
        
    </div>
</section>


<script type="text/javascript">
    var elems = document.getElementsByClassName('confirmation');
    var confirmIt = function (e) {
        if (!confirm('Siap Mengikuti Tes?')) e.preventDefault();
    };
    for (var i = 0, l = elems.length; i < l; i++) {
        elems[i].addEventListener('click', confirmIt, false);
    }
</script>
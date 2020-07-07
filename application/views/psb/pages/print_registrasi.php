<?php defined('BASEPATH') OR exit('No direct script access allowed');?>

<style>
   .alert{
        background-color:orange;
    }
    
    .f-wht{
        color:white;
    }

    span, h2 {
        color : #078D75;
    }

    .p{
        color : black;
        font-size: 30px !important;
        padding : 2px 3.5px 3px 3.5px !important;
        margin-top:5px;
        margin-left:30px;
    }
</style>
<!-- BLOG -->
<section class="blog">
    <div class="container">
        <div class="col-md-12 text-center">  
            <img src="<?= base_url('assets/image/logo/logo.png');?>" style="width:100px; margin-top:15px;">
            <p class="p">SMK Negeri 1 Kabupaten Sorong</p>
        </div>
    </div>
    <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1><span>Bukti Pendaftaran : <?= $nomor?></span></h1>
                    <div class="p-b-20 alert bgm-orange f-wht"><strong>PERHATIAN!</strong> Bukti Pendaftaran digunakan untuk melakukan tes online, cek hasil seleksi dan akan diminta oleh pihak sekolah sebagai konfirmasi pada saat pengumpulan berkas calon siswa baru, harap <strong>disimpan!</strong></div>
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
                            <p><strong><?= $nomor;?></strong></p>
                        </div>

                        <div class="form-group">
                            <label class="text-muted">Nama Calon Siswa :</label>
                            <p><strong><?= $nama;?></strong></p>
                        </div>
                    </div>
              
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="text-muted">NISN :</label>
                            <p><strong><?= $nisn;?></strong></p>
                        </div>

                        <div class="form-group">
                            <label class="text-muted">Tanggal Lahir :</label>
                            <p><strong><?= date('d-M-Y', strtotime($tanggal_lahir));?></strong></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<script type="text/javascript">
    window.print();
</script>
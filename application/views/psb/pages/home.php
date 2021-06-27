<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>

<style>
    .daftar-thumb {
        border: 10px solid transparent;
        /* margin-left: -110px; */
        /* border-image: url(<?= base_url('assets/image/content/border.png') ?>) 30 stretch; */
    }

    span {
        color: #048ED8;
    }

    .btn-mts {
        color: #fff;
        background-color: #048ED8;
        border-color: #45B5F1
    }

    .btn-mts:focus,
    .btn-mts.focus {
        color: #fff;
        background-color: #45B5F1;
        border-color: #138FD1;
    }

    .btn-mts:hover {
        color: #fff;
        background-color: #45B5F1;
        border-color: #138FD1
    }

    .btn-mts:active,
    .btn-mts.active,
    .open>.dropdown-toggle.btn-mts {
        color: #fff;
        background-color: #45B5F1;
        border-color: #138FD1
    }

    .btn-mts:active:hover,
    .btn-mts.active:hover,
    .open>.dropdown-toggle.btn-mts:hover,
    .btn-mts:active:focus,
    .btn-mts.active:focus,
    .open>.dropdown-toggle.btn-mts:focus,
    .btn-mts:active.focus,
    .btn-mts.active.focus,
    .open>.dropdown-toggle.btn-mts.focus {
        color: #fff;
        background-color: #138FD1;
        border-color: #138FD1;
    }

    .btn-mts:active,
    .btn-mts.active,
    .open>.dropdown-toggle.btn-mts {
        background-image: none;
    }

    .btn-mts.disabled:hover,
    .btn-mts[disabled]:hover,
    fieldset[disabled] .btn-mts:hover,
    .btn-mts.disabled:focus,
    .btn-mts[disabled]:focus,
    fieldset[disabled] .btn-mts:focus,
    .btn-mts.disabled.focus,
    .btn-mts[disabled].focus,
    fieldset[disabled] .btn-mts.focus {
        background-color: #048ED8;
        border-color: #45B5F1
    }

    .btn-mts .badge {
        color: #048ED8;
        background-color: #fff;
    }

    .bgm-orange {
        background-color: orange;
    }

    .bgm-red {
        background-color: red;
    }

    .f-wht {
        color: white;
    }
</style>

<!-- BLOG -->
<section class="blog">
    <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1>Selamat Datang di Halaman<br /><span>PENERIMAAN PESERTA DIDIK BARU (PPDB) <?= date('Y', time()) ?></span></h1>

                </div>
            </div>
            <div class="row">
                <div class="col-md-12 p-b-15 alert bgm-red f-wht">
                    <marquee><strong>BUDAYAKAN MEMBACA</strong></marquee>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">

            <div class="col-md-8" style="background-color:#F7F7F9 ;">
                <h1>Tata Cara Masuk Ke Ujian Seleksi</h1>
                <ul class="">
                    <!-- <ol type=">"> -->
                    <li>Klik pada menu Cari Data</li>
                    <li>Masukkan NISN</li>
                    <li>Tekan Enter/klik tombol cari</li>
                    <li>Klik Pada Tombol Mulai Ujian yang berwarna "Biru Gelap" untuk memulai ujian</li>
                    <!-- </ol> -->
                </ul>
                <hr />
                <img src="<?= base_url('assets/image/ppdb/ppdb_beranda.png') ?>" class="daftar-thumb" style="max-width:100%;">
            </div>

            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="col-md-12">

                            <table class="table table-bordered table-sm">
                                <tr style="color:white;">
                                    <td class="text-center" style="background-color:#024380;" colspan="2"><i class="fa fa-info"></i> <strong>Informasi Pendaftaran</strong></td>
                                </tr>
                                <tr style="background-color:#F7F7F9">
                                    <td>
                                        <!--<div class="p-b-20 alert bgm-orange f-wht text-center"><p class="muted"><strong><i class="fa fa-exclamation-triangle"></i> Harap dibaca </strong></p>-->
                                        <!--</div>-->
                                        <br />
                                        <!--<small> -->
                                        <!--    <li>-->
                                        <!--        Bagi para peserta yang sudah mendaftar melalui web resmi dari <strong>SMK Negeri 1 Kabupaten Sorong</strong> dapat melakukan pencarian data melalui menu <i class="fa fa-search"></i> <strong>Cari Data</strong>-->
                                        <!--    </li>-->
                                        <!--    <li>-->
                                        <!--        Bagi peserta yang belum mendaftar, dapat melakukan pendaftaran dengan klik pada link berikut : <a href="http://ppdb.disdikpabar.id/" target="_blank">http://ppdb.disdikpabar.id/</a>-->
                                        <!--    </li>-->

                                        <!--</small>-->
                                        <p class="text-center" style="font-size:30px; "><strong>Pendaftaran Telah ditutup, cek informasi selanjutnya. <a href="https://smkn1kabsorong.sch.id/informasi-ppdb-2021/">di Sini!</a></strong></p>
                                    </td>
                                </tr>
                            </table>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- END BLOG -->
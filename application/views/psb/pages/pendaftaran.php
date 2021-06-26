<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<style>
    .daftar-thumb {
        border: 10px solid transparent;
        padding: 15px;
        border-image: url(<?= base_url('assets/image/content/border.png') ?>) 30 stretch;
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

    .alert {
        background-color: orange;
    }

    .f-wht {
        color: white;
    }

    .enabling {
        display: none;
    }
</style>

<!-- BLOG -->
<section class="blog">
    <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1>Selamat Datang di Halaman<br /><span>Penerimaan Peserta Didik Baru (PPDB) 2021</span></h1>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <img src="<?= base_url('assets/image/ppdb/pendaftaran.png') ?>" class="daftar-thumb" style="max-width:100%;">
            </div>
            <div class="col-md-6">
                <?php
                if ($bt->bool == 1) { ?>
                    <div class="p-b-20 alert bgm-orange f-wht">Ayo Mendaftar di SMK!</div>
                    <a href="<?= site_url('daftar/siswa') ?>" id="daftar" class="btn btn-mts btn-block">Daftar</a>
                <?php }
                if ($bt->bool == 0) { ?>
                    <div class="p-b-20 alert bgm-orange f-wht">Pendaftaran Sudah ditutup</div>
                    <a href="#" id="daftar" class="btn btn-mts btn-block disabled">Kuota Sudah Penuh!</a>
                <?php }
                if ($bt->bool == 2) { ?>
                    <div class="p-b-20 alert bgm-orange f-wht">Pendaftaran Belum Dibuka</div>
                    <a href="#" id="daftar" class="btn btn-mts btn-block disabled">Tunggu tahun depan ya...</a>
                <?php } ?>

            </div>
        </div>
    </div>
</section>
<!-- END BLOG -->
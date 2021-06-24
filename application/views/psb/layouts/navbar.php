<?php defined('BASEPATH') or exit('No direct script access allowed');
// if(!$this->uri->segment(1) == "") :
?>
<style>
    .menu .navbar-header {
        height: 0 !important;
        padding: 0 !important;
        margin: 0 !important;
    }

    .menu .navbar-brand {
        color: #000 !important;
        font-size: 29px !important;
        padding: 0 !important;
        margin: 0 !important;
        font-family: 'Slabo 27px', serif !important;
        margin-left: 10px !important;
        font-weight: bold !important;
        letter-spacing: 1px !important;
    }

    .menu .navbar-brand span {
        color: #2796de !important;
    }

    .menu .navbar-brand .fa {
        color: #2796de !important;
        font-size: 27px !important;
        margin-right: 6px !important;
    }

    .menu .navbar-brand:hover {
        color: #000 !important;
    }

    .p {
        color: white;
        font-size: 15px !important;
        padding: 2px 3.5px 3px 3.5px !important;
    }

    .img {
        margin-top: -5px !important;
        margin-right: 15px !important;
    }

    .dropdown-menu {
        width: 300px !important;
        /* height: 400px !important; */
    }
</style>
<!-- NAVIGATION -->
<section>
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">

            <div class="menu">
                <nav class="navbar navbar-default navbar-inverse bg-inverse">
                    <div class="container">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>

                            <?php if (!$this->uri->segment(1) == '') {
                                $site = site_url();
                            } else {
                                $site = 'https://smkn1kabsorong.sch.id';
                            } ?>

                            <a class="navbar-brand" href="<?= $site; ?>">
                                <img src="<?= base_url() ?>assets/image/logo/logo.png" class="logo pull-left img" style="max-width:50px;" />
                                <p class="p">SMK Negeri 1
                                    Kabupaten Sorong</p>
                            </a>
                        </div>

                        <?php if (!$this->uri->segment(2) == 'siswa') { ?>

                            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                <ul class="nav navbar-nav navbar-right">
                                    <li class="<?php if ($this->uri->segment(1) == "") {
                                                    echo 'active';
                                                } ?>"><a href="<?= site_url() ?>"><i class="fa fa-home"></i> Beranda</a></li>
                                    <!--<li class="<?php if ($this->uri->segment(1) == "pendaftaran") {
                                                        echo 'active';
                                                    } ?>"><a href="https://drive.google.com/open?id=1G-3rmy1eHzdpf21BefGOv8ArUGsxeFBB" target="_blank">Pengumuman Kelulusan 2020 (kelas XII)</a></li>-->
                                    <li><a href="https://smkn1kabsorong.sch.id/informasi-ppdb-2021/"><i class="fa fa-info"></i> Informasi</a></li>
                                    <li class="<?php if ($this->uri->segment(1) == "pendaftaran") {
                                                    echo 'active';
                                                } ?>"><a href="<?= site_url('pendaftaran') ?>"><i class="fa fa-registered"></i> Pendaftaran</a></li>
                                    <li class="dropdown <?php if ($this->uri->segment(1) == "pencarian-data") {
                                                            echo 'active';
                                                        } ?>">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-search"></i> Cari Data</a>
                                        <ul class="dropdown-menu portfolio-list">
                                            <form name='searchdata' id="search_form" action="<?= site_url('pencarian-data') ?>" method="POST">
                                                <div class="col-sm-12">
                                                    <div class="input-group">
                                                        <input class="form-control" id="carin" type="text" name="nisn" placeholder="NISN" autocomplete="off">
                                                        <span class="input-group-btn">
                                                            <button onclick="form_submit()" class="btn btn-primary">
                                                                <i class="glyphicon glyphicon-search"></i>
                                                                Cari
                                                            </button>
                                                        </span>
                                                    </div>
                                                </div>
                                            </form>
                                        </ul>
                                    </li>
                                </ul>
                            </div> <!-- navbar-collapse -->
                        <?php } else { ?>
                            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                <ul class="nav navbar-nav navbar-right">
                                    <!--<li class="<?php if ($this->uri->segment(1) == "hasil-seleksi") {
                                                        echo 'active';
                                                    } ?>"><a href="<?= site_url('hasil-seleksi') ?>">Hasil Seleksi</a></li>-->
                                    <li class="<?php if ($this->uri->segment(1) == "") {
                                                    echo 'active';
                                                } ?>"><a href="<?= site_url('') ?>">Beranda</a></li>
                                </ul>
                            </div>
                        <?php } ?>
                    </div> <!-- container-fluid -->
                </nav>
            </div>
        </div>
    </div>
</section>
<!-- END NAVIGATION -->
<?php //endif; 
?>

<script>
    var cari = document.getElementById("search_form");
    $("#carin").inputFilter(function(value) {
        return /^\d*$/.test(value) && (value === "" || parseInt(value.length) <= 10);
    });

    function form_submit() {
        cari.submit();
    }
</script>
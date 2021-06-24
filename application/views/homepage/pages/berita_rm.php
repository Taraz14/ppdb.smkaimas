<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

<style>
    img {
        max-width : 100%;
        /* max-height : 100%; */
    }
</style>
<section class="blog">
    <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1>Berita</h1>
                    <p>Segala macam artikel dan berita terkait informasi sekolah</p>
                </div>
            </div>	
        </div>	
    </div>
    <br/>
    <div class="container">
        <!-- breadcumbs -->
        <ol class="breadcrumb no-bottom-margin">
            <li>
                <a href="<?= site_url('')?>">Home</a>
            </li>
            <li>
                <a href="<?= site_url('berita')?>">Berita</a>
            </li>
            <li class="active">
                <?= $berita->judul_b?>
            </li>
        </ol>
    </div>


    <div class="container">
        <h1><?= $berita->judul_b; ?></h1>
        <h3><i><?= $berita->sub_judul; ?></i></h3>

        <div class="options">
            <a href="#"><i class="fa fa-user"></i> <?= $berita->nama; ?></a>
            <a href="#"><i class="fa fa-calendar"></i> <?= date('d-m-Y',$berita->post_at); ?></a>
            <!-- <a href="#"><i class="fa fa-eye"></i> view 90</a> -->
        </div>
        <hr>
        <p><?= $berita->isi_b;?></p>
        <br/>
        <i class="text-muted">Tags : </i><a href="#" class="text-muted"><i>Google</i></a>
    </div>
</section>
<?php defined('BASEPATH') OR exit('No direct script access allowed'); 
    // if(!$this->uri->segment(1) == "") :
?>

<!-- NAVIGATION -->
<section>
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="menu">
                <nav class="navbar navbar-default">
                    <div class="container">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <!-- <a class="navbar-brand" href="<?= site_url()?>"><i class="fa fa-users"></i> M<span>Forum</span></a> -->
                        </div>

                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav">
                                <li class="<?php if($this->uri->segment(1) == ""){ echo 'active'; }?>"><a href="<?= site_url()?>">Beranda</a></li>
                                <li class=" dropdown">
                                    <a href="portfolio-1.html" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Profil <i class="fa fa-caret-down"></i></a>
                                    <ul class="dropdown-menu portfolio-list">
                                        <li><a href="portfolio-1.html">Selayang Pandang</a></li>
                                        <li><a href="portfolio-2.html">Visi dan Misi</a></li>
                                        <li><a href="portfolio-2.html">Struktur Organisasi</a></li>

                                    </ul>
                                </li>
                                <li class="<?php if($this->uri->segment(1) == "psb"){ echo 'active'; }?>"><a href="<?= site_url('psb')?>">PPDB (2020)</a></li>
                                <li class="<?php if($this->uri->segment(1) == "berita" || $this->uri->segment(2) == "berita"){ echo 'active'; }?>"><a href="<?= site_url('berita')?>">Berita & Artikel</a></li>
                                <li class="<?php if($this->uri->segment(1) == "blog"){ echo 'active'; }?>"><a href="<?= site_url('blog')?>">Galeri</a></li>
                                <!-- <li class="<?php if($this->uri->segment(1) == "blog"){ echo 'active'; }?>"><a href="<?= site_url('blog')?>">Blog</a></li> -->
                                <li class=" dropdown">
                                    <a href="portfolio-1.html" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Link Terkait <i class="fa fa-caret-down"></i></a>
                                    <ul class="dropdown-menu portfolio-list">
                                        <li><a href="portfolio-1.html">###</a></li>
                                        <li><a href="portfolio-2.html">###</a></li>
                                        <li><a href="portfolio-2.html">###</a></li>

                                    </ul>
                                </li>
                            </ul>
                        </div> <!-- navbar-collapse -->
                    </div> <!-- container-fluid -->
                </nav>
            </div>
        </div>
    </div>
</section>
<!-- END NAVIGATION -->
    <?php //endif; ?>
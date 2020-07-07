<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

<style>
    img {
        max-width : 380px;
        max-height : 200px;
    }

    .page-header{
        background-color : #CBFCDC !important;
    }

    .carousel-inner>.item {
        -webkit-transition: -webkit-transform 1.2s ease-in-out !important;
        -o-transition: -o-transform 1.2s ease-in-out !important;
        transition: transform 1.2s ease-in-out !important;
    }
</style>

<!-- BLOG -->
<section class="blog">
    <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="bs-carousel">
                        <div id="berita_pop" class="carousel slide" data-ride="carousel">
                            <!-- Wrapper for slides -->
                            <div class="carousel-inner" role="listbox">
                            <?php $i=0; foreach($pop as $key => $popular) :
                                $active = ($key == 0) ? 'active' : ''; ?>
                                <div class="item <?= $active; ?>">

                                    <div class="container">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <a href="<?= site_url('berita/det/'.$popular->berita_id)?>"><h3><?= $popular->judul_b; ?></h3></a>	
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <?php $i++; endforeach;?>
                            </div>	
                            
                        </div> <!-- END CAROUSEL -->
                        <!-- Controls -->
                        <!-- <a class="arrow arrow-left" href="#berita_pop" role="button" data-slide="prev">
                            <span><i class="fa fa-caret-left"></i></span>
                        </a>
                        <a class="arrow arrow-right" href="#berita_pop" role="button" data-slide="next">
                            <span><i class="fa fa-caret-right"></i></span>
                        </a> -->
                    </div>
                </div>
            </div>	
        </div>	
    </div>
    
    <br/>
    <!-- <br/> -->

    <div class="container">
        <div class="row">

        <!-- left tab -->
        <div class="col-md-8">
        
        <?php 
            $no = $this->uri->segment('3') + 1;
            foreach ($berita as $big) : ?>

            <div class="col-md-12">
                <div class="thumbnail">
                    <!-- <img src="<?= base_url()?>assets/landing/images/blog-post-1.jpg" alt=""> -->
                    <div class="caption">
                        <h3><?= $big->judul_b; ?></h3>
                        <h4 class="text-muted"><i><?= $big->sub_judul; ?></i></h4>
                        <div class="options">
                            <a href="#"><i class="fa fa-user"></i> <?= $big->nama; ?></a>
                            <!-- <a href="#"><i class="fa fa-comment"></i> comments 50</a> -->
                            <a href="#"><i class="fa fa-eye"></i> <?= $big->counts;?></a>
                        </div>
                        <p><?php 
                            $string = $big->isi_b;
                            $string = word_limiter($string, 30);
                            echo $string;
                        ?>

                        </p>
                        <br/>
                        <a href="<?= site_url('berita/det/'.$big->berita_id)?>" class="btn btn-primary">Baca Selengkapnya >></a>
                    </div>
                </div>
            </div>	
        <?php endforeach;  ?>
            <!-- <h3 class="text-center">No data</h3> -->
        
        </div>
        
        <!-- right tab -->
        <div class="col-md-4">

            <div class="col-md-12">
                <h1>Berita Populer #</h1>
                <hr style="width:100%;" />
                <?php foreach($pop as $val) : ?>
                    <div class="media">
                        <div class="media-left">
                            <a><img src="data:image/svg+xml;charset=UTF-8,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2264%22%20height%3D%2264%22%20viewBox%3D%220%200%2064%2064%22%20preserveAspectRatio%3D%22none%22%3E%3C!--%0ASource%20URL%3A%20holder.js%2F64x64%3Ftheme%3Dsky%0ACreated%20with%20Holder.js%202.8.0.%0ALearn%20more%20at%20http%3A%2F%2Fholderjs.com%0A(c)%202012-2015%20Ivan%20Malopinsky%20-%20http%3A%2F%2Fimsky.co%0A--%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%3C!%5BCDATA%5B%23holder_151ceca9a56%20text%20%7B%20fill%3A%23FFFFFF%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A10pt%20%7D%20%5D%5D%3E%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_151ceca9a56%22%3E%3Crect%20width%3D%2264%22%20height%3D%2264%22%20fill%3D%22%230D8FDB%22%2F%3E%3Cg%3E%3Ctext%20x%3D%2212.5%22%20y%3D%2236.8%22%3E64x64%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" alt="64x64" class="media-object"></a>
                        </div>
                        <div class="media-body">
                            <a href="<?= site_url('berita/det/'.$val->berita_id)?>" class="">
                                <h4 class="media-heading">
                                    <?= $val->judul_b; ?>
                                </h4>
                            </a>
                            <p class="text-muted"><i><?= $val->sub_judul; ?></i></p>
                        </div>
                    </div>    
                <?php endforeach; ?>

                <br>
                <!-- Archive dropdown -->
                <!-- <h1>Arsip #</h1>
                <hr style="width:100%;" />
                <div class="media">
                    <?php foreach ($arsip as $ar) : ?>
                        <a href="<?= site_url('berita/det/'.$ar->berita_id)?>" class="">
                            <p class="media-heading">
                                <li>
                                    <?= word_limiter($ar->judul_b, 2); ?> / <?= date('d-m-Y',$ar->post_at);?>
                                </li>
                            </p>
                        </a>
                    <?php endforeach; ?>
                    <a href="#"> >> Lihat Semua Arsip</a>
                </div> -->


            </div>
        </div>	


        </div>

    </div>
    <div class="container">
        <div class="col-md-12 text-center">
            <nav>
                <ul class="pagination no-bottom-margin">
                    <!-- <li class="disabled">
                        <a><span>«</span></a>
                    </li>
              
                    <li>
                        <a>»</a>
                    </li> -->
                    <?= $this->pagination->create_links(); ?> 
                </ul>
            </nav>
        </div>

    </div>
</section>
<!-- END BLOG -->

<script>
    $('#berita_pop').carousel({
        interval : 3000,
    })
</script>
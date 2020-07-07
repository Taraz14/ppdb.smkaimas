<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

<style>
  .logo{
    margin-right : 30px;
  }
</style>
<!DOCTYPE html>
<html lang="en">
    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">

      <title>MTs | <?= $title; ?></title>
      <!-- ALL STYLESHEET -->
      <link href="<?= base_url()?>assets/landing/bootstrap/css/bootstrap.min.css" rel="stylesheet">
      <link href="<?= base_url()?>assets/landing/css/font-awesome.min.css" rel="stylesheet">
      <link href="<?= base_url()?>assets/landing/css/style.css" rel="stylesheet">
      <link href="<?= base_url()?>assets/landing/css/blog-single.css" rel="stylesheet">
      <link href="<?= base_url()?>assets/landing/css/responsive.css" rel="stylesheet">
    </head>
    
    <body>
        <!-- ALL JAVASCRIPT -->         
        <script src="<?= base_url()?>assets/landing/js/jquery.js"></script>
        <script src="<?= base_url()?>assets/landing/bootstrap/js/bootstrap.min.js"></script>
        <script src="<?= base_url()?>assets/landing/js/custom.js"></script>

        <!-- HEADER -->
        <section class="header">
          <div class="header-area">
            <div class="container">
              <div class="row">
                <div class="col-md-6">
                  <div class="header-left">
                    <img src="<?= base_url()?>assets/image/logo/logo.png" class="logo pull-left" style="max-width:150px;"/>
                    <br/>
                    <h2 id="text-logo">SMK Negeri 1<br/>Kabupaten Sorong</h2>
                    <ul class="list-inline">
                      <li><a class="question" href="#">Ada Pertanyaan?</a></li>
                      <li><a href="#" target="_blank"><i class="fa fa-envelope-o"></i> dimaz.taraz@gmail.com</a></li>
                      <li><a href="https://api.whatsapp.com/send?phone=6281393484770" target="_blank"><i class="fa fa-phone"></i> +62 813 9344 8770</a></li>
                    </ul>
                  </div>
                </div>
                
                <div class="col-md-6 mt-5">
                  <ul class="list-inline header-social-links pull-right">
                    <li><a href="#"><i class="fa fa-facebook s-link"></i></a></li>
                    <li><a href="#"><i class="fa fa-twitter s-link"></i></a></li>
                    <li><a href="#"><i class="fa fa-pinterest s-link"></i></a></li>
                    <li><a href="#"><i class="fa fa-google-plus s-link"></i></a></li>
                    <!-- <li><a href="#"><img src="<?= base_url()?>assets/landing/images/is.png" alt="language" /> <i class="fa fa-angle-down"></i></a></li> -->
                    
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <hr>
        </section>
        <!-- END HEADER -->
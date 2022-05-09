<?php
defined('BASEPATH') or exit('No direct script access allowed');
?>

<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">

  <!-- sidebar: style can be found in sidebar.less -->
  <section class="sidebar">

    <!-- Sidebar user panel (optional) -->
    <!-- <div class="user-panel">
    <div class="pull-left image">
      <img src="<?= base_url(); ?>assets/5b43112/dist/img/avatar6.jpg" class="img-circle" alt="User Image">
    </div>
    <div class="pull-left info">
      <p><?= $auth_username; ?></p>
    </div>
  </div> -->

    <!-- admin -->
    <?php if ($auth_role == 'admin') { ?>
      <!-- Sidebar Menu -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">Menu Utama</li>
        <!-- Optionally, you can add icons to the links -->
        <li class="<?php if ($this->uri->segment(2) == 'dashboard') {
                      echo 'active';
                    } ?>"><a href="<?= site_url($auth_role . '/dashboard'); ?>"><i class="glyphicon glyphicon-home"></i> <span>Dashboard</span></a></li>
        <li class="<?php if ($this->uri->segment(2) == 'guru') {
                      echo 'active';
                    } ?>"><a href="<?= site_url('admin/guru') ?>"><i class="fa fa-users"></i> <span>Data Guru</span></a></li>
        <li class="<?php if ($this->uri->segment(2) == 'kelas') {
                      echo 'active';
                    } ?>"><a href="<?= site_url('admin/kelas'); ?>"><i class="glyphicon glyphicon-blackboard"></i> <span>Kelas</span></a></li>
        <li class="treeview">
          <a href="#"><i class="fa fa-link"></i> <span>Data Siswa</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="#">Master Siswa</a></li>
            <li><a href="#">Administrasi</a></li>
          </ul>
        </li>

        <li class="treeview  <?php if ($this->uri->segment(2) == 'berita') {
                                echo 'active' . ' menu-open';
                              } ?>">
          <a href="#"><i class="glyphicon glyphicon-bullhorn"></i> <span>Berita Acara</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="<?php if ($this->uri->segment(2) == 'berita') {
                          echo 'active';
                        } ?>"><a href="<?= site_url('admin/berita') ?>">Berita</a></li>
            <li><a href="#">Pengumuman</a></li>
            <li><a href="#">Jadwal Kegiatan</a></li>
          </ul>
        </li>
        <li class="header">Menu PPDB (<?= date('Y') ?>)</li>
        <li class="treeview <?php if ($this->uri->segment(2) == 'psb') {
                              echo 'active' . ' menu-open';
                            } ?>">
          <a href="#"><i class="fa fa-users"></i> <span>Manajemen PPDB</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu menu-open <?php if ($this->uri->segment(2) == 'psb') {
                                                echo 'active' . ' menu-open';
                                              } ?>">

            <li class="<?php if ($this->uri->segment(2) == 'psb' && !$this->uri->segment(3) == 'jurusan') {
                          echo 'active';
                        } ?>"><a href="<?= site_url('admin/psb') ?>"><i class="fa fa-circle-o"></i> Pendaftar</a></li>

            <li class="treeview <?php if ($this->uri->segment(3) == 'jurusan') {
                                  echo 'active' . ' menu-open';
                                } ?>">
              <a href="#"><i class="fa fa-circle-o"></i> Siswa Baru/Jurusan
                <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
              </a>
              <ul class="treeview-menu" style="display: block;">
                <li class="<?php if ($this->uri->segment(4) == 'akl') {
                              echo 'active' . ' menu-open';
                            } ?>"><a href="<?= site_url('admin/psb/jurusan/akl') ?>"><i class="fa fa-circle text-red"></i> AKL</a></li>
                <li class="<?php if ($this->uri->segment(4) == 'otkp') {
                              echo 'active' . ' menu-open';
                            } ?>"><a href="<?= site_url('admin/psb/jurusan/otkp') ?>"><i class="fa fa-circle text-yellow"></i> OTKP</a></li>
                <li class="<?php if ($this->uri->segment(4) == 'dpib') {
                              echo 'active' . ' menu-open';
                            } ?>"><a href="<?= site_url('admin/psb/jurusan/dpib') ?>"><i class="fa fa-circle text-green"></i> DPIB</a></li>
                <li class="<?php if ($this->uri->segment(4) == 'tkj') {
                              echo 'active' . ' menu-open';
                            } ?>"><a href="<?= site_url('admin/psb/jurusan/tkj') ?>"><i class="fa fa-circle text-purple"></i> TKJ</a></li>
                <li class="<?php if ($this->uri->segment(4) == 'tkro') {
                              echo 'active' . ' menu-open';
                            } ?>"><a href="<?= site_url('admin/psb/jurusan/tkro') ?>"><i class="fa fa-circle text-blue"></i> TKRO</a></li>
                <li class="<?php if ($this->uri->segment(4) == 'titl') {
                              echo 'active' . ' menu-open';
                            } ?>"><a href="<?= site_url('admin/psb/jurusan/titl') ?>"><i class="fa fa-circle"></i> TITL</a></li>
                <li class="<?php if ($this->uri->segment(4) == 'tbsm') {
                              echo 'active' . ' menu-open';
                            } ?>"><a href="<?= site_url('admin/psb/jurusan/tbsm') ?>"><i class="fa fa-circle text-maroon"></i> TBSM</a></li>

              </ul>
            </li>
          </ul>
        </li>
        <li class="<?php if ($this->uri->segment(2) == 'arsip') {
                      echo 'active';
                    } ?>"><a href="<?= site_url('admin/arsip') ?>"><i class="fa fa-files-o"></i><span> Arsip Pendaftar</span></a></li>
      </ul>
      <!-- /.sidebar-menu -->
    <?php } ?>


    <!-- guru -->
    <?php if ($auth_role == 'guru') { ?>
      <!-- Sidebar Menu -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">HEADER</li>
        <!-- Optionally, you can add icons to the links -->
        <li class="<?php if ($this->uri->segment(2) == 'dashboard') {
                      echo 'active';
                    } ?>"><a href="<?= site_url($auth_role . '/dashboard') ?>"><i class="glyphicon glyphicon-home"></i> <span>Dashboard</span></a></li>
        <li class="<?php if ($this->uri->segment(2) == 'data_siswa') {
                      echo 'active';
                    } ?>"><a href="<?= site_url('guru/data_siswa') ?>"><i class="fa fa-users"></i> <span>Data Siswa</span></a></li>
        <li class="treeview">
          <a href="#"><i class="fa fa-link"></i> <span>Multilevel</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="#">Link in level 2</a></li>
            <li><a href="#">Link in level 2</a></li>
          </ul>
        </li>

        <li class="treeview  <?php if ($this->uri->segment(2) == 'berita') {
                                echo 'active' . ' menu-open';
                              } ?>">
          <a href="#"><i class="fa fa-stars "></i> <span>Berita Acara</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="<?php if ($this->uri->segment(2) == 'berita') {
                          echo 'active';
                        } ?>"><a href="<?= site_url('guru/berita') ?>">Berita</a></li>
            <li><a href="#">Pengumuman</a></li>
            <li><a href="#">Jadwal Kegiatan</a></li>
          </ul>
        </li>
      </ul>
      <!-- /.sidebar-menu -->
    <?php } ?>

  </section>
  <!-- /.sidebar -->
</aside>



<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
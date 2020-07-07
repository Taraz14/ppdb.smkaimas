<header class="main-header"><meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  
    <!-- Logo -->
    <div class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini">SMK</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>SMK</b> N 1 Aimas</span>
    </div>

    <!-- Header Navbar -->
    <nav class="navbar navbar-static-top" role="navigation">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
      
       <?php if($auth_role == 'admin') : ?>
      <div class="collapse navbar-collapse pull-left">
        <ul class="nav navbar-nav">
          <!-- <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">Forum</a>
            <ul class="dropdown-menu" role="menu">
              <li>
                <a href="<?= site_url('admin/berita')?>">Berita</a>
              </li>
              <li>
                <a href="#">Diskusi</a>
              </li>
              <li class="divider"></li>
              <li>
                <a href="#">Berita Acara</a>
              </li>
            </ul>
          </li> -->
          <li>
            <a href="<?= site_url('admin/aktivasi')?>">Aktivasi</a>
          </li>
        </ul>
      </div>
      <?php endif; ?>

      <?php if($auth_role == 'guru') : ?>
      <div class="collapse navbar-collapse pull-left">
        <ul class="nav navbar-nav">
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">Forum</a>
            <ul class="dropdown-menu" role="menu">
              <li>
                <a href="<?= site_url('guru/berita')?>">Berita</a>
              </li>
              <li>
                <a href="#">Diskusi</a>
              </li>
              <li class="divider"></li>
              <li>
                <a href="#">Artikel</a>
              </li>
            </ul>
          </li>
        </ul>
      </div>
      <?php endif; ?>

      <!-- Navbar Right Menu -->
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- User Account Menu -->
          <li class="dropdown user user-menu">
            <!-- Menu Toggle Button -->
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <!-- The user image in the navbar-->
              <img src="<?= base_url();?>assets/5b43112/dist/img/avatar6.jpg" class="user-image" alt="User Image">
              <!-- hidden-xs hides the username on small devices so only the image appears. -->
              <span class="hidden-xs"><?= $auth_username; ?></span>
            </a>
            <ul class="dropdown-menu">
              <!-- The user image in the menu -->
              <li class="user-header">
                <img src="<?= base_url();?>assets/5b43112/dist/img/avatar6.jpg" class="img-circle" alt="User Image">

                <p>
                  <?= $auth_username; ?> - <?= $auth_role; ?>
                  <small><?= $auth_email;?></small>
                </p>
              </li>
              <!-- Menu Body -->
              <li class="user-body">
                <div class="row">
                  <div class="col-xs-6 text-center">
                    <a href="#">Profile</a>
                  </div>
                  <!-- <div class="col-xs-4 text-center">
                    <a href="#">Sales</a>
                  </div> -->
                  <div class="col-xs-6 text-center">
                    <a href="#">Pengaturan</a>
                  </div>
                </div>
                <!-- /.row -->
              </li>
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left">
                  <a href="#" class="btn btn-default btn-flat">Profile</a>
                </div>
                <div class="pull-right">
                  <a href="<?= site_url('auth/logout')?>" class="btn btn-default btn-flat">Logout</a>
                </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
          <!-- <li>
            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
          </li> -->
        </ul>
      </div>
    </nav>
  </header>
<!-- Main content -->
<section class="content">
  <!-- Small boxes (Stat box) -->
  <div class="row">
    <div class="col-lg-3 col-xs-6">
      <!-- small box -->
      <div class="small-box bg-aqua">
        <div class="inner">
          <h3><?= $guru ?><sup style="font-size: 20px"> Orang</sup></h3>

          <p>Guru</p>
        </div>
        <div class="icon">
          <i class="fa fa-user"></i>
        </div>
        <a href="<?= site_url('admin/guru'); ?>" class="small-box-footer">Info lebih lanjut <i class="fa fa-arrow-circle-right"></i></a>
      </div>
    </div>
    <div class="col-lg-3 col-xs-6">
      <!-- small box -->
      <div class="small-box bg-green">
        <div class="inner">
          <h3><?= $berita; ?><sup style="font-size: 20px"> Postingan</sup></h3>

          <p>Berita</p>
        </div>
        <div class="icon">
          <i class="fa fa-bullhorn"></i>
        </div>
        <a href="<?= site_url('admin/berita') ?>" class="small-box-footer">Info lebih lanjut <i class="fa fa-arrow-circle-right"></i></a>
      </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-xs-6">
      <!-- small box -->
      <div class="small-box bg-yellow">
        <div class="inner">
          <h3><?= $pendaftar ?><sup style="font-size: 20px"> Orang</sup></h3>

          <p>Pendaftar</p>
        </div>
        <div class="icon">
          <i class="ion ion-person-add"></i>
        </div>
        <a href="<?= site_url('admin/psb') ?>" class="small-box-footer">Info lebih lanjut <i class="fa fa-arrow-circle-right"></i></a>
      </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-xs-6">
      <!-- small box -->
      <div class="small-box bg-red">
        <div class="inner">
          <h3><?= $acc; ?><sup style="font-size: 20px"> Orang</sup></h3>

          <p>Total Siswa Diterima</p>
        </div>
        <div class="icon">
          <i class="fa fa-users"></i>
        </div>
        <a href="#" class="small-box-footer">Info lebih lanjut <i class="fa fa-arrow-circle-right"></i></a>
      </div>
    </div>
    <!-- ./col -->

    <!-- tes online-->
    <div class="col-md-3 col-sm-6 col-xs-12">
      <div class="info-box">
        <span class="info-box-icon bg-yellow"><i class="ion ion-ios-list-outline"></i></span>

        <div class="info-box-content">
          <span class="info-box-text">Sudah Tes</span>
          <span class="info-box-number"><?= $tested; ?></span>
        </div>
        <!-- /.info-box-content -->
      </div>
      <!-- /.info-box -->
    </div>
    <!-- /.tes online -->
  </div>
  <!-- /.row -->
</section>
<section class="content">
  <!-- <div class="col-md-6"> -->
  <div class="row">
    <div class="col-md-12">
      <div class="box box-success">
        <div class="box-header">
          <h3 class="box-title">PPDB(<?= date('Y', time()) ?>) |
            <small>Data Siswa Berdasarkan Jurusan</small>
          </h3>
        </div>
        <div class="box-body pad">
          <div class="row">
            <div class="col-xs-6">
              <div class="info-box bg-red">
                <!-- <span class="info-box-icon"><i class="fa fa-accounting"></i></span> -->
                <span class="info-box-icon"><?= $countAkl ?></span>

                <div class="info-box-content">
                  <span class="info-box-text">
                    <h3>Akuntansi dan Keuangan Lembaga</h3>
                  </span>
                  <!-- <span class="info-box-number">41,410</span> -->

                  <!-- <div class="progress">
                    <div class="progress-bar" style="width: 70%"></div>
                  </div> -->
                </div>
                <!-- /.info-box-content -->
              </div>
              <!-- /.info-box -->
            </div>
            <!-- /.col -->
            <div class="col-xs-6">
              <div class="info-box bg-yellow">
                <!-- <span class="info-box-icon"><i class="fa fa-accounting"></i></span> -->
                <span class="info-box-icon"><?= $countOtkp ?></span>

                <div class="info-box-content">
                  <span class="info-box-text">
                    <h3>Otomatisasi dan Tata Kelola Perkantoran</h3>
                  </span>
                  <!-- <span class="info-box-number">41,410</span> -->

                  <!-- <div class="progress">
                    <div class="progress-bar" style="width: 70%"></div>
                  </div>
                  <span class="progress-description">
                    70% Increase in 30 Days
                  </span> -->
                </div>
                <!-- /.info-box-content -->
              </div>
              <!-- /.info-box -->
            </div>
            <!-- /.col -->
            <!-- /.col -->
            <div class="col-xs-6">
              <div class="info-box bg-green">
                <!-- <span class="info-box-icon"><i class="fa fa-accounting"></i></span> -->
                <span class="info-box-icon"><?= $countDpib ?></span>

                <div class="info-box-content">
                  <span class="info-box-text">
                    <h3> Pemodelan dan Informasi Bangunan</h3>
                  </span>
                  <!-- <span class="info-box-number">41,410</span> -->
                  <!-- 
                  <div class="progress">
                    <div class="progress-bar" style="width: 70%"></div>
                  </div>
                  <span class="progress-description">
                    70% Increase in 30 Days
                  </span> -->
                </div>
                <!-- /.info-box-content -->
              </div>
              <!-- /.info-box -->
            </div>
            <!-- /.col -->
            <!-- /.col -->
            <div class="col-xs-6">
              <div class="info-box bg-purple">
                <!-- <span class="info-box-icon"><i class="fa fa-accounting"></i></span> -->
                <span class="info-box-icon"><?= $countTkj ?></span>

                <div class="info-box-content">
                  <span class="info-box-text">
                    <h3>Teknik Komputer dan Jaringan</h3>
                  </span>
                  <!-- <span class="info-box-number">41,410</span> -->

                  <!-- <div class="progress">
                    <div class="progress-bar" style="width: 70%"></div>
                  </div>
                  <span class="progress-description">
                    70% Increase in 30 Days
                  </span> -->
                </div>
                <!-- /.info-box-content -->
              </div>
              <!-- /.info-box -->
            </div>
            <!-- /.col -->
            <!-- /.col -->
            <div class="col-xs-6">
              <div class="info-box bg-blue">
                <!-- <span class="info-box-icon"><i class="fa fa-accounting"></i></span> -->
                <span class="info-box-icon"><?= $countTkro ?></span>

                <div class="info-box-content">
                  <span class="info-box-text">
                    <h3>Teknik Kendaraan Ringan Otomotif</h3>
                  </span>
                  <!-- <span class="info-box-number">41,410</span> -->

                  <!-- <div class="progress">
                    <div class="progress-bar" style="width: 70%"></div>
                  </div>
                  <span class="progress-description">
                    70% Increase in 30 Days
                  </span> -->
                </div>
                <!-- /.info-box-content -->
              </div>
              <!-- /.info-box -->
            </div>
            <!-- /.col -->
            <!-- /.col -->
            <div class="col-xs-6">
              <div class="info-box bg-orange">
                <!-- <span class="info-box-icon"><i class="fa fa-accounting"></i></span> -->
                <span class="info-box-icon"><?= $countTitl ?></span>

                <div class="info-box-content">
                  <span class="info-box-text">
                    <h3>Teknik Instalasi Tenaga Listrik</h3>
                  </span>
                  <!-- <span class="info-box-number">41,410</span> -->
                  <!-- 
                  <div class="progress">
                    <div class="progress-bar" style="width: 70%"></div>
                  </div>
                  <span class="progress-description">
                    70% Increase in 30 Days
                  </span> -->
                </div>
                <!-- /.info-box-content -->
              </div>
              <!-- /.info-box -->
            </div>
            <!-- /.col -->
            <!-- /.col -->
            <div class="col-xs-6">
              <div class="info-box bg-default">
                <!-- <span class="info-box-icon"><i class="fa fa-accounting"></i></span> -->
                <span class="info-box-icon"><?= $countTbsm ?></span>

                <div class="info-box-content">
                  <span class="info-box-text">
                    <h3>Teknik dan Bisnis Sepeda Motor</h3>
                  </span>
                  <!-- <span class="info-box-number">41,410</span> -->

                  <!-- <div class="progress">
                    <div class="progress-bar" style="width: 70%"></div>
                  </div> -->
                  <!-- <span class="progress-description">
                    70% Increase in 30 Days
                  </span> -->
                </div>
                <!-- /.info-box-content -->
              </div>
              <!-- /.info-box -->
            </div>
            <!-- /.col -->
          </div>
          <!-- </div> -->
        </div>
      </div>
    </div>
  </div>
  </div>

</section>
<!-- /.content -->
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
        <span class="info-box-icon bg-blue"><i class="ion ion-ios-list-outline"></i></span>

        <div class="info-box-content">
          <span class="info-box-text">Sudah Tes</span>
          <span class="info-box-number">
            <h3><?= $tes; ?></h3>
          </span>
        </div>
        <!-- /.info-box-content -->
      </div>
      <!-- /.info-box -->
    </div>
    <div class="col-md-3 col-sm-6 col-xs-12">
      <div class="info-box">
        <span class="info-box-icon bg-red"><i class="ion ion-ios-list-outline"></i></span>

        <div class="info-box-content">
          <span class="info-box-text">Belum Tes</span>
          <span class="info-box-number">
            <h3><?= $no_tes; ?></h3>
          </span>
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
              <div class="info-box" style="background-color: #DD4B39; color:white;">
                <!-- <span class="info-box-icon"><i class="fa fa-accounting"></i></span> -->
                <span class="info-box-icon"><?= $countAkl ?></span>

                <div class="info-box-content">
                  <span class="info-box-text">
                    <h3>
                      <span>AKL</span>
                    </h3>
                  </span>

                </div>
                <!-- /.info-box-content -->
              </div>
              <!-- /.info-box -->
            </div>
            <!-- /.col -->
            <div class="col-xs-6">
              <div class="info-box" style="background-color: #F39C12; color:white;">
                <!-- <span class="info-box-icon"><i class="fa fa-accounting"></i></span> -->
                <span class="info-box-icon"><?= $countOtkp ?></span>

                <div class="info-box-content">
                  <span class="info-box-text">
                    <h3>
                      <span>OTKP</span>
                    </h3>
                  </span>
                </div>
                <!-- /.info-box-content -->
              </div>
              <!-- /.info-box -->
            </div>
            <!-- /.col -->
            <!-- /.col -->
            <div class="col-xs-6">
              <div class="info-box" style="background-color: #00A65A; color:white;">
                <!-- <span class="info-box-icon"><i class="fa fa-accounting"></i></span> -->
                <span class="info-box-icon"><?= $countDpib ?></span>

                <div class="info-box-content">
                  <span class="info-box-text">
                    <h3>
                      <span>DPIB</span>
                    </h3>
                  </span>

                </div>
                <!-- /.info-box-content -->
              </div>
              <!-- /.info-box -->
            </div>
            <!-- /.col -->
            <!-- /.col -->
            <div class="col-xs-6">
              <div class="info-box" style="background-color: #605CA8; color:white;">
                <!-- <span class="info-box-icon"><i class="fa fa-accounting"></i></span> -->
                <span class="info-box-icon"><?= $countTkj ?></span>

                <div class="info-box-content">
                  <span class="info-box-text">
                    <h3>
                      <span>TKJ</span>
                    </h3>
                  </span>

                </div>
                <!-- /.info-box-content -->
              </div>
              <!-- /.info-box -->
            </div>
            <!-- /.col -->
            <!-- /.col -->
            <div class="col-xs-6">
              <div class="info-box" style="background-color: #0073B7; color:white;">
                <!-- <span class="info-box-icon"><i class="fa fa-accounting"></i></span> -->
                <span class="info-box-icon"><?= $countTkro ?></span>

                <div class="info-box-content">
                  <span class="info-box-text">
                    <h3>
                      <span>TKRO</span>
                    </h3>
                  </span>

                </div>
                <!-- /.info-box-content -->
              </div>
              <!-- /.info-box -->
            </div>
            <!-- /.col -->
            <!-- /.col -->
            <div class="col-xs-6">
              <div class="info-box" style="background-color: #8AA4AF; color:white;">
                <!-- <span class="info-box-icon"><i class="fa fa-accounting"></i></span> -->
                <span class="info-box-icon"><?= $countTitl ?></span>

                <div class="info-box-content">
                  <span class="info-box-text">
                    <h3>
                      <span>TITL</span>
                    </h3>
                  </span>

                </div>
                <!-- /.info-box-content -->
              </div>
              <!-- /.info-box -->
            </div>
            <!-- /.col -->
            <!-- /.col -->
            <div class="col-xs-6">
              <div class="info-box" style="background-color: #D81B60; color:white;">
                <!-- <span class="info-box-icon"><i class="fa fa-accounting"></i></span> -->
                <span class="info-box-icon"><?= $countTbsm ?></span>

                <div class="info-box-content">
                  <span class="info-box-text">
                    <h3>
                      <span>TBSM</span>
                    </h3>
                  </span>

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
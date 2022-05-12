<style>
    a {
        color: #333333;
        text-decoration: none;
        transition: 0.3s;
    }

    a:hover,
    a:focus {
        color: #615F5F;
        text-decoration: none;
        border-style: 2px;
    }
</style>
<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="box box-success">
                <div class="box-header">
                    <h3 class="box-title">PPDB (Semua Tahun) |
                        <small>List Pendaftar</small>
                    </h3>
                </div>
                <div class="box-body">
                    <div class="row">
                        <!-- /.col -->
                        <a href="<?= site_url('admin/psb/arsip/data/') . '2020' ?>">
                            <div class="col-md-3 col-sm-6 col-xs-12">
                                <div class="info-box">
                                    <span class="info-box-icon bg-yellow"><i class="fa fa-files-o"></i></span>

                                    <div class="info-box-content">
                                        <span class="info-box-text">Tahun</span>
                                        <span class="info-box-number">2020</span>
                                    </div>
                                    <!-- /.info-box-content -->
                                </div>
                                <!-- /.info-box -->
                            </div>
                            <!-- /.col -->
                        </a>

                        <?php foreach ($arsip_year->result() as $val) : ?>
                            <a href="<?= site_url('admin/archive-diterima/') . $val->accepted_year ?>">
                                <div class="col-md-3 col-sm-6 col-xs-12">
                                    <div class="info-box">
                                        <span class="info-box-icon bg-yellow"><i class="fa fa-files-o"></i></span>

                                        <div class="info-box-content">
                                            <span class="info-box-text">Tahun</span>
                                            <span class="info-box-number"><?= $val->accepted_year ?></span>
                                        </div>
                                        <!-- /.info-box-content -->
                                    </div>
                                    <!-- /.info-box -->
                                </div>
                                <!-- /.col -->
                            </a>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
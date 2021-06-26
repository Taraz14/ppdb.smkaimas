<section class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="box box-success">
                <div class="box-header">
                    <h3 class="box-title">PPDB(2020) |
                        <small>List <?= $header; ?> Siswa</small>
                    </h3>
                </div>
                <div class="box-body pad">
                    <form action="<?= site_url('pendaftaran') ?>" method="post">
                        <button type="submit" class="btn btn-success" name="bool" value="1" <?= ($bt->bool == 1) ? 'disabled' : '' ?>>Aktifkan Pendaftaran</button>
                        <button type="submit" class="btn btn-warning" name="bool" value="2" <?= ($bt->bool == 2) ? 'disabled' : '' ?>>Segera dibuka</button>
                        <button type="submit" class="btn btn-danger" name="bool" value="0" <?= ($bt->bool == 0) ? 'disabled' : '' ?>>Tutup Pendaftaran</button>

                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
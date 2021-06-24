<div class="col-lg-12">
    <form action="<?= site_url('pendaftaran')?>" method="post">
        <input type="hidden" name="bool" value="1">
        <?php
            if($bt->bool == 1){ ?>
                <button class="btn btn-danger btn-block enabling">Aktifkan Tombol Daftar</button>
            <?php }else{ ?>
                <button class="btn btn-danger btn-block">Aktifkan Tombol Daftar</button>
                <?= ''; ?>
            <?php } ?> 
    </form>
</div>
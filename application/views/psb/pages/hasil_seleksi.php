<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>

<section class="blog">
    <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1>Hasil Seleksi <span> Siswa Baru</span></h1>
                </div>
            </div>
        </div>
    </div>
</section>
<section>
    <div class="container">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="nomorPendaftar" class="col-sm-2 control-label">Nomor Pendaftar <sup style="color:red">*</sup></label>
                            <div class="col-sm-3">
                                <input type="text" class="form-control" placeholder="Masukkan Nomor Pendaftar">
                            </div>
                        </div>
                        <br>
                        <div class="form-group">
                            <label for="tanggal_lahir" class="col-sm-2 control-label">Tanggal Lahir <sup style="color:#F53F37">*</sup></label>
                            <div class="col-sm-3">
                                <div class="input-group">
                                    <input type="text" class="form-control" id="datehasil" name="tanggal_lahir" readonly>
                                    <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel-footer text-right">
                    <button class="btn btn-primary"><i class="glyphicon glyphicon-send"></i> Lihat Hasil Seleksi</button>
                </div>
                <h2 class="text-muted text-center"><i class="fa fa-exclamation-triangle"></i>Under Building</h2>
            </div>
        </div>
    </div>
</section>
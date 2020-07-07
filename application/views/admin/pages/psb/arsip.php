<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>

<!-- Main content -->
<section class="content">
  <div class="row">
    <div class="col-md-12">
      <div class="box box-success">
        <div class="box-header">
          <h3 class="box-title">PPDB(<?= date('Y'); ?>) |
            <small>List <?= $header; ?> Siswa</small>
          </h3>
        </div>
        <div class="box-body pad">
          <table class="table table-bordered table-hover display nowrap" style="width:100%" id="arsip">
            <thead>
              <tr>
                <th>No. Pendaftar</th>
                <th>Nama Lengkap</th>
                <th>NISN</th>
                <th>TTL</th>
                <th>Jenis Kelamin</th>
                <th>Agama</th>
                <th>Warga Negara</th>
                <th>No. Telp</th>
                <th>Alamat</th>
                <th>Jurusan</th>
                <th>Nama Ayah</th>
                <th>Pekerjaan Ayah</th>
                <th>Nama Ibu</th>
                <th>Pekerjaan Ibu</th>
                <th>Telp Orangtua</th>
                <th>Alamat Orangtua</th>
                <th>Nama Wali</th>
                <th>Pekerjaan Wali</th>
                <th>Alamat Wali</th>
                <th>Telp Wali</th>
                <th>Asal Sekolah</th>
                <th>Alamat Sekolah</th>
                <th>Tahun Lulus</th>
                <th>Jurusan</th>
                <th>Kelas</th>
                <th>Nilai</th>
                <th>#</th>
              </tr>
            </thead>
          </table>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- /.content -->
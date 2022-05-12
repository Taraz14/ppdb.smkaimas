<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="box box-success">
                <div class="box-header">
                    <h3 class="box-title">PPDB(<?= $tahun ?>) |
                        <small>List <?= $header; ?> Siswa</small>
                    </h3>
                </div>
                <div class="box-body pad">
                    <table class="table table-bordered table-hover display nowrap" width="100%" id="acc">
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
                                <th>Tahun Masuk</th>
                                <th>Nilai</th>
                                <th>Suku</th>
                                <!-- <th>#</th> -->
                            </tr>
                        </thead>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- /.content -->
<script>
    var tahun = <?= $this->uri->segment(3) ?>;
    var acc;

    $(function() {
        acc = $('#acc').DataTable({
            "processing": true,
            "serverSide": true,
            "scrollX": true,
            // "scrollY": "200px",
            "scrollCollapse": true,
            "order": [],
            "ajax": {
                url: '<?= site_url('admin/acceptedArchive/getArsip/') ?>' + tahun,
            },
            "columnDefs": [{
                "targets": [3, 5, 6, 7, 8, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24],
                "visible": false,
                "searchable": false
            }],
            dom: 'lBfrtip',
            button: [{
                    extend: 'pdfHtml5',
                    oriented: 'potrait',
                    pageSize: 'Legal',
                    download: 'open',
                },

                'csv', 'excel', 'print', 'copy'
            ],
            pageLength: 10,
            lengthMenu: [10, 20, 50, 100, 200, 500],
        });
    })
</script>
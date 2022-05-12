<?php
defined('BASEPATH') or exit('No direct script access allowed');
/*CI Route*/

$route['default_controller'] = 'HomePsb';

//Authentication
$route[LOGIN_PAGE] = 'auth/login';

//admin
$route['admin/dashboard'] = 'admin/Dashboard';
$route['admin/guru'] = 'admin/DataGuru';
$route['admin/berita'] = 'admin/Forum/berita';
$route['admin/berita/u'] = 'admin/Forum/upload';
$route['admin/berita/u/(:any)'] = 'admin/Forum/upload/$1';
$route['admin/berita/d/(:any)'] = 'admin/Forum/delete/$1';
$route['admin/aktivasi'] = 'admin/Active';
$route['admin/kelas'] = 'admin/kelas/kelas';
$route['admin/cadangkan/(:any)'] = 'admin/cadangan/index/$1';
$route['admin/archive'] = 'admin/psb/psb_archive';
$route['admin/archive-accepted'] = 'admin/AcceptedArchive';
$route['admin/archive-diterima/(:any)'] = 'admin/AcceptedArchive/diterima/$1';


//PPDB
$route['admin/psb'] = 'admin/Psb';
$route['admin/psb/detail/(:any)'] = 'admin/Psb/detail/$1';
$route['admin/psb/u/berkas/(:any)'] = 'admin/Psb/updateBerkas/$1';
$route['admin/psb/u/nilai/(:any)'] = 'admin/Psb/updateNilai/$1';
$route['admin/psb/d/(:any)'] = 'admin/psb/delete/$1';
$route['admin/psb/acc'] = 'admin/Accept';
$route['admin/psb/arsip'] = 'admin/arsip';
$route['admin/psb/arsip/data/(:any)'] = 'admin/arsip/arsip_detail/$1';
$route['admin/arsip/accepted'] = '';

//Jurusan
$route['admin/psb/jurusan/akl'] = 'admin/perJurusan/Akl';
$route['admin/psb/jurusan/otkp'] = 'admin/perJurusan/Otkp';
$route['admin/psb/jurusan/dpib'] = 'admin/perJurusan/Dpib';
$route['admin/psb/jurusan/tkj'] = 'admin/perJurusan/Tkj';
$route['admin/psb/jurusan/tkro'] = 'admin/perJurusan/Tkro';
$route['admin/psb/jurusan/titl'] = 'admin/perJurusan/Titl';
$route['admin/psb/jurusan/tbsm'] = 'admin/perJurusan/Tbsm';

//guru
$route['guru/dashboard'] = 'guru/Dashboard';
$route['guru/data_siswa'] = 'guru/DataSiswa';
$route['guru/berita'] = 'guru/Forum/berita';
$route['guru/berita/u'] = 'guru/Forum/upload';

//siswa
$route['siswa/dashboard'] = 'siswa/Dashboard';

//homepage
$route['blog'] = 'homepage/blog';
$route['berita'] = 'Homepage/berita';
$route['berita/det/(:any)'] = 'homepage/beritaRm';

//PSB
$route['psb'] = 'HomePsb';
$route['pendaftaran'] = 'psb/Pendaftaran';
$route['daftar/siswa'] = 'psb/Pendaftaran/formDaftar';
// $route['daftar/siswa'] = 'https://www.covid19.go.id/';
$route['daftar/submit'] = 'psb/Pendaftaran/getDaftar';
$route['daftar/print'] = 'psb/Pendaftaran/print';
//Hasil Seleksi
$route['hasil-seleksi'] = 'psb/hasil_seleksi';
$route['pencarian-data'] = 'psb/Pencarian';
$route['update-test'] = 'psb/Pencarian/UpdateTest';


$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;

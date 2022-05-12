<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Arsip extends MY_Controller
{

  public function __construct()
  {
    parent::__construct();
    $this->load->model(array(
      'admin_m',
      'blog_m',
      'admin/arsip_m',
      'psb/pendaftar_m',
      'psb/arsip_psb_m',
      'admin/kelas_m',
      'admin/jurusan_m'
    ));
    if (!$this->verify_role('admin')) redirect('auth');
  }

  public function index()
  {
    $this->load->view('layouts/wrapper', [
      'content' => 'admin/pages/psb/arsip',
      'header' => 'Arsip',
      'arsip_year' => $this->arsip_psb_m->archive_years()
    ], FALSE);
  }

  public function arsip_detail($tahun)
  {
    $this->load->view('layouts/wrapper', [
      'content' => 'admin/pages/psb/arsip_detail',
      'header' => 'Arsip Data',
      'tahun' => $tahun
    ], FALSE);
  }

  public function getArsip_lama()
  {
    $data = $this->arsip_m->dataPsb_lama();
    $psb = [];
    foreach ($data as $psbVal) {
      $temp = [];
      $temp[] = htmlspecialchars($psbVal->nomor_pendaftar, ENT_QUOTES, 'UTF-8');
      $temp[] = '<div class="uppercase">' . htmlspecialchars($psbVal->nama_lengkap, ENT_QUOTES) . '</div>';
      $temp[] = htmlspecialchars($psbVal->nisn, ENT_QUOTES, 'UTF-8');
      $temp[] = htmlspecialchars($psbVal->tempat_lahir . ', ' . tanggal($psbVal->tanggal_lahir), ENT_QUOTES, 'UTF-8');
      $temp[] = htmlspecialchars($psbVal->jenis_kelamin, ENT_QUOTES, 'UTF-8');
      $temp[] = htmlspecialchars($psbVal->agama, ENT_QUOTES, 'UTF-8');
      $temp[] = '<div class="uppercase">' . htmlspecialchars($psbVal->kewarganegaraan, ENT_QUOTES, 'UTF-8') . '</div>';
      $temp[] = htmlspecialchars($psbVal->no_telp, ENT_QUOTES, 'UTF-8');
      $temp[] = htmlspecialchars($psbVal->alamat, ENT_QUOTES, 'UTF-8');
      // $temp[] = htmlspecialchars($psbVal->jurusan1, ENT_QUOTES, 'UTF-8');
      $temp[] = htmlspecialchars($psbVal->nama_jurusan, ENT_QUOTES, 'UTF-8');
      $temp[] = htmlspecialchars($psbVal->ayah_kandung, ENT_QUOTES, 'UTF-8');
      $temp[] = htmlspecialchars($psbVal->pekerjaan_ayah, ENT_QUOTES, 'UTF-8');
      $temp[] = htmlspecialchars($psbVal->ibu_kandung, ENT_QUOTES, 'UTF-8');
      $temp[] = htmlspecialchars($psbVal->pekerjaan_ibu, ENT_QUOTES, 'UTF-8');
      $temp[] = htmlspecialchars($psbVal->telp_ortu, ENT_QUOTES, 'UTF-8');
      $temp[] = htmlspecialchars($psbVal->alamat_ortu, ENT_QUOTES, 'UTF-8');
      $temp[] = htmlspecialchars($psbVal->nama_wali, ENT_QUOTES, 'UTF-8');
      $temp[] = htmlspecialchars($psbVal->pekerjaan_wali, ENT_QUOTES, 'UTF-8');
      $temp[] = htmlspecialchars($psbVal->alamat_wali, ENT_QUOTES, 'UTF-8');
      $temp[] = htmlspecialchars($psbVal->telp_wali, ENT_QUOTES, 'UTF-8');
      $temp[] = htmlspecialchars($psbVal->asal_sekolah, ENT_QUOTES, 'UTF-8');
      $temp[] = htmlspecialchars($psbVal->alamat_sekolah, ENT_QUOTES, 'UTF-8');
      $temp[] = htmlspecialchars($psbVal->tahun_lulus, ENT_QUOTES, 'UTF-8');
      $temp[] = htmlspecialchars(date("Y", $psbVal->archive_at), ENT_QUOTES, 'UTF-8');
      $temp[] = htmlspecialchars($psbVal->jalur, ENT_QUOTES, 'UTF-8');
      $temp[] = htmlspecialchars($psbVal->nilai, ENT_QUOTES, 'UTF-8');
      // $temp[] = htmlspecialchars($psbVal->is_tested, ENT_QUOTES, 'UTF-8');

      // $temp[] = ' <a href="' . site_url('admin/psb/u/nilai/') . $psbVal->archive_id . '" class="btn btn-default btn-sm" data-toggle="tooltip" title="Edit">
      //           <i class="glyphicon glyphicon-pencil" style="color:#FFBE00"></i>
      //       </a>
      //       <a href="' . site_url('admin/psb/detail/') . $psbVal->archive_id . '" class="btn btn-default btn-sm" data-toggle="tooltip" title="Detail" target="">
      //           <i class="glyphicon glyphicon-eye-open" style="color:#009B29"></i>
      //       </a>';
      $psb[] = $temp;
    }

    $output['draw'] = intval($this->input->get('draw'));
    $output['recordsTotal'] = $this->arsip_m->countAll_lama();
    $output['recordsFiltered'] = $this->arsip_m->filtered_lama();
    $output['data'] = $psb;

    echo json_encode($output);
  }

  public function getArsip($tahun)
  {
    // $tahun = $this->uri->segment(5);
    $data = $this->arsip_m->dataPsb($tahun);
    $psb = [];
    foreach ($data as $psbVal) {
      $temp = [];
      $temp[] = htmlspecialchars($psbVal->nomor_pendaftar, ENT_QUOTES, 'UTF-8');
      $temp[] = '<div class="uppercase">' . htmlspecialchars($psbVal->nama_lengkap, ENT_QUOTES) . '</div>';
      $temp[] = htmlspecialchars($psbVal->nisn, ENT_QUOTES, 'UTF-8');
      $temp[] = htmlspecialchars($psbVal->tempat_lahir . ', ' . tanggal($psbVal->tanggal_lahir), ENT_QUOTES, 'UTF-8');
      $temp[] = htmlspecialchars($psbVal->jenis_kelamin, ENT_QUOTES, 'UTF-8');
      $temp[] = htmlspecialchars($psbVal->agama, ENT_QUOTES, 'UTF-8');
      $temp[] = '<div class="uppercase">' . htmlspecialchars($psbVal->kewarganegaraan, ENT_QUOTES, 'UTF-8') . '</div>';
      $temp[] = htmlspecialchars($psbVal->no_telp, ENT_QUOTES, 'UTF-8');
      $temp[] = htmlspecialchars($psbVal->alamat, ENT_QUOTES, 'UTF-8');
      // $temp[] = htmlspecialchars($psbVal->jurusan, ENT_QUOTES, 'UTF-8');
      $temp[] = htmlspecialchars($psbVal->jurusan1, ENT_QUOTES, 'UTF-8');
      $temp[] = htmlspecialchars($psbVal->ayah_kandung, ENT_QUOTES, 'UTF-8');
      $temp[] = htmlspecialchars($psbVal->pekerjaan_ayah, ENT_QUOTES, 'UTF-8');
      $temp[] = htmlspecialchars($psbVal->ibu_kandung, ENT_QUOTES, 'UTF-8');
      $temp[] = htmlspecialchars($psbVal->pekerjaan_ibu, ENT_QUOTES, 'UTF-8');
      $temp[] = htmlspecialchars($psbVal->telp_ortu, ENT_QUOTES, 'UTF-8');
      $temp[] = htmlspecialchars($psbVal->alamat_ortu, ENT_QUOTES, 'UTF-8');
      $temp[] = htmlspecialchars($psbVal->nama_wali, ENT_QUOTES, 'UTF-8');
      $temp[] = htmlspecialchars($psbVal->pekerjaan_wali, ENT_QUOTES, 'UTF-8');
      $temp[] = htmlspecialchars($psbVal->alamat_wali, ENT_QUOTES, 'UTF-8');
      $temp[] = htmlspecialchars($psbVal->telp_wali, ENT_QUOTES, 'UTF-8');
      $temp[] = htmlspecialchars($psbVal->asal_sekolah, ENT_QUOTES, 'UTF-8');
      $temp[] = htmlspecialchars($psbVal->alamat_sekolah, ENT_QUOTES, 'UTF-8');
      $temp[] = htmlspecialchars($psbVal->tahun_lulus, ENT_QUOTES, 'UTF-8');
      $temp[] = htmlspecialchars($psbVal->tahun_submit, ENT_QUOTES, 'UTF-8');
      $temp[] = htmlspecialchars($psbVal->nilai, ENT_QUOTES, 'UTF-8');
      $temp[] = htmlspecialchars($psbVal->jalur, ENT_QUOTES, 'UTF-8');
      // $temp[] = htmlspecialchars($psbVal->is_tested, ENT_QUOTES, 'UTF-8');

      // $temp[] = ' <a href="' . site_url('admin/psb/u/nilai/') . $psbVal->psb_v_id . '" class="btn btn-default btn-sm" data-toggle="tooltip" title="Edit">
      //           <i class="glyphicon glyphicon-pencil" style="color:#FFBE00"></i>
      //       </a>
      //       <a href="' . site_url('admin/psb/detail/') . $psbVal->psb_v_id . '" class="btn btn-default btn-sm" data-toggle="tooltip" title="Detail" target="">
      //           <i class="glyphicon glyphicon-eye-open" style="color:#009B29"></i>
      //       </a>';
      $psb[] = $temp;
    }

    $output['draw'] = intval($this->input->get('draw'));
    $output['recordsTotal'] = $this->arsip_m->countAll($tahun);
    $output['recordsFiltered'] = $this->arsip_m->filtered($tahun);
    $output['data'] = $psb;

    echo json_encode($output);
  }
}

/* End of file Arsip.php */

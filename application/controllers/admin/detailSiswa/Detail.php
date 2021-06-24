<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Detail extends MY_Controller
{

  public function __construct()
  {
    parent::__construct();
    $this->load->model('admin/detail_m');
    if (!$this->verify_role('admin')) redirect('auth');
  }


  public function index()
  {
    $jurusan = $this->detail_m->getJurusan();
    $kelas = $this->detail_m->getKelas();
    echo json_encode(array($jurusan, $kelas));
  }
}

/* End of file Detail.php */

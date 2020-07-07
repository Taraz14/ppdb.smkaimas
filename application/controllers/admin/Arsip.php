<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Arsip extends MY_Controller
{

  public function __construct()
  {
    parent::__construct();
    if (!$this->verify_role('admin')) redirect('auth');
  }

  public function index()
  {
    $this->load->view('layouts/wrapper', [
      'content' => 'admin/pages/psb/arsip',
      'header' => 'Arsip'
    ], FALSE);
  }
}

/* End of file Arsip.php */

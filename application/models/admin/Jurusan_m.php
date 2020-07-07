<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Jurusan_m extends MY_Model
{
  public function getJurusan()
  {
    $this->db->from('jurusan');
    $query = $this->db->get();
    return $query->result();
  }
}

/* End of file Jurusan_m.php */

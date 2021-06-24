<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Detail_m extends MY_Model
{
  public function getJurusan()
  {
    $this->db->from('jurusan');
    $query = $this->db->get();
    return $query->result();
  }

  public function getKelas()
  {
    $this->db->from('kelas');
    $query = $this->db->get();
    return $query->result();
  }
}

/* End of file Detail_m.php */

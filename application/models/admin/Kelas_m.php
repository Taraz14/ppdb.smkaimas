<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Kelas_m extends CI_Model
{

  public function save($kelas)
  {
    $this->db->insert('kelas', $kelas);
    return $this->db->insert_id();
  }

  private function queryKelas()
  {
    $this->db->select('*');
    $this->db->from('kelas');

    if ($this->input->get('search')['value']) {
      $this->db->like('class_name', $this->input->get('search')['value']);
      $this->db->or_like('create_at', $this->input->get('search')['value']);
    }

    if ($this->input->get('order')) {
      $this->db->order_by(
        $this->input->get('order')['0']['column'],
        $this->input->get('order')['0']['dir']
      );
    } else {
      $this->db->order_by('create_at', 'desc');
    }
  }

  public function dataKelas()
  {
    self::queryKelas();
    if ($this->input->get('length') !== -1) {
      $this->db->limit($this->input->get('length'), $this->input->get('start'));
    }
    return $this->db->get()->result();
  }

  public function filtered()
  {
    self::queryKelas();
    return $this->db->get()->num_rows();
  }

  public function countAll()
  {
    $this->db->from('kelas');
    return $this->db->count_all_results();
  }

  public function getKelas()
  {
    $this->db->from('kelas');
    $query = $this->db->get();
    return $query->result();
  }

  public function delete($id)
  {
    $this->db->where('class_id', $id);
    $this->db->delete('kelas');
  }
}

/* End of file Kelas.php */

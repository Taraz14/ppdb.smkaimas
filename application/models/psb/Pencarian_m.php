<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Pencarian_m extends MY_Model
{

    private $cari = 'accepted';
    private $cari2 = 'psb';

    public function searchData($nisn)
    {
        $this->db->join('jurusan j', 'accepted.kode_jurusan = j.kode_jurusan');
        $this->db->join('kelas k', 'accepted.class_id = k.class_id');
        return $this->db->get_where($this->cari, array('nisn' => $nisn));
    }

    public function searchDataMentah($nisn)
    {
        // $this->db->join('jurusan j', 'psb.kode_jurusan = j.kode_jurusan');
        // $this->db->join('kelas k', 'psb.class_id = k.class_id');
        return $this->db->get_where($this->cari2, array('nisn' => $nisn));
    }


    public function updateTest($test, $id)
    {
        return $this->db->update($this->cari, $test, $id);
    }
}

/* End of file Pencarian_m.php */

<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Pencarian_m extends MY_Model
{

    private $cari = 'accepted';
    private $cari2 = 'psb';
    private $cari3 = 'cadangan';

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

    public function searchDataCadangan($nisn)
    {
        $this->db->select('*');
        $this->db->from('cadangan c');
        $this->db->join('psb p', 'c.psb_id = p.psb_id', 'inner');
        $this->db->where('p.nisn', $nisn);
        return $this->db->get();
        // return $this->db->get_where($this->cari3, array('nisn' => $nisn));
    }

    public function updateTest($test, $id)
    {
        return $this->db->update($this->cari, $test, $id);
    }
}

/* End of file Pencarian_m.php */

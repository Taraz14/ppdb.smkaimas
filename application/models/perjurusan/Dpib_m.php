<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dpib_m extends MY_Model
{
    private $acc = 'accepted';

    private function queryJur()
    {
        $this->db->select('*');
        $this->db->from($this->acc . ' a');
        $this->db->join('jurusan j', 'a.kode_jurusan = j.kode_jurusan');
        $this->db->join('kelas k', 'a.class_id = k.class_id');
        $this->db->join('jalur_daftar jd', 'a.id_jalur = jd.id_jalur');
        $this->db->where('a.kode_jurusan', 3);

        // $this->db->join('jurusan j2', 'psb.jurusan2 = j2.kode_jurusan', 'left');

        if ($this->input->get('search')['value']) {
            $this->db->like('nomor_pendaftar', $this->input->get('search')['value']);
            $this->db->or_like('nisn', $this->input->get('search')['value']);
            $this->db->or_like('tanggal_lahir', $this->input->get('search')['value']);
            // $this->db->or_like('jurusan', $this->input->get('search')['value']);
            $this->db->or_like('nama_lengkap', $this->input->get('search')['value']);
            $this->db->or_like('agama', $this->input->get('search')['value']);
            $this->db->or_like('kewarganegaraan', $this->input->get('search')['value']);
            $this->db->or_like('asal_sekolah', $this->input->get('search')['value']);
            // $this->db->or_like('nem', $this->input->get('search')['value']);
            // $this->db->or_like('ibu_kandung', $this->input->get('search')['value']);
        }

        if ($this->input->get('order')) {
            $this->db->order_by(
                $this->input->get('order')['0']['column'],
                $this->input->get('order')['0']['dir']
            );
        } else {
            $this->db->order_by('accepted_at', 'desc');
        }
    }

    public function dataJur()
    {
        self::queryJur();
        if ($this->input->get('length') !== -1) {
            $this->db->limit($this->input->get('length'), $this->input->get('start'));
        }
        return $this->db->get()->result();
    }

    public function filtered()
    {
        self::queryJur();
        return $this->db->get()->num_rows();
    }

    public function countAll()
    {
        $this->db->from($this->acc);
        return $this->db->count_all_results();
    }
}

/* End of file Akl_m.php */

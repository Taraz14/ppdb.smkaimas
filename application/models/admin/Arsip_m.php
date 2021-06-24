<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Arsip_m extends CI_Model
{
    private $calon = 'ppdb_archive';
    private $jalur = 'jalur_daftar';

    private function queryPsb()
    {
        $this->db->select('*');
        $this->db->from($this->calon);
        $this->db->join($this->jalur, $this->jalur . '.id_jalur = ' . $this->calon . '.id_jalur', 'left');
        $this->db->join('jurusan j', $this->calon . '.kode_jurusan = j.kode_jurusan', 'left');

        if ($this->input->get('search')['value']) {
            $this->db->like('nomor_pendaftar', $this->input->get('search')['value']);
            $this->db->or_like('nisn', $this->input->get('search')['value']);
            $this->db->or_like('tanggal_lahir', $this->input->get('search')['value']);
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
            $this->db->order_by('archive_at', 'desc');
        }
    }

    public function dataPsb()
    {
        self::queryPsb();
        if ($this->input->get('length') !== -1) {
            $this->db->limit($this->input->get('length'), $this->input->get('start'));
        }
        return $this->db->get()->result();
    }

    public function filtered()
    {
        self::queryPsb();
        return $this->db->get()->num_rows();
    }

    public function countAll()
    {
        $this->db->from($this->calon);
        return $this->db->count_all_results();
    }
}

/* End of file Arsip_m.php */

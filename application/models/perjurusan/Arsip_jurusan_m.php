<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Arsip_jurusan_m extends CI_Model
{
    private $acc_archive = 'archive_accepted';
    private $acc = 'accepted';
    private $jalur = 'jalur_daftar';
    private $jurusan = 'jurusan';

    public function get_archiveGo()
    {
        return $this->db->get($this->acc);
    }

    public function year_archiveGo()
    {
        $this->db->select('accepted_year');
        $this->db->from($this->acc_archive);
        $this->db->group_by('accepted_year');
        return $this->db->get();
    }

    public function archiveGo()
    {
        $query = $this->db->query('insert archive_accepted select * from accepted');
        return $query;
    }

    public function trc_archiveGo()
    {
        return $this->db->truncate($this->acc);
    }

    private function queryPsb($tahun)
    {
        // $tahun = $this->uri->segment(5);
        $this->db->select('*');
        $this->db->from($this->acc_archive);
        $this->db->join($this->jalur, $this->acc_archive . '.id_jalur = ' . $this->jalur . '.id_jalur');
        $this->db->join($this->jurusan, $this->acc_archive . '.kode_jurusan = ' . $this->jurusan . '.kode_jurusan');
        $this->db->where($this->acc_archive . '.accepted_year', $tahun);

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
            $this->db->order_by('accepted_year', 'desc');
        }
    }

    public function dataPsb($tahun)
    {
        self::queryPsb($tahun);
        if ($this->input->get('length') !== -1) {
            $this->db->limit($this->input->get('length'), $this->input->get('start'));
        }
        return $this->db->get()->result();
    }

    public function filtered($tahun)
    {
        self::queryPsb($tahun);
        return $this->db->get()->num_rows();
    }

    public function countAll($tahun)
    {
        $this->db->from($this->acc_archive);
        $this->db->where('accepted_year', $tahun);
        return $this->db->count_all_results();
    }
}

/* End of file Arsip_jurusan_m.php */

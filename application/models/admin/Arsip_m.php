<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Arsip_m extends CI_Model
{
    private $calon = 'ppdb_archive';
    private $jalur = 'jalur_daftar';
    private $arsip = 'psb_archive';


    // =============================================================
    // Arsip Lama
    // =============================================================

    private function queryPsb_lama()
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

    public function dataPsb_lama()
    {
        self::queryPsb_lama();
        if ($this->input->get('length') !== -1) {
            $this->db->limit($this->input->get('length'), $this->input->get('start'));
        }
        return $this->db->get()->result();
    }

    public function filtered_lama()
    {
        self::queryPsb_lama();
        return $this->db->get()->num_rows();
    }

    public function countAll_lama()
    {
        $this->db->from($this->calon);
        return $this->db->count_all_results();
    }


    // =============================================================
    // Arsip Model Sistem Baru (Dynamic)
    // =============================================================

    private function queryPsb($tahun)
    {
        // $tahun = $this->uri->segment(5);
        $this->db->select('*');
        $this->db->from($this->arsip);
        $this->db->join($this->jalur, $this->arsip . '.id_jalur = ' . $this->jalur . '.id_jalur');
        $this->db->where($this->arsip . '.tahun_submit', $tahun);

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
            $this->db->order_by('tahun_submit', 'desc');
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
        $this->db->from($this->arsip);
        $this->db->where('tahun_submit', $tahun);
        return $this->db->count_all_results();
    }
}

/* End of file Arsip_m.php */

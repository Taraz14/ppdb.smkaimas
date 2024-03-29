<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Admin_m extends CI_Model
{

    private static $user = 'users';

    public function countAkl()
    {
        $this->db->select('*');
        $this->db->from('psb');
        $this->db->where('jurusan1', 'Akuntansi dan Keuangan Lembaga');
        return $this->db->count_all_results();
    }
    public function countOtkp()
    {
        $this->db->select('*');
        $this->db->from('psb');
        $this->db->where('jurusan1', 'Otomatisasi dan Tata Kelola Perkantoran');
        return $this->db->count_all_results();
    }
    public function countDpib()
    {
        $this->db->select('*');
        $this->db->from('psb');
        $this->db->where('jurusan1', 'Desain Pemodelan dan Informasi Bangunan');
        return $this->db->count_all_results();
    }
    public function countTkj()
    {
        $this->db->select('*');
        $this->db->from('psb');
        $this->db->where('jurusan1', 'Teknik Komputer dan Jaringan');
        return $this->db->count_all_results();
    }
    public function countTkro()
    {
        $this->db->select('*');
        $this->db->from('psb');
        $this->db->where('jurusan1', 'Teknik Kendaraan Ringan Otomotif');
        return $this->db->count_all_results();
    }
    public function countTitl()
    {
        $this->db->select('*');
        $this->db->from('psb');
        $this->db->where('jurusan1', 'Teknik Instalasi Tenaga Listrik');
        return $this->db->count_all_results();
    }
    public function countTbsm()
    {
        $this->db->select('*');
        $this->db->from('psb');
        $this->db->where('jurusan1', 'Teknik dan Bisnis Sepeda Motor');
        return $this->db->count_all_results();
    }

    private function guru()
    {
        $this->db->select('*');
        $this->db->from('users');
        $this->db->where('auth_level', 6);
        if (isset($_GET['order'])) {
            $this->db->order_by($this->ordered[$_GET['order']['0']['column']], $_GET['order']['0']['dir']);
        } else {
            $this->db->order_by('nidn', 'desc');
        }
    }

    public function get_datatables()
    {
        $this->guru();
        if ($this->input->get('length') !== -1) {
            $this->db->limit($this->input->get('length'));
        }
        $query = $this->db->get();
        return $query->result();
    }

    public function filter()
    {
        $this->guru();
        $query = $this->db->get();
        return $query->num_rows();
    }

    public function count_all()
    {
        $this->db->from('users');
        $this->db->where('auth_level', 6);

        return $this->db->count_all_results();
    }

    //======================

    public function psbAcc($data_input)
    {
        $query = $this->db->insert('accepted', $data_input);
        return array($data_input['acc_id'], 'insert' => $query);
    }

    public function countAcc()
    {
        $this->db->from('accepted');
        return $this->db->count_all_results();
    }

    public function delete($id)
    {
        $this->db->where('psb_id', $id);
        $this->db->delete('psb');
    }

    public function psbArchive($data_archive)
    {
        $query = $this->db->insert('ppdb_archive_new', $data_archive);
        return array($data_archive['id'], 'insert' => $query);
    }
}

/* End of file Admin.php */

<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Arsip_psb_m extends CI_Model
{
    private $psb = 'psb';
    private $arsip = 'psb_archive';

    public function get_psb()
    {
        return $this->db->get($this->psb);
    }

    public function archive()
    {
        $query = $this->db->query('insert psb_archive select * from psb');
        return $query;
    }

    public function trct_psb()
    {
        return $this->db->truncate($this->psb);
    }

    public function archive_years()
    {
        $this->db->select('tahun_submit');
        $this->db->from($this->arsip);
        $this->db->group_by('tahun_submit');
        return $this->db->get();
    }
}

/* End of file Calon_psb_m.php */

<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Cadangan_m extends CI_Model
{
    protected $cadang = 'cadangan';

    public function insert($data)
    {
        return $this->db->insert($this->cadang, $data);
    }

    public function updateCadangan($cadang, $id)
    { //tabel psb
        return $this->db->update('psb', $cadang, ['psb_id' => $id]);
    }
}

/* End of file Cadangan_m.php */

<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pencarian_m extends MY_Model {

    private $cari = 'psb';

    public function searchData($nisn){
        return $this->db->get_where($this->cari, array('nisn' => $nisn))->result();
        
    }
    
    public function updateTest($test, $id){
        return $this->db->update($this->cari, $test, $id);
    }

}

/* End of file Pencarian_m.php */
?>
<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Sidebar_m extends MY_Model {

    private $jur = 'jurusan';
    /**
     * jurusan sidebar
     * 
     */
    public function getJur(){
        return $this->db->get($this->jur)->result();
    }

    public function getJurId(){

    }

}

/* End of file Sidebar.php */

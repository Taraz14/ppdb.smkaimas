<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Sidebar_c extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('menu/sidebar_m');
        
    }
    
    public function index()
    {
        $this->load->view('layouts/sidebar',[
            'jurusan' => $this->sidebar_m->getJur()
        ]);
    }

}

/* End of file Sidebar_c.php */

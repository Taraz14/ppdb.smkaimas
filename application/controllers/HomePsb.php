<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class HomePsb extends MY_Controller {

    public function index()
    {
        $this->load->view('psb/layouts/index', [
            'content' => 'psb/pages/home',
            'title' => 'Pendaftaran Siswa Baru'
        ]);        
    }
}

/* End of file Home.php */

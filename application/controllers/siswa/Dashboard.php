<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends MY_Controller {
    
    public function __construct()
    {
        parent::__construct();
        if(!$this->verify_role('siswa')) redirect('auth');
    }
    
    public function index()
    {
        $data = [
            'content' => 'siswa/pages/dashboard',
            'header'=> 'Dashboard'
        ];

        $this->load->view('layouts/wrapper', $data, FALSE);
        
    }

}

/* End of file Dashboard.php */

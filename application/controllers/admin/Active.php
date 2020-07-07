<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Active extends MY_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model(array('admin_m', 'blog_m', 'psb/pendaftar_m'));
        $this->load->model('psb/pendaftar_m');
        if(!$this->verify_role('admin')) redirect('auth');
    }
    
    public function index()
    {
        $this->load->view('layouts/wrapper', [
            'content' => 'admin/pages/aktivasi',
            'header' => 'Aktivasi',
            'bt' => $this->pendaftar_m->bt()
        ]);
        
    }

}

/* End of file Active.php */

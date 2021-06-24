<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class DataSiswa extends MY_Controller {

    public function __construct()
    {
        parent::__construct();
        if(!$this->verify_role('guru')) redirect('auth');
    }

    public function index()
    {
        $data = [
            'content' => 'guru/pages/data_siswa',
            'header'=> 'Data Siswa'
        ];

        $this->load->view('layouts/wrapper', $data, FALSE);
    }

}

/* End of file DataSiswa.php */

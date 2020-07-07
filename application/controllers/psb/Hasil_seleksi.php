<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Hasil_seleksi extends MY_Controller {

    public function index()
    {
        $this->load->view('psb/layouts/index',[
            'content' => 'psb/pages/hasil_seleksi',
            'title' => 'Hasil Seleksi'
        ]);
        
    }

}

/* End of file Hasil_seleksi.php */

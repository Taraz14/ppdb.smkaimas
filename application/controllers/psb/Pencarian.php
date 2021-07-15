<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Pencarian extends MY_Controller
{

    public function __construct()
    {
        parent::__construct();
        //Do your magic here
        $this->load->helper(array('form', 'file'));
        $this->load->library('form_validation');
        $this->lang->load('form_validation', 'english');
        $this->load->model('psb/pencarian_m');
    }

    public function index()
    {
        $nisn = $this->input->post('nisn');
        // var_dump($nisn);die();
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $this->load->view('psb/layouts/index', [
                'content' => 'psb/pages/pencarian',
                'title' => 'Pencarian Data',
                'cari'  => $this->pencarian_m->searchData($nisn),
                'cari2' => $this->pencarian_m->searchDataMentah($nisn),
                'cari3' => $this->pencarian_m->searchDataCadangan($nisn),
            ]);
        } else {
            $this->load->view('psb/layouts/index', [
                'content' => 'psb/pages/pencarian',
                'title' => 'Pencarian Data',
            ]);
        }
    }

    public function updateTest()
    {
        $nisn = $this->input->post('nisnx');
        echo $nisn;

        $test = [
            'is_tested' => 1
        ];
        $this->pencarian_m->updateTest($test, ['nisn' => $nisn]);
        redirect('https://forms.gle/TLL8dxyJpKNTpuUQ9');
    }
}

/* End of file Pencarian.php */

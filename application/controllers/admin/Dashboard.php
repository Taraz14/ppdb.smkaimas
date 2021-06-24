<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard extends MY_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model(array(
            'admin_m', 'blog_m',
            'psb/pendaftar_m',
            'psb/test_online_m'
        ));
        $this->getJur = $this->sidebar_m->getJur();
        if (!$this->verify_role('admin')) redirect('auth');
    }

    public function index()
    {
        $data = [
            'content' => 'admin/pages/dashboard',
            'header' => 'Dashboard',
            'guru' => $this->admin_m->count_all(),
            'berita' => $this->blog_m->countAll(),
            'pendaftar' => $this->pendaftar_m->countAll(),
            'acc' => $this->admin_m->countAcc(),
            'tested' => $this->test_online_m->test(),
            'countAkl' => $this->admin_m->countAkl(),
            'countOtkp' => $this->admin_m->countOtkp(),
            'countDpib' => $this->admin_m->countDpib(),
            'countTkj' => $this->admin_m->countTkj(),
            'countTkro' => $this->admin_m->countTkro(),
            'countTitl' => $this->admin_m->countTitl(),
            'countTbsm' => $this->admin_m->countTbsm(),

        ];

        $this->load->view('layouts/wrapper', $data, FALSE);
    }
}

/* End of file Dashboard.php */

<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Cadangan extends MY_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->helper(array('form', 'file'));
        $this->load->library('form_validation');
        $this->load->model(array(
            'admin_m',
            'blog_m',
            'psb/pendaftar_m',
            'psb/calon_psb_m',
            'admin/kelas_m',
            'admin/jurusan_m',
            'admin/cadangan_m'
        ));
        $this->getJur = $this->sidebar_m->getJur();
        if (!$this->verify_role('admin')) redirect('auth');
    }

    public function index($id)
    {

        $data = [
            'psb_id' => $id,
            'id_users' => $this->auth_user_id,
            'submit_at' => date('Y-m-d H:i:s', time())
        ];

        $data_psb = [
            'cadangkan' => 1
        ];

        $this->cadangan_m->updateCadangan($data_psb, $id);
        $this->cadangan_m->insert($data);
        echo json_encode(array('status' => TRUE));
    }
}

/* End of file Cadangan.php */

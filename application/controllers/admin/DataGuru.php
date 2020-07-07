<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class DataGuru extends MY_Controller {
    
    public function __construct()
    {
        parent::__construct();
        $this->load->model('admin_m');
        $this->getJur = $this->sidebar_m->getJur();
        if(!$this->verify_role('admin')) redirect('auth');
    }
    
    public function index()
    {
        $data = [
            'content' => 'admin/pages/data_guru',
            'header'=> 'Data Guru'
        ];

        $this->load->view('layouts/wrapper', $data, FALSE);
        
    }

    public function guru(){
        $list = $this->admin_m->get_datatables();
        $data = array();
        $no = 0;
        foreach($list as $guru){
            $no++;
            $val = [];
            $val[] = htmlspecialchars($guru->nidn, ENT_QUOTES, 'UTF-8');
            $val[] = htmlspecialchars($guru->nama, ENT_QUOTES, 'UTF-8');
            $val[] = htmlspecialchars($guru->email, ENT_QUOTES, 'UTF-8');
            $val[] = htmlspecialchars($guru->alamat, ENT_QUOTES, 'UTF-8');
            $val[] = htmlspecialchars($guru->telp, ENT_QUOTES, 'UTF-8');
            $val[] = htmlspecialchars($guru->gender, ENT_QUOTES, 'UTF-8');
            $val[] = htmlspecialchars($guru->status, ENT_QUOTES, 'UTF-8');
            $val[] = '<a href="#" class="btn btn-default btn-sm"><i class="glyphicon glyphicon-eye-open"></i></a>
                        <a href="#" class="btn btn-default btn-sm"><i class="glyphicon glyphicon-trash"></i></a>';
            array_push($data, $val);
        }

        $output['draw']	= intval($this->input->get('draw'));
		$output['recordsTotal'] = $this->admin_m->count_all();
		$output['recordsFiltered'] = $this->admin_m->filter();
		$output['data'] = $data;

		echo json_encode($output);
    }

}

/* End of file DataGuru.php */

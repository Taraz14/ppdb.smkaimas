<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Forum extends MY_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->helper(array('form', 'file'));
        $this->load->model('blog_m');
        if(!$this->verify_role('guru')) redirect('auth');
    }
    
    public function index()
    {
        echo 'Forum';
    }

    public function berita(){

        $data = [
            'content' => 'guru/pages/berita',
            'header'=> 'Berita'
        ];
        
        $this->load->view('layouts/wrapper', $data, FALSE);
        
    }

    public function upload(){
        $user = $this->input->post('user_id');
        $judul = $this->input->post('judul_b');
        $sub_judul = $this->input->post('sub_b');
        $isi = $this->input->post('isi_b');
        
        if($_SERVER['REQUEST_METHOD'] === 'POST'){
            $this->blog_m->publish_article($user, $judul, $sub_judul, $isi);
            redirect('guru/berita', 'refresh');
        }
        else{
            $data = [
                'content' => 'guru/pages/berita_add',
                'header'=> 'Berita'
            ];
            
            $this->load->view('layouts/wrapper', $data, FALSE);
    
        }
    }

    public function berita_table(){
        $data = $this->blog_m->datatables();
        $berita = [];
        foreach ($data as $val) {
            $temp = [];
            $temp[] = htmlspecialchars($val->berita_id, ENT_QUOTES, 'UTF-8');
            $temp[] = htmlspecialchars($val->judul_b, ENT_QUOTES, 'UTF-8');
            $temp[] = htmlspecialchars($val->sub_judul, ENT_QUOTES, 'UTF-8');
            $temp[] = htmlspecialchars(date('d-m-Y/H:i',$val->post_at), ENT_QUOTES, 'UTF-8');
            $temp[] = htmlspecialchars(date('d-m-Y/H:i',$val->last_edit), ENT_QUOTES, 'UTF-8');
            $temp[] = '
                        <a href="#" class="btn btn-default btn-sm">
                            <i class="glyphicon glyphicon-pencil"></i>
                        </a>
                        <a href="#" class="btn btn-default btn-sm">
                            <i class="glyphicon glyphicon-trash"></i>
                        </a>';
            $berita[] = $temp;
        }

        $output['draw'] = intval($this->input->get('draw'));
        $output['recordsTotal'] = $this->blog_m->countAll();
        $output['recordsFiltered'] = $this->blog_m->filter();
        $output['data'] = $berita;

        echo json_encode($output);
    }

    public function delete($id)
	{
		$this->blog_m->delete($id);
		echo json_encode(array("status" => TRUE));
	}
}

/* End of file Forum.php */

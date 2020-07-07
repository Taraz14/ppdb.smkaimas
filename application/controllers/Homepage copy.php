<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Homepage extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('blog_m');
        $this->load->helper('text');

        //pagination lib
        $this->load->library('pagination');
        
        //limiting page
        $this->perPage = 3;
        
        
    }
    
    public function index()
    {
        // $data = [
        //     'content' => 'homepage/pages/home',
        //     'title' => 'Homepage'
        // ];
        
        // $this->load->view('homepage/layouts/index.php', $data, FALSE);
        redirect('psb', 'refresh');
    }

    public function berita(){
        $data = $conditions = array();
        $urisegment = 3;
        //get row count
        $conditions['returnType'] = 'count';
        $totalRec = $this->blog_m->getAll($conditions);

        //pagination config
        $config['base_url']     = base_url('homepage/berita');
        $config['uri_segment']  = $urisegment;
        $config['total_rows']   = $totalRec;
        $config['per_page']     = $this->perPage;

        // Pagination link format 
        $config['num_tag_open'] = '<li>'; 
        $config['num_tag_close'] = '</li>'; 
        $config['cur_tag_open'] = '<li class="active"><a href="javascript:void(0);">'; 
        $config['cur_tag_close'] = '</a></li>'; 
        $config['next_link'] = 'Next'; 
        $config['prev_link'] = 'Prev'; 
        $config['next_tag_open'] = '<li class="pg-next">'; 
        $config['next_tag_close'] = '</li>'; 
        $config['prev_tag_open'] = '<li class="pg-prev">'; 
        $config['prev_tag_close'] = '</li>'; 
        $config['first_tag_open'] = '<li>'; 
        $config['first_tag_close'] = '</li>'; 
        $config['last_tag_open'] = '<li>'; 
        $config['last_tag_close'] = '</li>';

        //inizializing pagination lib
        $this->pagination->initialize($config);

        //define offset
        $page = $this->uri->segment($urisegment);
        $offset = !$page?0:$page;
        
        //get rows
        // $conditions['returnType'] = '';
        $conditions['start'] = $offset;
        $conditions['limit'] = $this->perPage;

        // echo $this->pagination->create_links();
        $data['berita'] = $this->blog_m->getAll($conditions);

        // var_dump($data);die();
        
        $this->load->view('homepage/layouts/index.php', [
            'content' => 'homepage/pages/berita',
            'title' => 'Berita',
            // 'berita' => $this->getBerita(),
            // 'count' => $this->countAll(),
        ], $data);
    }

    private function getBerita(){
        return $this->blog_m->getAll();
    }

    private function countAll(){
        return $this->blog_m->countAll();
    }

    public function beritaRm(){
        $id = $this->uri->segment(2);
        
        $this->load->view('homepage/layouts/index', [
            'content' => 'homepage/pages/berita_rm',
            'title' => '',
            'berita' => $this->beritaLoad($id)
        ]);
        
    }

    private function beritaLoad($id){
        return $this->blog_m->getById($id);
    }

}

/* End of file Homepage.php */

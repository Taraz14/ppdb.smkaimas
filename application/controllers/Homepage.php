<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Homepage extends CI_Controller {

    // public function __construct()
    // {
    //     parent::__construct();
    //     $this->load->model('blog_m');
    //     $this->load->helper('text');
    // }
    
    public function index()
    {
        // $data = [
        //     'content' => 'homepage/pages/home',
        //     'title' => 'Homepage'
        // ];
        
        // $this->load->view('homepage/layouts/index.php', $data, FALSE);
        redirect('psb', 'refresh');
    }

    // public function berita(){
    //     // $f = $this->blog_m->archive();
    //     // var_dump($f);die();

    //     $jumlah_data = $this->blog_m->jml();
    //     //pagination lib
    //     $this->load->library('pagination');
        
    //     //config control
    //     $config['base_url'] = base_url('homepage/berita');
    //     $config['total_rows'] = $jumlah_data;
    //     $config['per_page'] = 3;

    //     // Pagination link format 
    //     $config['num_tag_open'] = '<li>'; 
    //     $config['num_tag_close'] = '</li>'; 
    //     $config['cur_tag_open'] = '<li class="active"><a href="javascript:void(0);">'; 
    //     $config['cur_tag_close'] = '</a></li>'; 
    //     $config['next_link'] = 'Next'; 
    //     $config['prev_link'] = 'Prev'; 
    //     $config['next_tag_open'] = '<li class="pg-next">'; 
    //     $config['next_tag_close'] = '</li>'; 
    //     $config['prev_tag_open'] = '<li class="pg-prev">'; 
    //     $config['prev_tag_close'] = '</li>'; 
    //     $config['first_tag_open'] = '<li>'; 
    //     $config['first_tag_close'] = '</li>'; 
    //     $config['last_tag_open'] = '<li>'; 
    //     $config['last_tag_close'] = '</li>';

    //     $from = $this->uri->segment(3);
    //     //initialize
    //     $this->pagination->initialize($config);	

    //     //load view
    //     $this->load->view('homepage/layouts/index.php', [
    //         'content' => 'homepage/pages/berita',
    //         'title' => 'Berita',
    //         'berita' => $this->blog_m->getAll($config['per_page'],$from),
    //         'count' => $this->countAll(),
    //         'pop'   => $this->popular(),
    //         'arsip' => $this->blog_m->archive()
    //     ]);
    // }

    // private function getBerita(){
    //     return $this->blog_m->getAll();
    // }

    // private function countAll(){
    //     return $this->blog_m->countAll();
    // }

    // private function popular(){
    //     return $this->blog_m->popular();
    // }

    // public function beritaRm(){
    //     $id = $this->uri->segment(3);
        
    //     $berita = $this->blog_m->getById($id);
    //     $hitung = $berita->counts;
    //     $counts = $hitung +1;

    //     $this->db->set('counts', $counts, false);
    //     $this->db->where('berita_id', $id);
    //     $this->db->update('berita');
    //     // echo $counts;die();
        
    //     $this->load->view('homepage/layouts/index', [
    //         'content' => 'homepage/pages/berita_rm',
    //         'title' => '',
    //         'berita' => $berita,
    //     ]);
        
    // }

}

/* End of file Homepage.php */

<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Blog_m extends CI_Model {
    
    private $_table = "berita";
    private $_us    = "users";

    public $berita_id;
    public $user_id;
    public $judul_b;
    public $sub_judul;
    public $isi_b;
    public $post_at;
    public $last_edit;

    public function rules(){
        return [
            ['field' => 'judul_b',
            'label' => 'Judul',
            'rules' => 'required'],

            ['field' => 'sub_b',
            'label' => 'Slug',
            'rules' => 'required']
        ];
    }

    public function publish(){
        $post = $this->input->post();
        //mining
        $this->berita_id = uniqid();
        $this->user_id   = $post['user_id'];
        $this->judul_b   = $post['judul_b'];
        $this->sub_judul = $post['sub_b'];
        $this->isi_b     = $post['isi_b'];
        $this->post_at   = time();
        $this->last_edit = time();
        return $this->db->insert($this->_table, $this);
    }

    /**
     * Fetch from database
     * @param array filter data based on the passed parameters
     */
    public function getAll($params = []){
        $this->db->select('b.*');
        $this->db->from('berita b');
        // $this->db->join('users u', 'b.user_id = u.user_id', 'left');

        // if(array_key_exists('b.berita_id', $params)){
        //     foreach ($params['b.berita_id'] as $key => $val) {
        //         $this->db->where($key, $val);
        //     }
        // }

        // if(array_key_exists('returnType', $params) && $params['returnType'] == 'count'){
        //     $result = $this->db->count_all_results();
        // }
        // else{
        //     if(array_key_exists('b.berita_id', $params) || (array_key_exists('returnType', $params) && $params['returnType'] == 'single')){
        //         if(!empty($params['b.berita_id'])){
        //             $this->db->where('b.berita_id', $params['b.berita_id']);
        //         }

        //         $query = $this->db->get();
        //         $result = $query->row->_array();
        //     }
        //     else{
        //         $this->db->order_by('b.berita_id', 'desc');
        //         if(array_key_exists('start', $params) && array_key_exists('limit', $params)){
        //             $this->db->limit($params['limit'], $params['start']);
        //         }
        //         elseif (!array_key_exists('start', $params) && array_key_exists('limit', $params)) {
        //             $this->db->limit($params['limit']);
        //         }

        //         $query = $this->db->get();
        //         $result = ($query->num_rows() > 0) ? $query->result_array() : FALSE;
        //     }
        // }
       
        if(array_key_exists('b.berita_id', $params)){
            $this->db->where('b.berita_id', $params['b.berita_id']);
            $query = $this->db->get();
            $result = $query->row_array();
        }
        
        else{
            //set start and limit
            if(array_key_exists('start', $params) && array_key_exists('limit', $params)){
                $this->db->limit($params['limit'], $params['start']);
            }elseif (!array_key_exists('start', $params) && array_key_exists('limit', $params)) {
                $this->db->limit($params['limit']);
            }

            if(array_key_exists('returnType', $params) && $params['returnType'] == 'count'){
                $result = $this->db->count_all_results();
            }else{
                $query = $this->db->get();
                $result = ($query->num_rows() > 0) ? $query->result_array() : FALSE;
            }
        }

        //return fetch data
        return $result;

    }

    public function getById($id){
        return $this->db->get_where($this->_table, ["berita_id" => $id])->row();
    }

    private function QueryBerita(){
        $this->db->select('*');
        $this->db->from('berita');
        $uri = $this->uri->segment(1);
        if($uri == 'admin'){
            $this->db->where('user_id', 2890700273);
        }

        elseif($uri == 'guru'){
            $this->db->where('user_id', 3302218415);
        }

        if($this->input->get('search')['value']){
            if($uri == 'admin'){
                $this->db->where('user_id', 2890700273);
                $this->db->like('judul_b', $this->input->get('search')['value']); 
                $this->db->or_like('sub_judul', $this->input->get('search')['value']);
                $this->db->or_like('isi_b', $this->input->get('search')['value']);
                $this->db->or_like('post_at', $this->input->get('search')['value']);
            }

            elseif($uri == 'guru'){
                $this->db->where('user_id', 3302218415);

                $this->db->like('judul_b', $this->input->get('search')['value']); 
                $this->db->or_like('sub_judul', $this->input->get('search')['value']);
                $this->db->or_like('isi_b', $this->input->get('search')['value']);
                $this->db->or_like('post_at', $this->input->get('search')['value']);
            }
        }

        if($this->input->get('order')) {
            $this->db->order_by(
                $this->input->get('order')['0']['column'],
                $this->input->get('order')['0']['dir']
            );
        }
        else{
            $this->db->order_by('post_at', 'desc');
        }

    }
    
    public function datatables(){
        self::QueryBerita();
        if($this->input->get('length') !== -1){
            $this->db->limit($this->input->get('length'), $this->input->get('start'));
        }
        return $this->db->get()->result();
    }

    public function filter(){
        self::QueryBerita();
        return $this->db->get()->num_rows();
    }

    public function countAll(){
        $uri = $this->uri->segment(1);

        $this->db->from('berita');
        if($uri == 'admin'){
            $this->db->where('user_id', 2890700273);
        }

        elseif($uri == 'guru'){
            $this->db->where('user_id', 3302218415);
        }

        return $this->db->count_all_results();
    }

    public function delete($id){
        $this->db->where('berita_id', $id);
		$this->db->delete($this->_table);
    }
}

/* End of file .php */

<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Blog_m extends CI_Model
{

    private $_table = "berita";
    private $_us    = "users";

    public $berita_id;
    public $user_id;
    public $judul_b;
    public $sub_judul;
    public $isi_b;
    public $post_at;
    public $last_edit;

    /**
     * 
     * Admin & Guru
     * 
     */

    public function rules()
    {
        return [
            [
                'field' => 'judul_b',
                'label' => 'Judul',
                'rules' => 'required'
            ],

            [
                'field' => 'sub_b',
                'label' => 'Slug',
                'rules' => 'required'
            ]
        ];
    }

    public function publish()
    {
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

    private function QueryBerita()
    {
        $this->db->select('*');
        $this->db->from('berita');
        $uri = $this->uri->segment(1);
        if ($uri == 'admin') {
            $this->db->where('user_id', 2890700273);
        } elseif ($uri == 'guru') {
            $this->db->where('user_id', 3302218415);
        }

        if ($this->input->get('search')['value']) {
            if ($uri == 'admin') {
                $this->db->where('user_id', 2890700273);
                $this->db->like('judul_b', $this->input->get('search')['value']);
                $this->db->or_like('sub_judul', $this->input->get('search')['value']);
                $this->db->or_like('isi_b', $this->input->get('search')['value']);
                $this->db->or_like('post_at', $this->input->get('search')['value']);
            } elseif ($uri == 'guru') {
                $this->db->where('user_id', 3302218415);

                $this->db->like('judul_b', $this->input->get('search')['value']);
                $this->db->or_like('sub_judul', $this->input->get('search')['value']);
                $this->db->or_like('isi_b', $this->input->get('search')['value']);
                $this->db->or_like('post_at', $this->input->get('search')['value']);
            }
        }

        if ($this->input->get('order')) {
            $this->db->order_by(
                $this->input->get('order')['0']['column'],
                $this->input->get('order')['0']['dir']
            );
        } else {
            $this->db->order_by('post_at', 'desc');
        }
    }

    public function datatables()
    {
        self::QueryBerita();
        if ($this->input->get('length') !== -1) {
            $this->db->limit($this->input->get('length'), $this->input->get('start'));
        }
        return $this->db->get()->result();
    }

    public function filter()
    {
        self::QueryBerita();
        return $this->db->get()->num_rows();
    }

    public function countAll()
    {
        $uri = $this->uri->segment(1);

        $this->db->from('berita');
        if ($uri == 'admin') {
            $this->db->where('user_id', 2890700273);
        } elseif ($uri == 'guru') {
            $this->db->where('user_id', 3302218415);
        }

        return $this->db->count_all_results();
    }

    public function delete($id)
    {
        $this->db->where('berita_id', $id);
        $this->db->delete($this->_table);
    }


    //=============================================================//


    /**
     * Blog on landing page
     * Fetch from database
     * @param array filter data based on the passed parameters
     */
    public function getAll($number, $offset)
    {
        $this->db->select('b.*, u.*');
        $this->db->join('users u', 'b.user_id = u.user_id', 'left');
        $this->db->order_by('post_at', 'desc');
        $query = $this->db->get('berita b', $number, $offset);
        return $query->result();
    }

    public function jml()
    {
        return $this->db->get('berita')->num_rows();
    }

    public function getById($id)
    {
        $this->db->join('users u', 'b.user_id = u.user_id', 'left');
        $query = $this->db->get_where($this->_table . ' b', ["berita_id" => $id]);
        return $query->row();
    }

    public function popular()
    {
        $this->db->select('berita_id, judul_b, sub_judul');
        $this->db->order_by('counts', 'desc');
        $query = $this->db->get('berita', 3);
        return $query->result();
    }

    public function archive()
    {
        $this->db->order_by('post_at', 'asc');
        return $this->db->get('berita', 10)->result();
    }
}

/* End of file .php */

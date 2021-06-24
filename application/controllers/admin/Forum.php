<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Forum extends MY_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->helper(array('form', 'file'));
        $this->load->library('form_validation');
        $this->load->model('blog_m');
        $this->getJur = $this->sidebar_m->getJur();
        if (!$this->verify_role('admin')) redirect('auth');
    }

    public function index()
    {
        echo 'Forum';
    }

    public function berita()
    {
        $this->load->view('layouts/wrapper', [
            'content' => 'admin/pages/berita',
            'header' => 'Berita'
        ]);
    }

    public function upload()
    {
        $berita = $this->blog_m;
        $validation = $this->form_validation->set_rules($berita->rules());

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            if ($validation->run()) {
                $berita->publish();

                $this->session->set_flashdata('success', 'Berita berhasil dipublish');
            }

            // $this->load->view('layouts/wrapper', [
            //     'content' => 'admin/pages/berita_add',
            //     'header'=> 'Berita']);

            redirect('admin/berita', 'refresh');
        } else {
            $this->load->view('layouts/wrapper', [
                'content' => 'admin/pages/berita_add',
                'header' => 'Berita'
            ]);
        }
    }

    public function berita_table()
    {
        $data = $this->blog_m->datatables();
        $berita = [];
        foreach ($data as $val) {
            $temp = [];
            // $temp[] = htmlspecialchars($val->berita_id, ENT_QUOTES, 'UTF-8');
            $temp[] = '<a href="#"><i>' . htmlspecialchars($val->judul_b, ENT_QUOTES, 'UTF-8') . '</i></a>';
            $temp[] = htmlspecialchars($val->sub_judul, ENT_QUOTES, 'UTF-8');
            $temp[] = htmlspecialchars(date("d-m-Y/H:i", $val->post_at), ENT_QUOTES, 'UTF-8');
            $temp[] = htmlspecialchars(date("d-m-Y/H:i", $val->last_edit), ENT_QUOTES, 'UTF-8');
            $temp[] = '
                        <a href="' . site_url('admin/berita/u/' . $val->berita_id) . '" class="btn btn-default btn-sm" data-toggle="tooltip" title="Edit">
                            <i class="glyphicon glyphicon-pencil"></i>
                        </a>
                        <a href="#" class="btn btn-default btn-sm" data-toggle="tooltip" title="Lihat">
                            <i class="glyphicon glyphicon-eye-open"></i>
                        </a>
                        <a href="javascript:void(0)" onclick="delete_b(' . "'" . $val->berita_id . "'" . ')" class="btn btn-default btn-sm" data-toggle="tooltip" title="Hapus">
                            <i class="glyphicon glyphicon-trash"></i>
                        </a>
                       ';

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

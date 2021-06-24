<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Kelas extends MY_Controller
{

  public function __construct()
  {
    parent::__construct();
    //Do your magic here
    $this->load->helper(array('form'));
    $this->load->library('form_validation');
    $this->load->model('admin/kelas_m');

    if (!$this->verify_role('admin')) redirect('auth');
  }

  public function index()
  {
    $this->load->view('layouts/wrapper', [
      'content' => 'admin/pages/kelas/kelas',
      'header' => 'Kelas'
    ], FALSE);
  }

  public function saveKelas()
  {
    $kelas_model = $this->kelas_m;
    $input = $this->input->post();
    $explode = explode(' ', $input['addkelas']);
    $class = implode($explode);
    $class_id = $input['class_id'] . $class;

    $this->form_validation->set_rules('addkelas', 'Kelas', 'required|is_unique[kelas.class_name]');
    $this->form_validation->set_message('is_unique', '%s sudah ada');
    if ($this->form_validation->run() == FALSE) {
      echo json_encode(array('status' => FALSE));
    } else {
      unset($input);
      $kelas = [
        'class_id' => $class_id,
        'class_name' => $this->input->post('addkelas'),
        'create_at' => time()
      ];
      $insert =  $this->kelas_m->save($kelas);
      echo json_encode(array('status' => TRUE));
    }
  }

  public function getKelas()
  {
    $data = $this->kelas_m->dataKelas();
    $kelas = [];
    $no = 1;
    foreach ($data as $kelasVal) {
      $temp = [];
      $temp[] = htmlspecialchars($no++, ENT_QUOTES, 'UTF-8');
      $temp[] = htmlspecialchars($kelasVal->class_name, ENT_QUOTES, 'UTF-8');
      $temp[] = htmlspecialchars(date('d-m-Y / H:i', $kelasVal->create_at), ENT_QUOTES, 'UTF-8');
      $temp[] = ' 
      <a href="javascript:void(0)" onclick="delete_b(' . "'" . $kelasVal->class_id . "'" . ')" class="btn btn-default btn-sm" data-toggle="tooltip" title="Detail" target="">
          <i class="glyphicon glyphicon-trash" style="color:#ff0000"></i>
      </a>';
      $kelas[] = $temp;
    }

    $output['draw'] = intval($this->input->get('draw'));
    $output['recordsTotal'] = $this->kelas_m->countAll();
    $output['recordsFiltered'] = $this->kelas_m->filtered();
    $output['data'] = $kelas;

    echo json_encode($output);
  }

  public function delete($id)
  {
    $this->kelas_m->delete($id);
    echo json_encode(array("status" => TRUE));
  }
}

/* End of file Kelas.php */

<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Pendaftaran extends MY_Controller
{

    public function __construct()
    {
        parent::__construct();
        //Do your magic here
        $this->load->helper(array('form', 'file'));
        $this->load->library('form_validation');
        $this->lang->load('form_validation', 'english');
        $this->load->model('psb/pendaftar_m');
    }

    public function index()
    {
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $i = $this->input->post('bool');
            // var_dump($i);die();
            $bool = [
                'bool' => $i
            ];

            if ($this->pendaftar_m->btChange($bool, ['bt_id' => $i])) {
                $this->session->set_flashdata('success', 'Tombol berhasil diaktifkan">');
                redirect('pendaftaran', 'refresh');
            } else {
                $this->session->set_flashdata('error', 'Tombol tidak dapat diaktifkan.');
                redirect('pendaftaran', 'refresh');
            }
        } else {
            $this->load->view('psb/layouts/index', [
                'content' => 'psb/pages/pendaftaran',
                'title' => 'Pendaftaran',
                'bt' => $this->pendaftar_m->bt()
            ]);
        }
    }

    public function formDaftar()
    {
        $this->load->view('psb/layouts/index', [
            'content' => 'psb/pages/form',
            'title' => 'Form Pendaftaran',
            'jurusan' => $this->pendaftar_m->getJurusan()
        ]);
    }

    public function getDaftar()
    {
        //data mining

        $data_model = $this->pendaftar_m;
        $valid = $this->form_validation;
        $validating_data = $valid->set_rules($data_model->validate_rules());
        if (!$this->form_validation->run()) {
            $this->formDaftar();
        } else {
            $this->dataMining();
        }
    }

    private function dataMining()
    {
        $data_model = $this->pendaftar_m;
        //image
        $config['upload_path']   = './assets/uploads/';
        $config['allowed_types'] = 'gif|jpg|png|svg|jpeg';
        $config['max_size']      = '12000'; // KB
        $config['file_name']  = round(microtime(true) * 1000);
        $this->upload->initialize($config);

        if (!$this->upload->do_upload('imagefile')) {
            //tidak menyertakan file
            $input = $this->input->post();
            $date = explode('/', $input['tanggal_lahir']);
            $tgl = implode('-', $date);
            $tgl_lahir = $date[2] . '-' . $date[0] . '-' . $date[1];
            // echo $tgl_lahir;
            // die();
            $data_input = [
                'psb_id'            => uniqid(),
                'nama_lengkap'      => $input['nama'],
                'nisn'              => $input['nisn'],
                'tempat_lahir'      => $input['tempat_lahir'],
                'tanggal_lahir'     => $tgl_lahir,
                'jenis_kelamin'     => $input['jenis_kelamin'],
                'agama'             => $input['agama'],
                'jurusan1'          => $input['jurusan1'],
                'jurusan2'          => $input['jurusan2'],
                'kewarganegaraan'   => $input['kewarganegaraan'],
                'no_telp'           => $input['no_telp'],
                'alamat'            => $input['alamat'] . '/' . $input['prov'],
                'ayah_kandung'      => $input['ayah_kandung'],
                'pekerjaan_ayah'    => $input['pekerjaan_ayah'],
                'ibu_kandung'       => $input['ibu_kandung'],
                'pekerjaan_ibu'     => $input['pekerjaan_ibu'],
                'alamat_ortu'       => $input['alamat_ortu'],
                'telp_ortu'         => $input['telp_ortu'],
                'nama_wali'         => $input['nama_wali'],
                'pekerjaan_wali'    => $input['pekerjaan_wali'],
                'alamat_wali'       => $input['alamat_wali'],
                'telp_wali'         => $input['telp_wali'],
                'asal_sekolah'      => $input['asal_sekolah'],
                'alamat_sekolah'    => $input['alamat_sekolah'],
                'tahun_lulus'       => $input['tahun_lulus'],
                'submit_at'         => time(),
                'nomor_pendaftar'   => mt_rand()
            ];

            $data = $data_model->insert_pendaftar($data_input);
            $id = $data[0];
            $getById = $this->pendaftar_m->getNumb($id);

            $this->load->view('psb/layouts/index', [
                'content' => 'psb/pages/nomor_registrasi',
                'title' => 'Registrasi',
                'getData' => $getById
            ]);
        } else {
            //menyertakan file
            $upload_data = array('uploads' => $this->upload->data());
            // Foto Edit
            $config['image_library']   = 'gd2';
            $config['source_image']    = './assets/uploads/' . $upload_data['uploads']['file_name'];
            $config['create_thumb']    = FALSE;
            $config['quality']         = "100%";
            $config['maintain_ratio']   = TRUE;
            $config['width']           = 360; // Pixel
            $config['height']          = 360; // upload
            $config['x_axis']          = 0;
            $config['y_axis']          = 0;
            $config['thumb_marker']    = '';

            $this->load->library('image_lib', $config);

            $input = $this->input->post();
            $date = explode('/', $input['tanggal_lahir']);
            $tgl = implode('-', $date);
            $tgl_lahir = $date[2] . '-' . $date[1] . '-' . $date[0];
            $data_input = [
                'psb_id'            => uniqid(),
                'nama_lengkap'      => $input['nama'],
                'nisn'              => $input['nisn'],
                'tempat_lahir'      => $input['tempat_lahir'],
                'tanggal_lahir'     => $tgl_lahir,
                'jenis_kelamin'     => $input['jenis_kelamin'],
                'agama'             => $input['agama'],
                'jurusan1'          => $input['jurusan1'],
                'jurusan2'          => $input['jurusan2'],
                'kewarganegaraan'   => $input['kewarganegaraan'],
                'no_telp'           => $input['no_telp'],
                'alamat'            => $input['alamat'] . '/' . $input['prov'],
                'ayah_kandung'      => $input['ayah_kandung'],
                'pekerjaan_ayah'    => $input['pekerjaan_ayah'],
                'ibu_kandung'       => $input['ibu_kandung'],
                'pekerjaan_ibu'     => $input['pekerjaan_ibu'],
                'alamat_ortu'       => $input['alamat_ortu'],
                'telp_ortu'         => $input['telp_ortu'],
                'nama_wali'         => $input['nama_wali'],
                'pekerjaan_wali'    => $input['pekerjaan_wali'],
                'alamat_wali'       => $input['alamat_wali'],
                'telp_wali'         => $input['telp_wali'],
                'asal_sekolah'      => $input['asal_sekolah'],
                'alamat_sekolah'    => $input['alamat_sekolah'],
                'tahun_lulus'       => $input['tahun_lulus'],
                'submit_at'         => time(),
                'nomor_pendaftar'   => mt_rand(),
                'file'              => base_url('assets/uploads/' . $upload_data['uploads']['file_name'])
            ];

            $data = $data_model->insert_pendaftar($data_input);
            $id = $data[0];
            $getById = $this->pendaftar_m->getNumb($id);

            $this->load->view('psb/layouts/index', [
                'content' => 'psb/pages/nomor_registrasi',
                'title' => 'Registrasi',
                'getData' => $getById
            ]);
        }
    }

    public function print()
    {
        $farm_data = $this->input->post();
        $this->load->view('psb/layouts/submited', [
            'content' => 'psb/pages/print_registrasi',
            'title' => 'Print Slip',
            'nomor' => $farm_data['nomor_pendaftar'],
            'nama' => $farm_data['nama'],
            'nisn' => $farm_data['nisn'],
            'tanggal_lahir' => $farm_data['tanggal_lahir'],
            'tempat_lahir' => $farm_data['tempat_lahir']
        ]);
    }
}

/* End of file Pendaftaran.php */

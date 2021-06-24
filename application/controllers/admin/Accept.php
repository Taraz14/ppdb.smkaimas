<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Accept extends MY_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('admin_m');
        $this->load->helper('form');
        $this->load->library('form_validation');
        if (!$this->verify_role('admin')) redirect('auth');
    }

    public function index()
    {
        $id = $this->input->post('id');
        $input = $this->input->post();
        $valid = $this->form_validation;
        $valid->set_rules('jurusan', 'Jurusan', 'required');
        $valid->set_message('jurusan', 'Harap pilih jurusan');
        if ($valid->run() == FALSE) {
            $this->session->set_flashdata('error', 'Harap Memilih Jurusan');
            redirect('admin/psb/detail/' . $id, 'refresh');
        } else {
            if ($input['nilai'] == null) {
                $this->session->set_flashdata('error', 'Harap Mengisi <a href="' . site_url('admin/psb/u/nilai/') . $id . '">Nilai</a>');
                redirect('admin/psb/detail/' . $id, 'refresh');
            } else {
                $this->getData();
                redirect('admin/psb', 'refresh');
            }
        }
    }

    public function getData()
    {
        $input = $this->input->post();
        $id = $input['id'];
        $ay = date('Y', time());
        // var_dump($input['nilai']);die();
        $data_input = [
            'acc_id'            => $input['id'],
            'id_jalur'          => $input['jalur'],
            'class_id'          => $input['kelas'],
            'kode_jurusan'      => $input['jurusan'],
            'nama_lengkap'      => $input['nama_lengkap'],
            'nisn'              => $input['nisn'],
            'nik'               => $input['nik'],
            'tempat_lahir'      => $input['tempat_lahir'],
            'tanggal_lahir'     => $input['tanggal_lahir'],
            'jenis_kelamin'     => $input['jenis_kelamin'],
            'agama'             => $input['agama'],
            'kewarganegaraan'   => $input['kewarganegaraan'],
            'no_telp'           => $input['no_telp'],
            'alamat'            => $input['alamat'],
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
            // 'submit_at'         => time(),
            'nomor_pendaftar'   => mt_rand(),
            'file'              => $input['berkas'],
            'nilai'              => $input['nilai'],
            'accepted_at'       => time(),
            'accepted_year'       => $ay
        ];

        $data_archive = [
            'id'                 => $input['id'],
            'id_jalur'          => $input['jalur'],
            'class_id'          => $input['kelas'],
            'kode_jurusan'      => $input['jurusan'],
            'nama_lengkap'      => $input['nama_lengkap'],
            'nisn'              => $input['nisn'],
            'nik'               => $input['nik'],
            'tempat_lahir'      => $input['tempat_lahir'],
            'tanggal_lahir'     => $input['tanggal_lahir'],
            'jenis_kelamin'     => $input['jenis_kelamin'],
            'agama'             => $input['agama'],
            'kewarganegaraan'   => $input['kewarganegaraan'],
            'no_telp'           => $input['no_telp'],
            'alamat'            => $input['alamat'],
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
            'nomor_pendaftar'   => mt_rand(),
            'file'              => $input['berkas'],
            'nilai'              => $input['nilai'],
            'archive_at'        => time(),
            'archive_year'        => $ay
        ];

        $this->admin_m->psbAcc($data_input);
        $this->admin_m->psbArchive($data_archive);
        // $this->admin_m->delete($id);
    }
}

/* End of file Accept.php */

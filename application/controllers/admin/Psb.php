<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Psb extends MY_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->helper(array('form', 'file'));
        $this->load->library('form_validation');
        $this->load->model(array(
            'admin_m',
            'blog_m',
            'psb/pendaftar_m',
            'psb/calon_psb_m',
            'admin/kelas_m',
            'admin/jurusan_m'
        ));
        $this->getJur = $this->sidebar_m->getJur();
        if (!$this->verify_role('admin')) redirect('auth');
    }

    public function index()
    {
        // $get_sub = $this->pendaftar_m->getSubmitInt();
        // var_dump(date('Y', $get_sub['submit_at']));
        // foreach ($get_sub as $val) {
        //     var_dump(date('Y', $val));
        // }
        $this->load->view('layouts/wrapper', [
            'content' => 'admin/pages/psb/calon_psb',
            'header' => 'List PPDB',
            'getTahun' => $this->pendaftar_m->getTahun()
        ]);
    }

    public function getPsb()
    {
        $data = $this->pendaftar_m->dataPsb();
        $psb = [];
        foreach ($data as $psbVal) {
            $temp = [];

            $temp[] = ' 
                
                <a href="' . site_url('admin/psb/u/nilai/') . $psbVal->psb_id . '" class="btn btn-default btn-sm" data-toggle="tooltip" data-placement="right" title="Edit">
                <i class="glyphicon glyphicon-pencil" style="color:#FFBE00"></i>
            </a>
            <a href="' . site_url('admin/psb/detail/') . $psbVal->psb_id . '" class="btn btn-default btn-sm" data-toggle="tooltip" data-placement="right" title="Detail" target="">
                <i class="glyphicon glyphicon-eye-open" style="color:#009B29"></i>
            </a>
            <a href="javascript:void(0)" onclick="cadangkan(' . "'" . $psbVal->psb_id . "'" . ')" class="btn btn-default btn-sm" data-toggle="tooltip" data-placement="right" title="Cadangkan" target="">
                <i class="glyphicon glyphicon-user" style="color:#C800FF"></i>
            </a>';

            if ($psbVal->cadangkan == 1) {
                $temp[] = '<div style="color:red">' . htmlspecialchars($psbVal->nomor_pendaftar, ENT_QUOTES, 'UTF-8') . '</div>';
                $temp[] = '<div class="uppercase" style="color:red">' . htmlspecialchars($psbVal->nama_lengkap, ENT_QUOTES) . '</div>';
            } else {
                $temp[] = htmlspecialchars($psbVal->nomor_pendaftar, ENT_QUOTES, 'UTF-8');
                $temp[] = '<div class="uppercase">' . htmlspecialchars($psbVal->nama_lengkap, ENT_QUOTES) . '</div>';
            }

            $temp[] = htmlspecialchars($psbVal->nisn, ENT_QUOTES, 'UTF-8');
            $temp[] = htmlspecialchars($psbVal->tempat_lahir . ', ' . tanggal($psbVal->tanggal_lahir), ENT_QUOTES, 'UTF-8');
            $temp[] = htmlspecialchars($psbVal->jenis_kelamin, ENT_QUOTES, 'UTF-8');
            $temp[] = htmlspecialchars($psbVal->agama, ENT_QUOTES, 'UTF-8');
            $temp[] = '<div class="uppercase">' . htmlspecialchars($psbVal->kewarganegaraan, ENT_QUOTES, 'UTF-8') . '</div>';
            $temp[] = htmlspecialchars($psbVal->no_telp, ENT_QUOTES, 'UTF-8');
            $temp[] = htmlspecialchars($psbVal->alamat, ENT_QUOTES, 'UTF-8');
            $temp[] = htmlspecialchars($psbVal->jurusan1, ENT_QUOTES, 'UTF-8');
            // $temp[] = htmlspecialchars($psbVal->jurusan2, ENT_QUOTES, 'UTF-8');
            $temp[] = htmlspecialchars($psbVal->ayah_kandung, ENT_QUOTES, 'UTF-8');
            $temp[] = htmlspecialchars($psbVal->pekerjaan_ayah, ENT_QUOTES, 'UTF-8');
            $temp[] = htmlspecialchars($psbVal->ibu_kandung, ENT_QUOTES, 'UTF-8');
            $temp[] = htmlspecialchars($psbVal->pekerjaan_ibu, ENT_QUOTES, 'UTF-8');
            $temp[] = htmlspecialchars($psbVal->telp_ortu, ENT_QUOTES, 'UTF-8');
            $temp[] = htmlspecialchars($psbVal->alamat_ortu, ENT_QUOTES, 'UTF-8');
            $temp[] = htmlspecialchars($psbVal->nama_wali, ENT_QUOTES, 'UTF-8');
            $temp[] = htmlspecialchars($psbVal->pekerjaan_wali, ENT_QUOTES, 'UTF-8');
            $temp[] = htmlspecialchars($psbVal->alamat_wali, ENT_QUOTES, 'UTF-8');
            $temp[] = htmlspecialchars($psbVal->telp_wali, ENT_QUOTES, 'UTF-8');
            $temp[] = htmlspecialchars($psbVal->asal_sekolah, ENT_QUOTES, 'UTF-8');
            $temp[] = htmlspecialchars($psbVal->alamat_sekolah, ENT_QUOTES, 'UTF-8');
            $temp[] = htmlspecialchars($psbVal->tahun_lulus, ENT_QUOTES, 'UTF-8');
            $temp[] = htmlspecialchars($psbVal->jalur, ENT_QUOTES, 'UTF-8');
            $temp[] = htmlspecialchars($psbVal->nilai, ENT_QUOTES, 'UTF-8');
            // $temp[] = htmlspecialchars($psbVal->nilai, ENT_QUOTES, 'UTF-8');
            if (empty($psbVal->nilai)) {
                $temp[] = '<i class="fa fa-times" style="color:red"></i> Belum Ujian';
            } else {
                $temp[] = '<i class="fa fa-check" style="color:green"></i> Sudah Ujian';
            }

            // if(!$psbVal->file == NULL){

            //     $temp[] = '<p><i class="glyphicon glyphicon-ok" style="color:#009B29"></i> Sudah Upload</p>';
            // }else{
            //     $temp[] = '<p><i class="glyphicon glyphicon-remove" style="color:#FF3D00"></i> Belum Upload</p>';
            // }

            //     $temp[] = '
            //     <a href="'.site_url('admin/psb/u/nilai/').$psbVal->psb_id.'" class="btn btn-default btn-sm" data-toggle="tooltip" title="Edit">
            //         <i class="glyphicon glyphicon-pencil" style="color:#FFBE00"></i>
            //     </a>
            //     <a href="'.site_url('admin/psb/detail/').$psbVal->psb_id.'" class="btn btn-default btn-sm" data-toggle="tooltip" title="Detail" target="">
            //         <i class="glyphicon glyphicon-eye-open" style="color:#009B29"></i>
            //     </a>
            //     <a href="javascript:void(0)" onclick="delete_psb('."'".$psbVal->psb_id."'".')" class="btn btn-default btn-sm" data-toggle="tooltip" title="Hapus">
            //         <i class="glyphicon glyphicon-trash" style="color:#FF2700"></i>
            //     </a>
            //   ';

            $psb[] = $temp;
        }

        $output['draw'] = intval($this->input->get('draw'));
        $output['recordsTotal'] = $this->pendaftar_m->countAll();
        $output['recordsFiltered'] = $this->pendaftar_m->filtered();
        $output['data'] = $psb;

        echo json_encode($output);
    }

    public function detail()
    {
        $id = $this->uri->segment(4);
        $this->load->view('layouts/wrapper', [
            'content' => 'admin/pages/psb/detail_psb',
            'header' => 'Detail Pendaftar PSB',
            'detail' => $this->pendaftar_m->getNumb($id),
            'kelas' => $this->kelas_m->getKelas(),
            'jurusan' => $this->jurusan_m->getJurusan()
        ]);
    }

    public function updateNilai()
    {
        $id = $this->uri->segment(5);

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $input = $this->input->post();
            $np = $input['npp'] == '' ? 0 : $input['npp'];
            $nilai = [
                'nilai' => $input['nilai'],
                'id_jalur' => $np
            ];
            if ($this->pendaftar_m->updateNilai($nilai, ['psb_id' => $id])) {
                $this->session->set_flashdata('success', 'Nilai berhasil ditambahkan, ke <a href="' . site_url('admin/psb/detail/') . $id . '">halaman detail</a>');
                redirect('admin/psb/u/nilai/' . $id, 'refresh');
            } else {
                $this->session->set_flashdata('error', 'Nilai gagal ditambahkan.');
                redirect('admin/psb/u/nilai/' . $id, 'refresh');
            }
        } else {
            // $this->session->set_flashdata('error', 'Nilai gagal ditambahkan.');
            $this->load->view('layouts/wrapper', [
                'content' => 'admin/pages/psb/update_berkas',
                'header' => 'Update Berkas',
                'berkas' => $this->pendaftar_m->getNumb($id)
            ]);
        }
    }

    public function updateBerkas()
    {
        $id = $this->uri->segment(5);
        $n = $this->input->post('nilai');

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            //image
            $config['upload_path']   = './assets/uploads/';
            $config['allowed_types'] = 'gif|jpg|png|svg|jpeg';
            $config['max_size']      = '12000'; // KB
            $config['file_name']  = round(microtime(true) * 1000);
            $this->upload->initialize($config);

            if (!$this->upload->do_upload('imgupdate')) {
                $this->session->set_flashdata('error', '<div class="alert">error update berkas</div>');
                $this->load->view('layouts/wrapper', [
                    'content' => 'admin/pages/psb/update_berkas',
                    'header' => 'Update Berkas',
                    'berkas' => $this->pendaftar_m->getNumb($id)
                ]);
                if ($n) {
                    $data_input = [
                        'nilai' => $n
                    ];
                    // $this->updateNilai($nilai);
                    if ($this->pendaftar_m->updateBerkas($data_input, ['psb_id' => $id])) {
                        $this->load->view('layouts/wrapper', [
                            'content' => 'admin/pages/psb/update_berkas',
                            'header' => 'Update Berkas',
                            'berkas' => $this->pendaftar_m->getNumb($id)
                        ]);
                        $this->session->set_flashdata('message', 'Berkas berhasil diupload.');
                    }
                }
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
                var_dump($input['nilai']);
                die();
                $data_input = [
                    'file'   => base_url('assets/uploads/' . $upload_data['uploads']['file_name']),
                    'nilai' => $input['nilai']
                ];
                // $this->updateNilai($nilai);
                if ($this->pendaftar_m->updateBerkas($data_input, ['psb_id' => $id])) {
                    $this->load->view('layouts/wrapper', [
                        'content' => 'admin/pages/psb/update_berkas',
                        'header' => 'Update Berkas',
                        'berkas' => $this->pendaftar_m->getNumb($id)
                    ]);
                    $this->session->set_flashdata('message', 'Berkas berhasil diupload.');
                }
            }
        } else {
            $this->load->view('layouts/wrapper', [
                'content' => 'admin/pages/psb/update_berkas',
                'header' => 'Update Berkas',
                'berkas' => $this->pendaftar_m->getNumb($id)
            ]);
        }
    }

    public function delete($id)
    {
        $this->pendaftar_m->delete($id);
        echo json_encode(array("status" => TRUE));
    }
}

/* End of file Psb.php */

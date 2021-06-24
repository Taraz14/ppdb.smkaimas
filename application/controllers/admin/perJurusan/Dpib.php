<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dpib extends MY_Controller {
    
    public function __construct()
    {
        parent::__construct();
        $this->load->model('perjurusan/dpib_m');
        if(!$this->verify_role('admin')) redirect('auth');
    }

    public function index()
    {
        $this->load->view('layouts/wrapper', [
            'content' => 'admin/pages/perJurusan/dpib',
            'header'=> 'Desain Pemodelan dan Informasi Bangunan',
        ]);
        
    }

    public function getJur(){
        $data = $this->dpib_m->dataJur();
        $jur = [];
        foreach ($data as $jurVal) {
            $temp = [];
            $temp[] = htmlspecialchars($jurVal->nomor_pendaftar, ENT_QUOTES, 'UTF-8');
            $temp[] = '<div class="uppercase">'.htmlspecialchars($jurVal->nama_lengkap, ENT_QUOTES).'</div>';
            $temp[] = htmlspecialchars($jurVal->nisn, ENT_QUOTES, 'UTF-8');
            $temp[] = htmlspecialchars($jurVal->tempat_lahir.', '.tanggal($jurVal->tanggal_lahir), ENT_QUOTES, 'UTF-8');
            $temp[] = htmlspecialchars($jurVal->jenis_kelamin, ENT_QUOTES, 'UTF-8');
            $temp[] = htmlspecialchars($jurVal->agama, ENT_QUOTES, 'UTF-8');
            $temp[] = '<div class="uppercase">'.htmlspecialchars($jurVal->kewarganegaraan, ENT_QUOTES, 'UTF-8').'</div>';
            $temp[] = htmlspecialchars($jurVal->no_telp, ENT_QUOTES, 'UTF-8');
            $temp[] = htmlspecialchars($jurVal->alamat, ENT_QUOTES, 'UTF-8');
            $temp[] = htmlspecialchars($jurVal->nama_jurusan, ENT_QUOTES, 'UTF-8');
            $temp[] = htmlspecialchars($jurVal->class_name, ENT_QUOTES, 'UTF-8');
            $temp[] = htmlspecialchars($jurVal->ayah_kandung, ENT_QUOTES, 'UTF-8');
            $temp[] = htmlspecialchars($jurVal->pekerjaan_ayah, ENT_QUOTES, 'UTF-8');
            $temp[] = htmlspecialchars($jurVal->ibu_kandung, ENT_QUOTES, 'UTF-8');
            $temp[] = htmlspecialchars($jurVal->pekerjaan_ibu, ENT_QUOTES, 'UTF-8');
            $temp[] = htmlspecialchars($jurVal->telp_ortu, ENT_QUOTES, 'UTF-8');
            $temp[] = htmlspecialchars($jurVal->alamat_ortu, ENT_QUOTES, 'UTF-8');
            $temp[] = htmlspecialchars($jurVal->nama_wali, ENT_QUOTES, 'UTF-8');
            $temp[] = htmlspecialchars($jurVal->pekerjaan_wali, ENT_QUOTES, 'UTF-8');
            $temp[] = htmlspecialchars($jurVal->alamat_wali, ENT_QUOTES, 'UTF-8');
            $temp[] = htmlspecialchars($jurVal->telp_wali, ENT_QUOTES, 'UTF-8');
            $temp[] = htmlspecialchars($jurVal->asal_sekolah, ENT_QUOTES, 'UTF-8');
            $temp[] = htmlspecialchars($jurVal->alamat_sekolah, ENT_QUOTES, 'UTF-8');
            $temp[] = htmlspecialchars($jurVal->tahun_lulus, ENT_QUOTES, 'UTF-8');
            $temp[] = htmlspecialchars($jurVal->nilai, ENT_QUOTES, 'UTF-8'); 
                        $temp[] = htmlspecialchars($jurVal->jalur, ENT_QUOTES, 'UTF-8');

            
            // if(!$jurVal->file == NULL){

            //     $temp[] = '<p><i class="glyphicon glyphicon-ok" style="color:#009B29"></i> Sudah Upload</p>';
            // }else{
            //     $temp[] = '<p><i class="glyphicon glyphicon-remove" style="color:#FF3D00"></i> Belum Upload</p>';
            // }
            
            $temp[] = '
            <a href="'.site_url('admin/psb/u/berkas/').$jurVal->acc_id.'" class="btn btn-default btn-sm" data-toggle="tooltip" title="Edit">
                <i class="glyphicon glyphicon-pencil" style="color:#FFBE00"></i>
            </a>
            <a href="'.site_url('admin/psb/detail/').$jurVal->acc_id.'" class="btn btn-default btn-sm" data-toggle="tooltip" title="Detail" target="">
                <i class="glyphicon glyphicon-eye-open" style="color:#009B29"></i>
            </a>
            <a href="javascript:void(0)" onclick="delete_psb('."'".$jurVal->acc_id."'".')" class="btn btn-default btn-sm" data-toggle="tooltip" title="Hapus">
                <i class="glyphicon glyphicon-trash" style="color:#FF2700"></i>
            </a>
           ';
            $jur[] = $temp;
        }

        $output['draw'] = intval($this->input->get('draw'));
        $output['recordsTotal'] = $this->dpib_m->countAll();
        $output['recordsFiltered'] = $this->dpib_m->filtered();
        $output['data'] = $jur;

        echo json_encode($output);
    }

}

/* End of file Dpib.php */

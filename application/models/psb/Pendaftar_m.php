<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Pendaftar_m extends MY_Model
{

    private $calon = 'psb';
    private $jalur = 'jalur_daftar';

    public function validate_rules()
    {
        return [
            [
                'field' => 'nama',
                'label' => 'Nama Lengkap',
                'rules' => 'required',
                'errors' => array('required' => '%s tidak boleh kosong')
            ],

            [
                'field' => 'nisn',
                'label' => 'NISN',
                'rules' => 'is_unique[psb.nisn]|required',
                'errors' => array('required' => '%s tidak boleh kosong')
            ],

            [
                'field' => 'tempat_lahir',
                'label' => 'Tempat Lahir',
                'rules' => 'required',
                'errors' => array('required' => '%s tidak boleh kosong')
            ],

            [
                'field' => 'tanggal_lahir',
                'label' => 'Tanggal Lahir',
                'rules' => 'required',
                'errors' => array('required' => '%s tidak boleh kosong')
            ],

            [
                'field' => 'jenis_kelamin',
                'label' => 'Jenis kelamin',
                'rules' => 'required',
                'errors' => array('required' => 'Harap pilih %s yang sesuai')
            ],

            [
                'field' => 'agama',
                'label' => 'Agama',
                'rules' => 'required',
                'errors' => array('required' => 'Harap pilih %s sesuai keyakinan')
            ],

            [
                'field' => 'kewarganegaraan',
                'label' => 'Kewarganegaraan',
                'rules' => 'required',
                'errors' => array('required' => 'Harap pilih %s')
            ],

            [
                'field' => 'alamat',
                'label' => 'Alamat',
                'rules' => 'required',
                'errors' => array('required' => '%s tidak boleh kosong')
            ],

            [
                'field' => 'prov',
                'label' => 'Alamat2',
                'rules' => 'required',
                'errors' => array('required' => 'Harap Mengisi Kecamatan, Kabupaten dan Provinsi')
            ],

            [
                'field' => 'ayah_kandung',
                'label' => 'Ayah Kandung',
                'rules' => 'required',
                'errors' => array('required' => 'Nama %s tidak boleh kosong')
            ],

            [
                'field' => 'pekerjaan_ayah',
                'label' => 'Pekerjaan Ayah',
                'rules' => 'required',
                'errors' => array('required' => '%s tidak boleh kosong')
            ],

            [
                'field' => 'ibu_kandung',
                'label' => 'Ibu Kandung',
                'rules' => 'required',
                'errors' => array('required' => 'Nama %s tidak boleh kosong')
            ],

            [
                'field' => 'pekerjaan_ibu',
                'label' => 'pekerjaan_ibu',
                'rules' => 'required',
                'errors' => array('required' => 'Pekerjaan tidak boleh kosong')
            ],

            [
                'field' => 'alamat_ortu',
                'label' => 'alamat_ortu',
                'rules' => 'required',
                'errors' => array('required' => 'Alamat Orangtua Wajib diisi')
            ],

            [
                'field' => 'telp_ortu',
                'label' => 'telp_ortu',
                'rules' => 'required',
                'errors' => array('required' => 'Telepon Orangtua Wajib diisi')
            ],

            [
                'field' => 'jurusan1',
                'label' => 'Jurusan #1',
                'rules' => 'required',
                'errors' => array('required' => 'Harap pilih %s sesuai keinginan')
            ],

            [
                'field' => 'jurusan2',
                'label' => 'Jurusan #2',
                'rules' => 'required',
                'errors' => array('required' => 'Harap pilih %s sesuai keinginan')
            ],

            [
                'field' => 'asal_sekolah',
                'label' => 'Asal sekolah',
                'rules' => 'required',
                'errors' => array('required' => 'Nama Asal Sekolah tidak boleh kosong')
            ],
        ];
    }

    /**
     * @param array
     * end user
     */
    public function insert_pendaftar($data_input)
    {
        $query = $this->db->insert($this->calon, $data_input);
        return array($data_input['psb_id'], 'insert' => $query);
    }

    /**
     * 
     * @param void update berkas
     */
    public function updateBerkas($data_input, $id)
    {
        return $this->db->update($this->calon, $data_input, $id);
    }

    public function updateNilai($nilai, $id)
    {
        return $this->db->update($this->calon, $nilai, $id);
    }

    public function delete($id)
    {
        $this->db->where('psb_id', $id);
        $this->db->delete($this->calon);
    }

    public function getNumb($id)
    {
        $this->db->select('*');
        $this->db->from($this->calon);
        $this->db->join($this->jalur, $this->jalur . '.id_jalur = ' . $this->calon . '.id_jalur', 'left');
        $this->db->where('psb_id', $id);
        $query = $this->db->get();
        // $query = $this->db->get_where($this->calon, ['psb_id' => $id]);
        return $query->row();
    }

    private function queryPsb()
    {
        $this->db->select('*');
        $this->db->from($this->calon);
        $this->db->join($this->jalur, $this->jalur . '.id_jalur = ' . $this->calon . '.id_jalur', 'left');
        // $this->db->join('jurusan j2', 'psb.jurusan2 = j2.kode_jurusan', 'left');

        if ($this->input->get('search')['value']) {
            $this->db->like('nomor_pendaftar', $this->input->get('search')['value']);
            $this->db->or_like('nisn', $this->input->get('search')['value']);
            $this->db->or_like('tanggal_lahir', $this->input->get('search')['value']);
            $this->db->or_like('nama_lengkap', $this->input->get('search')['value']);
            $this->db->or_like('agama', $this->input->get('search')['value']);
            $this->db->or_like('kewarganegaraan', $this->input->get('search')['value']);
            $this->db->or_like('asal_sekolah', $this->input->get('search')['value']);
            // $this->db->or_like('nem', $this->input->get('search')['value']);
            // $this->db->or_like('ibu_kandung', $this->input->get('search')['value']);
        }

        if ($this->input->get('order')) {
            $this->db->order_by(
                $this->input->get('order')['0']['column'],
                $this->input->get('order')['0']['dir']
            );
        } else {
            $this->db->order_by('submit_at', 'desc');
        }
    }

    public function dataPsb()
    {
        self::queryPsb();
        if ($this->input->get('length') !== -1) {
            $this->db->limit($this->input->get('length'), $this->input->get('start'));
        }
        return $this->db->get()->result();
    }

    public function filtered()
    {
        self::queryPsb();
        return $this->db->get()->num_rows();
    }

    public function countAll()
    {
        $this->db->from($this->calon);
        return $this->db->count_all_results();
    }

    public function getJurusan()
    {
        return $this->db->get('jurusan')->result();
    }

    public function getPsb()
    {
        $this->db->select('nisn');
        return $this->db->get('psb')->result();
    }

    public function bt()
    {
        return $this->db->get_where('button_activate')->row();
    }

    public function btChange($bool, $i)
    {
        return $this->db->update('button_activate', $bool, $i);
    }
}

/* End of file Pendaftar_m.php */

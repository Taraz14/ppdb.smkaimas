<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Test_online_m extends MY_Model {
    protected $test = 'psb';

    public function test(){
        $this->db->select('is_tested');
        $this->db->from($this->test);
        $this->db->where('is_tested', 1);
        return $this->db->count_all_results();
    }
    

}

/* End of file Test_online_m.php */

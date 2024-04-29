<?php

namespace App\Models;

use CodeIgniter\Model;

class Name_Model extends Model
{
    public function nameData()
    {
        return $this->db->table('fafr')
                        ->select('*')
                        ->get()
                        ->getResultArray();
    }
}
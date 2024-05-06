<?php

namespace App\Models;

use CodeIgniter\Model;

class EduModel extends Model
{
    protected $table = 'education';

    public function getAllEducation()
    {
        return $this->db->table($this->table)
                    ->get()
                    ->getResultArray();
    }
}
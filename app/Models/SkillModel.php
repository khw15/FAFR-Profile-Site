<?php

namespace App\Models;

use CodeIgniter\Model;

class SkillModel extends Model
{
    protected $table = 'tech_stack';

    public function getAllTechStack()
    {
        return $this->db->table($this->table)
                    ->get()
                    ->getResultArray();
    }
}
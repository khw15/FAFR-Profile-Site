<?php

namespace App\Models;

use CodeIgniter\Model;

class ExpModel extends Model
{
    protected $table = 'exp';

    public function getAll()
    {
        return $this->db->table($this->table)
                    ->get()
                    ->getResultArray();
    }
}
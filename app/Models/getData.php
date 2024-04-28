<?php

namespace App\Models;
use CodeIgniter\Model;

class Profiles extends Model
{
    // Get profile data with no condition
    public function getProfile()
    {
        return $this->db
                ->table('profiles')
                ->get()
                ->getResultArray();
    }
}
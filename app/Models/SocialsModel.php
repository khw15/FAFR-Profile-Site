<?php

namespace App\Models;

use CodeIgniter\Model;

class SocialsModel extends Model
{
    protected $table = 'socials';

    // All links stored in ID 1
    public function getAllSocials()
    {
        return $this->db->table($this->table)
            ->get()
            ->getResultArray();
    }
}
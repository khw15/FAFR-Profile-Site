<?php

namespace App\Models;

use CodeIgniter\Model;

class ExpModel extends Model
{
    protected $table = 'exp';
    protected $allowedFields = ['name', 'start_month', 'start_year', 'end_month', 'end_year', 'workplace', 'working_type'];

    public function getAll()
    {
        return $this->asArray()
            ->findAll();
    }
}
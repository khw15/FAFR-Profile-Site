<?php

namespace App\Models;

use CodeIgniter\Model;

class HomeModel extends Model
{
    protected $table = 'fafr';
    protected $primaryKey = 'id';
    protected $allowedFields = ['name', 'skill', 'introduction'];

    // Read name column from fafr table, where id = 1, and convert it to a string
    public function getName()
    {
        return $this->asArray()
            ->where(['id' => 1])
            ->first();
    }

    public function getSkills()
    {
        return $this->asArray()
            ->where(['id' => 1])
            ->first();
    }
    
    public function getIntroduction()
    {
        return $this->asArray()
            ->where(['id' => 1])
            ->first();
    }

    public function getEmail()
    {
        return $this->asArray()
            ->where(['id' => 1])
            ->first();
    }

    public function getPhone()
    {
        return $this->asArray()
            ->where(['id' => 1])
            ->first();
    }
}
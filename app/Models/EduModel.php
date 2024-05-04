<?php

namespace App\Models;

use CodeIgniter\Model;

class EduModel extends Model
{
    protected $table = 'education';
    protected $allowedFields = ['school_name', 'year_start', 'year_end', 'department'];

    // Read name column from fafr table, where id = 1, and convert it to a string
    public function getSchoolName()
    {
        return $this->asArray()
            ->first();
    }

    public function getYearStart()
    {
        return $this->asArray()
            ->first();
    }

    public function getYearEnd()
    {
        return $this->asArray()
            ->first();
    }

    public function getDepartment()
    {
        return $this->asArray()
            ->first();
    }
}
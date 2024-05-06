<?php

namespace App\Models;

use CodeIgniter\Model;

class SkillModel extends Model
{
    protected $table = 'tech_stack';

    public function getTechName()
    {
        return $this->asArray()
            ->first();
    }

    public function getPercentage()
    {
        return $this->asArray()
            ->first();
    }
}
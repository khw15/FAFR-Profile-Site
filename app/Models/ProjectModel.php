<?php

namespace App\Models;

use CodeIgniter\Model;

class ProjectModel extends Model
{
    protected $table = 'projects';
    protected $allowedFields = ['name', 'type', 'github_link', 'image_filename'];

    public function getAll()
    {
        return $this->asArray()
            ->findAll();
    }
}
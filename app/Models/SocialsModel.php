<?php

namespace App\Models;

use CodeIgniter\Model;

class SocialsModel extends Model
{
    protected $table = 'socials';
    protected $allowedFields = ['github', 'discord', 'linkedin'];

    // All links stored in ID 1
    public function getGithub()
    {
        return $this->find(1);
    }

    public function getDiscord()
    {
        return $this->find(1);
    }

    public function getLinkedin()
    {
        return $this->find(1);
    }
}
<?php

namespace App\Controllers;
use App\Models\Name_Model;

class Latihan extends BaseController
{
    protected $Name;

    public function __construct()
    {
        $this->Name = new Name_Model();
    }

    public function index()
    {
        $data = [
            'title' => 'Latihan CI4',
            'pesan' => 'Teknik Informatika UMMI',
            'nameData' => $this->Name->nameData()
        ];

        return view('body', $data);
    }
}
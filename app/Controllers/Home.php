<?php

namespace App\Controllers;
use App\Models\HomeModel;

class Home extends BaseController
{
    public function index(): string
    {
        return view('welcome_message');
    }

    public function body()
    {

        $data = [
            'title' => 'FAFR Portfolio with CodeIgniter 4',
            // Read from the HomeModel
            'name' => (new HomeModel())->getName()['name'],
            'skills' => (new HomeModel())->getSkills()['skill']
        ];


        return view('body', $data);
    }
}

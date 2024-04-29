<?php

namespace App\Controllers;

class Home extends BaseController
{
    public function index(): string
    {
        return view('welcome_message');
    }

    public function body()
    {

        $data = [
            'title' => 'FFFFFF',
            'name' => 'Faisal A F R',
        ];


        return view('body', $data);
    }
}

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
            'name' => 'Name'
        ];


        return view('body', $data);
    }
}

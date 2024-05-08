<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use CodeIgniter\HTTP\ResponseInterface;
use App\Models\M_Contacts;

class C_Contacts extends BaseController
{
    public function index()
    {
        // Send survei data to database

        // Get data from form
        $data = [
            'name' => $this->request->getPost('name'),
            'email' => $this->request->getPost('email'),
            'subject' => $this->request->getPost('subject'),
            'message' => $this->request->getPost('message')
        ];

        // Insert data to database
        $model = new M_Contacts();
        $model->insertContacts($data);

        // Send the survey data to the email
        $model->sendEmail($data);

        // Redirect to survei page
        return redirect()->to('/');
    }
}

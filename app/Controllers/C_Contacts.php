<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\M_Contacts;

class C_Contacts extends BaseController
{
    public function index()
    {
        // Get data from form
        $name = $this->request->getPost('name');
        $email = $this->request->getPost('email');
        $subject = $this->request->getPost('subject');
        $unformatted_message = $this->request->getPost('message');
        $formatted_message = is_array($unformatted_message) || $unformatted_message === null ? '' : nl2br($unformatted_message); // Convert newlines to <br> tags

        // Insert data to database
        $model = new M_Contacts();
        $data = [
            'name' => $name,
            'email' => $email,
            'subject' => $subject,
            'message' => $unformatted_message
        ];
        $model->insertContacts($data);

        // Send the survey data to the email
        $this->sendEmail($name, $email, $subject, $formatted_message);

        // Redirect to survei page
        return redirect()->to('/');
    }

    // Send email function
    private function sendEmail($name, $email, $subject, $formatted_message)
    {
        $emailService = \Config\Services::email();

        // Email configuration
        $emailService->setTo('afaisalalmunawar0315@gmail.com');
        $emailService->setFrom('web@0315.my.id', $name);
        $emailService->setReplyTo($email);
        $emailService->setSubject($subject);
        $emailService->setMessage($formatted_message);
        $emailService->setPriority(1);

        // Send email
        $emailService->send();
    }
}

<?php

namespace App\Controllers;

use App\Controllers\BaseController;

class C_Contacts extends BaseController
{
    public function index()
    {  
        // Load the validation service
        $validation = \Config\Services::validation();
    
        // Define validation rules
        $validation->setRules([
            'name' => [
                'rules' => 'required',
                'errors' => [
                    'required' => 'Name cannot be empty!'
                ],
            ],
            'email' => [
                'rules' => 'required|valid_email',
                'errors' => [
                    'required' => 'Email cannot be empty!',
                    'valid_email' => 'Email is not valid!'
                ],
            ],
            'subject' => [
                'rules' => 'required',
                'errors' => [
                    'required' => 'Subject cannot be empty!'
                ],
            ],
            'message' => [
                'rules' => 'required',
                'errors' => [
                    'required' => 'Message cannot be empty!'
                ],
            ],
        ]);

        // Validate the input data
        if (!$validation->withRequest($this->request)->run()) {
            // Validation failed, redirect back to login with errors
            return redirect()->to('/#contact')->withInput()->with('validation', $validation);
        }
        
        $file = $this->request->getFile('file');

        // Check if file was uploaded
        if ($file && $file->isValid()) {
            $fileName = $file->getName();
            $file->move('uploads/', $fileName);
        }

        // Get data from form
        $name = $this->request->getPost('name');
        $email = $this->request->getPost('email');
        $subject = $this->request->getPost('subject');
        $unformatted_message = $this->request->getPost('message');
        $formatted_message = is_array($unformatted_message) || $unformatted_message === null ? '' : nl2br($unformatted_message); // Convert newlines to <br> tags
        $file = isset($fileName) ? $fileName : null;

        // Send email
        $this->sendEmail($name, $email, $subject, $formatted_message, $file);

        // Delete the file after sending the email (optional)
        if ($file) {
            unlink('uploads/' . $file);
        }

        // Redirect to the homepage
        return redirect()->to('/#contact');
    }

    // Send email function
    private function sendEmail($name, $email, $subject, $formatted_message, $file)
    {
        $emailService = \Config\Services::email();

        // Email configuration
        $emailService->setTo('afaisalalmunawar0315@gmail.com');
        $emailService->setFrom('web@0315.my.id', $name);
        $emailService->setReplyTo($email);
        $emailService->setCC($email);
        
        // Attach file if it exists
        if ($file) {
            $emailService->attach('uploads/' . $file);
        }
        
        $emailService->setSubject($subject);
        $emailService->setMessage($formatted_message);
        $emailService->setPriority(1);

        // Send email
        $emailService->send();
    }
}

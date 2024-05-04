<!-- For sending Contact from to designated email -->
<!-- Use Email library from CodeIgniter 4 -->

<!-- Path: app/Controllers/Contact.php -->
<?php
namespace App\Controllers;
use CodeIgniter\Controller;

class Contact extends Controller
{
    public function index()
    {
        return view('contact');
    }

    public function send()
    {
        $email = \Config\Services::email();

        $email->setTo('myid1@0315.my.id');
        $email->setFrom($this->request->getVar('email'), $this->request->getVar('name'));
        $email->setSubject($this->request->getVar('subject'));
        $email->setMessage($this->request->getVar('message'));

        if ($email->send()) {
            echo 'Email successfully sent';
        } else {
            $data = $email->printDebugger(['headers']);
            print_r($data);
        }

        return redirect()->to('/contact');

    }
}

<?php

namespace App\Models;

use CodeIgniter\Model;

class M_Contacts extends Model
{
    // Send data from survei page to database
    protected $table = 'contacts';
    protected $allowedFields = ['name', 'email', 'subject', 'message'];
    
    public function getContacts($id = false)
    {
        if ($id === false) {
            return $this->findAll();
        } else {
            return $this->getWhere(['id' => $id]);
        }
    }

    public function insertContacts($data)
    {
        return $this->db
                    ->table($this->table)
                    ->insert($data);
    }

    // Send the survey data to the email
    public function sendEmail($data)
    {
        $email = \Config\Services::email();

        $email->setTo('afaisalalmunawar0315@gmail.com');
        $email->setFrom('web@0315.my.id', $data['name']);
        $email->setReplyTo($data['email']);
        $email->setSubject($data['subject']);
        $email->setMessage($data['message']);
        $email->send();
    }
}
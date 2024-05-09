<?php

namespace App\Controllers;
use App\Models\HomeModel;
use App\Models\EduModel;
use App\Models\SkillModel;
use App\Models\ExpModel;
use App\Models\ProjectModel;
use App\Models\SocialsModel;

class Home extends BaseController
{
    public function body(): string
    {
        // Recaptcha
        // $recaptcha = service('recaptcha');
        helper('recaptcha');

        // Education
        $eduModel = new EduModel();
        $education = $eduModel->findAll();
        // Tech Stack
        $tech_stack = new SkillModel();
        $tech_stacks = $tech_stack->findAll();
        // Experience
        $expModel = new ExpModel();
        $experience = $expModel->findAll();
        // Project
        $projectModel = new ProjectModel();
        $projects = $projectModel->findAll();

        $data = [
            'title' => 'FAFR Portfolio with CodeIgniter 4',
            // Name, Skills, and Introduction
            'name' => (new HomeModel())->getName()['name'],
            'skills' => (new HomeModel())->getSkills()['skill'],
            'introduction' => (new HomeModel())->getIntroduction()['introduction'],
            'email' => (new HomeModel())->getEmail()['email'],
            'phone' => (new HomeModel())->getPhone()['phone'],

            // Education
            'education' => $education, // Store education data under 'education' key

            // Tech Stack
            'stacks' => $tech_stacks, // Store tech stack data under 'tech_stacks' key

            // Experience
            'experience' => $experience, // Store experience data under 'experience' key

            // Project
            'projects' => $projects, // Store project data under 'projects' key

            // Socials
            'socials' => (new SocialsModel())->getAllSocials(),

            // Recaptcha
            'widgetTag' => getWidget(),
            'scriptTag' => getScriptTag(),
        ];

        $captcha = $this->request->getPost('g-recaptcha-response');
        $response = verifyResponse($captcha);

        if ($response['success']) {
            $data['captcha'] = 'Captcha verification successful';
        } else {
            $data['captcha'] = 'Captcha verification failed';
        }

        return view('body', $data);
    }
}

<?php

namespace App\Controllers;
use App\Models\HomeModel;
use App\Models\EduModel;
use App\Models\SkillModel;

class Home extends BaseController
{
    public function index(): string
    {
        return view('welcome_message');
    }

    public function body()
    {
        $eduModel = new EduModel();
        $education = $eduModel->findAll();
        $tech_stack = new SkillModel();
        $tech_stacks = $tech_stack->findAll();

        $data = [
            'title' => 'FAFR Portfolio with CodeIgniter 4',
            // Name, Skills, and Introduction
            'name' => (new HomeModel())->getName()['name'],
            'skills' => (new HomeModel())->getSkills()['skill'],
            'introduction' => (new HomeModel())->getIntroduction()['introduction'],

            // Education
            'education' => $education, // Store education data under 'education' key

            // Tech Stack
            'stacks' => $tech_stacks // Store tech stack data under 'tech_stacks' key
        ];


        return view('body', $data);
    }
}

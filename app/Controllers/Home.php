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

        $data = [
            'title' => 'FAFR Portfolio with CodeIgniter 4',
            // Name, Skills, and Introduction
            'name' => (new HomeModel())->getName()['name'],
            'skills' => (new HomeModel())->getSkills()['skill'],
            'introduction' => (new HomeModel())->getIntroduction()['introduction'],

            // Education
            'school_name' => (new EduModel())->getSchoolName()['school_name'],
            'year_start' => (new EduModel())->getYearStart()['year_start'],
            'year_end' => (new EduModel())->getYearEnd()['year_end'],
            'department' => (new EduModel())->getDepartment()['department']
        ];


        return view('body', $data);
    }
}

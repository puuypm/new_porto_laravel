<?php

namespace App\Http\Controllers;

use App\Models\Awards;
use App\Models\SkillBahasa;
use App\Models\SkillSoftware;
use App\Models\Project;
use App\Models\Experience;
use App\Models\Education;
use App\Models\Profile;
use App\Models\Setting;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        $profile = Profile::get()->last();
        $experiences = Experience::get();
        $experience = Experience::get();
        $education2 = Education::get();
        $education = Education::get()->last();
        $skillbahasa = SkillBahasa::get()->last();
        $skillbahasa2 = SkillBahasa::get();
        $skillsoftware = SkillSoftware::get()->last();
        $skillsoftwares = SkillSoftware::get();
        $project = Project::get()->last();
        $projects = Project::get();
        $award = Awards::get()->last();
        $awards = Awards::get();
        $setting = Setting::first();
        return view('home.index', compact('profile', 'experience', 'experiences', 'education', 'education2', 'skillbahasa', 'skillbahasa2', 'skillsoftware', 'skillsoftwares', 'project', 'projects', 'award', 'awards', 'setting'));
    }
}

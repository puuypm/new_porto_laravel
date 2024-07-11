<?php

use App\Http\Controllers\LoginController;
use Illuminate\Support\Facades\Route;

Route::get('/', [\App\Http\Controllers\HomeController::class, 'index']);
//Route::get('/export-pdf', [PdfController::class,"export.Pdf"])->name('export.pdf');


Route::resource('home', \App\Http\Controllers\HomeController::class);

// admin disini
// Route::group(['prefix' => 'admin', 'as' => 'admin.'], function () {
// Route::get('/', [\App\Http\Controllers\LoginController::class, 'index'])->name("login");
//     Route::post('/', [LoginController::class, "loginPost"])->name("login.post");

//    Route::middleware('auth')->group(function () {

        Route::resource('dashboard', \App\Http\Controllers\DashboardController::class);
        Route::resource('user', \App\Http\Controllers\UserController::class);
        Route::resource('profile', \App\Http\Controllers\ProfileController::class);
        Route::resource('experience',\App\Http\Controllers\ExperienceController::class);
        Route::resource('education',\App\Http\Controllers\EducationController::class);
        Route::resource('skillbahasa',\App\Http\Controllers\SkillBahasaController::class);
        Route::resource('setting', \App\Http\Controllers\SettingController::class);
        Route::resource('skillsoftware', \App\Http\Controllers\SkillSoftwareController::class);
        Route::resource('project',\App\Http\Controllers\ProjectController::class);
        Route::resource('awards', \App\Http\Controllers\AwardsController::class);

        Route::post('/logout', [LoginController::class, 'logout'])->name("logout");

//    });
// });

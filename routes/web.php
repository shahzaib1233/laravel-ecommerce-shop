<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\AdminLoginController;
use App\Http\Controllers\Admin\HomeController;
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\sub__categoriesController;
use App\Http\Controllers\Admin\temp_imageController; // Corrected namespace for TempImageController

Route::get('/', function () {
    return view('welcome');
});

Route::group(['prefix' => 'admin'], function () {
    Route::group(['middleware' => 'Admin.guest'], function () {
        Route::get('/login', [AdminLoginController::class, 'index'])->name('admin.login');
        Route::post('/authenticate', [AdminLoginController::class, 'authenticate'])->name('admin.authenticate');
    });

    Route::group(['middleware' => 'Admin.auth'], function () {
        Route::get('/dashboard', [HomeController::class, 'index'])->name('admin.dashboard');
        Route::get('/logout', [HomeController::class, 'logout'])->name('admin.logout');

        // Category routes
        Route::get('/categories/create', [CategoryController::class, 'create'])->name('categories.create');
        Route::get('/categories/index', [CategoryController::class, 'index'])->name('categories.index');
        Route::post('/categories/store', [CategoryController::class, 'store'])->name('categories.store');
        Route::get('/categories/editcat/{id}', [CategoryController::class, 'update'])->name('categories.editcat');
        Route::put('categories/update/{id}', [CategoryController::class, 'edit'])->name('categories/update');
        Route::delete('categories/delete/{id}', [CategoryController::class, 'delete_cat'])->name('categories/delete');

        // Temp Image route
        Route::post('/upload-temp-image', [temp_imageController::class, 'create'])->name('temp-images.create');

        //sub category routes
        Route::get('/sub_categories/create', [sub__categoriesController::class, 'create'])->name('sub_categories.create');
        Route::post('sub_categories/store', [sub__categoriesController::class, 'store'])->name('admin.sub_categories.store');

    });
});

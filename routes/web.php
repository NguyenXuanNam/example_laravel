<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductInfoController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [ProductInfoController::class, 'index'])->name('index');
Route::get('/create', [ProductInfoController::class, 'create'])->name('create')->middleware('auth');
Route::post('/create', [ProductInfoController::class, 'store'])->name('store')->middleware('auth');
Route::get('/{id}/edit', [ProductInfoController::class, 'edit'])->name('edit')->where('id', '[0-9]+')->middleware('auth');
Route::put('/{id}', [ProductInfoController::class, 'update'])->name('update')->where('id', '[0-9]+')->middleware('auth');
Route::delete('/{id}', [ProductInfoController::class, 'destroy'])->name('destroy')->where('id', '[0-9]+')->middleware('auth');

Route::prefix('admin')->group(function () {
    Auth::routes([
        'register' => false, // Registration Routes...
        'reset' => false, // Password Reset Routes...
        'verify' => false, // Email Verification Routes...
    ]);
    Route::get('/', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
});




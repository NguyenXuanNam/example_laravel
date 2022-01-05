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
Route::any('/list', [ProductInfoController::class, 'index'])->name('list');
Route::get('/create', [ProductInfoController::class, 'create'])->name('create');
Route::post('/create', [ProductInfoController::class, 'store'])->name('store');
Route::get('/{id}/edit', [ProductInfoController::class, 'edit'])->name('edit')->where('id', '[0-9]+');
Route::put('/{id}', [ProductInfoController::class, 'update'])->name('update')->where('id', '[0-9]+');
Route::delete('/{id}', [ProductInfoController::class, 'destroy'])->name('destroy')->where('id', '[0-9]+');

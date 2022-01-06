<?php

use App\Http\Controllers\api\v1\CustomerController;
use App\Http\Controllers\api\v1\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::prefix('v1')->group(function () {
    Route::post('register', [UserController::class, 'register']);
    Route::post('login', [UserController::class, 'login']);
Route::middleware('auth:sanctum')->group(function () {
    Route::post('logout',  [UserController::class, 'logout']);
    Route::apiResource('customers', 'CustomerController')->except(['update']);
    Route::post('customers/update/{customer}', [CustomerController::class,'update']);
    });
});

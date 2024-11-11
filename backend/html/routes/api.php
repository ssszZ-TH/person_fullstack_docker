<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\Api\Citizenship;
use App\Http\Controllers\Api\Country;
use App\Http\Controllers\Api\GenderType;
use App\Http\Controllers\Api\MaritalStatus;
use App\Http\Controllers\Api\MaritalStatusType;
use App\Http\Controllers\Api\Passport;
use App\Http\Controllers\Api\Person;
use App\Http\Controllers\Api\PersonName;
use App\Http\Controllers\Api\PersonNameType;
use App\Http\Controllers\Api\PhysicalCharacteristic;
use App\Http\Controllers\Api\PhysicalCharacteristicType;


/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::apiResource('marital_status_type', MaritalStatusType::class);
Route::apiResource('marital_status', MaritalStatus::class);
Route::apiResource('gender_type', GenderType::class);
Route::apiResource('physical_characteristic_type', PhysicalCharacteristicType::class);
Route::apiResource('physical_characteristic', PhysicalCharacteristic::class);
Route::apiResource('person_name_type', PersonNameType::class);
Route::apiResource('person_name', PersonName::class);
Route::apiResource('country', Country::class);
Route::apiResource('citizenship', Citizenship::class);
Route::apiResource('passport', Passport::class);
Route::apiResource('person', Person::class);

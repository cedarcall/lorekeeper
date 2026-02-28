<?php

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

Route::get('/', 'HomeController@getIndex')->name('home');
Route::get('login', 'Auth\LoginController@getNewReply');
Auth::routes(['verify' => true]);

# BROWSE
require_once __DIR__.'/lorekeeper/browse.php';

// Monthly event routes (specific) — place before general catch-all
use App\Http\Controllers\MonthlyEventController;
Route::get('monthly-event', [MonthlyEventController::class, 'index']);
Route::get('monthly-event/history', [MonthlyEventController::class, 'history']);
Route::get('monthly-event/{slug}', [MonthlyEventController::class, 'show']);
Route::post('monthly-event/{slug}/ask-question', [MonthlyEventController::class, 'postAskQuestion'])->middleware(['auth', 'verified']);
Route::post('monthly-event/{slug}/submit', [MonthlyEventController::class, 'postSubmit'])->middleware(['auth', 'verified']);
Route::post('monthly-event/submission/{id}/delete', [MonthlyEventController::class, 'postDeleteSubmission'])->middleware(['auth', 'verified']);

// Contract routes
use App\Http\Controllers\ContractController;
Route::get('contracts', [ContractController::class, 'index']);
Route::get('contracts/{id}', [ContractController::class, 'show']);
Route::post('contracts/{id}/claim', [ContractController::class, 'postClaim'])->middleware(['auth', 'verified']);
Route::post('contracts/complete/{id}', [ContractController::class, 'postComplete'])->middleware(['auth', 'verified']);

// Expedition routes
use App\Http\Controllers\ExpeditionController;
Route::get('expeditions', [ExpeditionController::class, 'index']);
Route::get('expeditions/{id}', [ExpeditionController::class, 'show']);
Route::post('expeditions/{id}/submit', [ExpeditionController::class, 'postSubmit']);
Route::post('expeditions/submission/{id}/delete', [ExpeditionController::class, 'postDeleteSubmission'])->middleware(['auth', 'verified']);
Route::post('expeditions/{id}/name', [ExpeditionController::class, 'postName'])->middleware(['auth', 'verified']);

// Public static pages (keyed). Examples: expeditions, featured-planet, current-galaxy
Route::get('/{key}', [\App\Http\Controllers\PageController::class, 'show'])
    ->where('key', '(expeditions|featured-planet|current-galaxy)');

/**************************************************************************************************
    Routes that require login
**************************************************************************************************/
Route::group(['middleware' => ['auth', 'verified']], function() {

    # LINK DA ACCOUNT
    Route::get('/link', 'HomeController@getLink')->name('link');
    
    Route::get('/auth/redirect/{driver}', 'HomeController@getAuthRedirect');
    Route::get('/auth/callback/{driver}', 'HomeController@getAuthCallback');

    # SET BIRTHDATE
    Route::get('/birthday', 'HomeController@getBirthday')->name('birthday');
    Route::post('/birthday', 'HomeController@postBirthday');

    Route::get('/blocked', 'HomeController@getBirthdayBlocked')->name('blocked');

    # BANNED
    Route::get('banned', 'Users\AccountController@getBanned');

    /**********************************************************************************************
        Routes that require having a linked dA account (also includes blocked routes when banned)
    **********************************************************************************************/
    Route::group(['middleware' => ['alias']], function() {

        require_once __DIR__.'/lorekeeper/members.php';

        /**********************************************************************************************
            Admin panel routes
        **********************************************************************************************/
        Route::group(['prefix' => 'admin', 'namespace' => 'Admin', 'middleware' => ['staff']], function() {

            require_once __DIR__.'/lorekeeper/admin.php';

        });
    });
});

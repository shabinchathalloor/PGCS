<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your application. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/


// back end
Route::group(['prefix' => 'admin','as' => 'admin::', 'namespace' => 'Admin'], function() {
	// Main
	Route::get('/', ['as' => 'main', 'uses' => 'MainController@redirect']);

	//Registration
	 Route::get('registration',  'Auth\RegisterController@register');
	 Route::post('registration/create', 'Auth\RegisterController@create');

	// Login
	Route::get('login', ['as' => 'get_login2', 'uses' => 'Auth\LoginController@showLoginForm']);
	Route::post('login', ['as' => 'post_login2', 'uses' => 'Auth\LoginController@login']);
	// Authenticated
	Route::group(['middleware' => 'auth:users'], function() {
		// Logout
		Route::get('logout', ['as' => 'logout', 'uses' => 'Auth\LoginController@logout']);

		// Dashboard
		Route::get('dashboard', ['as' => 'dashboard', 'uses' => 'DashboardController@index']);

		

	 
        
       
	
  //       //users

  //       Route::get('users/{user}/password', ['as' => 'password_index', 'uses' => 'UserController@getPassword']);
		// Route::post('users/{user}/password', ['as' => 'password_update', 'uses' => 'UserController@postPassword']);


      

        
       	
	});
});

//super admin
	
Route::group(['prefix' => 'administrator','as' => 'administrator::','namespace'=>'administrator'], function() {
	// Main
	Route::get('/', ['as' => 'main', 'uses' => 'MainController@redirect']);

	// Login
	Route::get('login', ['as' => 'get_login2', 'uses' => 'Auth\LoginController@showLoginForm']);
	Route::post('login', ['as' => 'post_login2', 'uses' => 'Auth\LoginController@login']);
    
   
	Route::group(['middleware' => 'auth:admins'], function() {
		// Logout
		Route::get('logout', ['as' => 'logout', 'uses' => 'Auth\LoginController@logout']);


		// Dashboard
		Route::get('dashboard', ['as' => 'dashboard', 'uses' => 'DashboardController@index']);
        Route::post('dashboard/getsession',['as' =>'getsession','uses' => 'DashboardController@getSession']);

        Route::resource('department','DepartmentController',['except' =>['show']]);
        Route::resource('new_department','New_departmentController');
          Route::resource('worker','WorkerController');
    	    	
	});
});

// admin
	
Route::group(['prefix' => 'admin','as' => 'admin::','namespace'=>'admin'], function() {
	// Main
	Route::get('/', ['as' => 'main', 'uses' => 'MainController@redirect']);

	// Login
	Route::get('login', ['as' => 'get_login2', 'uses' => 'Auth\LoginController@showLoginForm']);
	Route::post('login', ['as' => 'post_login2', 'uses' => 'Auth\LoginController@login']);
    
   
	Route::group(['middleware' => 'auth:users'], function() {
		// Logout
		Route::get('logout', ['as' => 'logout', 'uses' => 'Auth\LoginController@logout']);


		// Dashboard
		Route::get('dashboard', ['as' => 'dashboard', 'uses' => 'DashboardController@index']);
        Route::post('dashboard/getsession',['as' =>'getsession','uses' => 'DashboardController@getSession']);

        Route::resource('department','DepartmentController',['except' =>['show']]);
      
         Route::resource('worker','WorkerController');
         Route::resource('work','WorkController'); 
         Route::post('complaint/allote', ['as' => 'allote', 'uses' => 'ViewcomplaintController@allotStore']);
         Route::get('complaint/status', ['as' => 'status', 'uses' => 'ViewcomplaintController@viewStatus']);
        Route::resource('complaint','ViewcomplaintController');
        Route::resource('feedback','FeedbackController');
        	 Route::post('task/status', ['as' => 'status', 'uses' => 'TaskController@statusStore']);
        Route::resource('task','TaskController');
        Route::resource('status','StatusController');


	});
});




 Route::group(['as' => 'front::' ,'namespace'=>'Front'], function() {

 	Route::get('/', ['as' => 'home', 'uses' => 'MainController@index']);
 	Route::get('about', ['as' => 'about', 'uses' => 'HomeController@aboutUs']);
 	Route::get('signup', ['as' => 'signup', 'uses' => 'HomeController@signUp']);
 	Route::get('payment', ['as' => 'payment', 'uses' => 'HomeController@quickPay']);
 	Route::get('home', ['as' => 'home', 'uses' => 'HomeController@hoMe']);
 	Route::get('signupme', ['as' => 'signupme', 'uses' => 'HomeController@signUpme']);
 	Route::post('signupme', ['as' => 'signup_store', 'uses' => 'HomeController@signUpStore']);
 	Route::post('feedback', ['as' => 'feedback', 'uses' => 'HomeController@feedBack']);


 	//login post
 	Route::post('login', ['as' => 'post_home_login', 'uses' => 'Auth\LoginController@login']);

 		Route::group(['middleware' => 'auth:users'], function() {
		// Logout
		Route::get('logout', ['as' => 'logout', 'uses' => 'Auth\LoginController@logout']);


		// Dashboard
		Route::get('dashboard', ['as' => 'dashboard', 'uses' => 'DashboardController@index']);
		Route::get('registration', ['as' => 'registration', 'uses' => 'DashboardController@complaintRegistration']);
		Route::get('feedback', ['as' => 'feedback', 'uses' => 'DashboardController@feedBack']);
		Route::post('register', ['as' => 'register_store', 'uses' => 'DashboardController@registerStore']);
		Route::post('feedbacks', ['as' => 'feedbackStore', 'uses' => 'DashboardController@feedbackStore']);
		Route::get('statuses', ['as' => 'statuses', 'uses' => 'DashboardController@viewStatus']);



		//write insertion inside dashbpars
        
    	    	
	});
 });
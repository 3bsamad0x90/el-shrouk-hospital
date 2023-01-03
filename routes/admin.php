<?php

use Illuminate\Support\Facades\Route;


Route::group(['prefix'=>'AdminPanel','middleware'=>['isAdmin','auth']], function(){
    Route::get('/','admin\AdminPanelController@index')->name('admin.index');

    Route::get('/read-all-notifications','admin\AdminPanelController@readAllNotifications')->name('admin.notifications.readAll');
    Route::get('/notification/{id}/details','admin\AdminPanelController@notificationDetails')->name('admin.notification.details');

    Route::get('/my-profile','admin\AdminPanelController@EditProfile')->name('admin.myProfile');
    Route::post('/my-profile','admin\AdminPanelController@UpdateProfile')->name('admin.myProfile.update');
    Route::get('/my-password','admin\AdminPanelController@EditPassword')->name('admin.myPassword');
    Route::post('/my-password','admin\AdminPanelController@UpdatePassword')->name('admin.myPassword.update');
    Route::get('/notifications-settings','admin\AdminPanelController@EditNotificationsSettings')->name('admin.notificationsSettings');
    Route::post('/notifications-settings','admin\AdminPanelController@UpdateNotificationsSettings')->name('admin.notificationsSettings.update');

    Route::group(['prefix'=>'admins'], function(){
        Route::get('/','admin\AdminUsersController@index')->name('admin.adminUsers');
        Route::get('/create','admin\AdminUsersController@create')->name('admin.adminUsers.create');
        Route::post('/create','admin\AdminUsersController@store')->name('admin.adminUsers.store');
        Route::get('/{id}/block/{action}','admin\AdminUsersController@blockAction')->name('admin.adminUsers.block');
        Route::get('/{id}/edit','admin\AdminUsersController@edit')->name('admin.adminUsers.edit');
        Route::post('/{id}/edit','admin\AdminUsersController@update')->name('admin.adminUsers.update');
        Route::get('/{id}/delete','admin\AdminUsersController@delete')->name('admin.adminUsers.delete');
    });


    Route::group(['prefix'=>'services'], function(){
        Route::get('/','admin\ServicesController@index')->name('admin.services');
        Route::post('/create','admin\ServicesController@store')->name('admin.services.store');
        Route::post('/{id}/edit','admin\ServicesController@update')->name('admin.services.update');
        Route::get('/{id}/delete','admin\ServicesController@delete')->name('admin.services.delete');
    });
    Route::group(['prefix'=>'weCare'], function(){
        Route::get('/','admin\weCareController@index')->name('admin.weCares');
        Route::post('/create','admin\weCareController@store')->name('admin.weCares.store');
        Route::post('/{id}/edit','admin\weCareController@update')->name('admin.weCares.update');
        Route::get('/{id}/delete','admin\weCareController@delete')->name('admin.weCares.delete');
    });
    Route::group(['prefix'=>'admin.ourTeam'], function(){
        Route::get('/','admin\ourTeamController@index')->name('admin.ourTeam');
        Route::post('/create','admin\ourTeamController@store')->name('admin.ourTeam.store');
        Route::post('/{id}/edit','admin\ourTeamController@update')->name('admin.ourTeam.update');
        Route::get('/{id}/delete','admin\ourTeamController@delete')->name('admin.ourTeam.delete');
    });
    Route::group(['prefix'=>'admin.equipments'], function(){
        Route::get('/','admin\equipmentController@index')->name('admin.equipments');
        Route::post('/create','admin\equipmentController@store')->name('admin.equipments.store');
        Route::post('/{id}/edit','admin\equipmentController@update')->name('admin.equipments.update');
        Route::get('/{id}/delete','admin\equipmentController@delete')->name('admin.equipments.delete');
    });
    Route::group(['prefix'=>'admin.news'], function(){
        Route::get('/','admin\newsController@index')->name('admin.news');
        Route::post('/create','admin\newsController@store')->name('admin.news.store');
        Route::post('/{id}/edit','admin\newsController@update')->name('admin.news.update');
        Route::get('/{id}/delete','admin\newsController@delete')->name('admin.news.delete');
    });
    Route::group(['prefix'=>'admin.media'], function(){
        Route::get('/','admin\mediaController@index')->name('admin.media');
        Route::post('/create','admin\mediaController@store')->name('admin.media.store');
        Route::post('/{id}/edit','admin\mediaController@update')->name('admin.media.update');
        Route::post('/{id}/editImage','admin\mediaController@updateImages')->name('admin.media.updateImages');
        Route::get('/{id}/delete','admin\mediaController@delete')->name('admin.media.delete');
    });

    Route::group(['prefix'=>'contact-messages'], function(){
        Route::get('/','admin\ContactMessagesController@index')->name('admin.contactmessages');
        Route::get('/{id}/details','admin\ContactMessagesController@details')->name('admin.contactmessages.details');
        Route::get('/{id}/delete','admin\ContactMessagesController@delete')->name('admin.contactmessages.delete');
    });


    Route::group(['prefix'=>'settings'], function(){
        Route::get('/','admin\SettingsController@generalSettings')->name('admin.settings.general');
        Route::post('/','admin\SettingsController@updateSettings')->name('admin.settings.update');
        Route::get('/{key}/deletePhoto','admin\SettingsController@deleteSettingPhoto')->name('admin.settings.deletePhoto');
    });


});

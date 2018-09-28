<?php

namespace App\Providers;


use Illuminate\Pagination\BootstrapFourPresenter;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\ServiceProvider;

class PaginationServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }

    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        //  Paginator::presenter(function($paginator)
        // {
        //     return new BootstrapFourPresenter($paginator);
        // });
 Paginator::$defaultView = 'pagination::bootstrap-4'; Paginator::$defaultSimpleView = 'pagination::bootstrap-4'; 

    }
}

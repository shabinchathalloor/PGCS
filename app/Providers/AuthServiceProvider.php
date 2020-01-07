<?php

namespace App\Providers;

use Illuminate\Support\Facades\Gate;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        'App\Models\ServiceMan' => 'App\Policies\ServiceManPolicy',
        'App\Models\Product' => 'App\Policies\ProductPolicy',
        'App\Models\Complaint' => 'App\Policies\ComplaintPolicy',
        'App\Models\Spare' => 'App\Policies\SparePolicy',
        'App\Models\ServiceCenter' => 'App\Policies\ServiceCenterPolicy',
        'App\Models\Courier' => 'App\Policies\CourierPolicy',
        'App\Models\Office' => 'App\Policies\OfficeDetailsPolicy',
        'App\Models\Customer' => 'App\Policies\CustomerPolicy',
        'App\Models\User' => 'App\Policies\UserPolicy',
        'App\Models\UserGroup' => 'App\Policies\UserGroupPolicy',
        'App\Models\Status' => 'App\Policies\StatusPolicy',
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();

        //
    }
}

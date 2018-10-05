<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;
    const ADMIN_TYPE = 'admin';
    const DEFAULT_TYPE = 'default';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password', 'ip_address', 'phone','isadmin','username','avatar', 'provider_id', 'provider',
     'access_token'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];


    public function isAdmin()    {
    //  return ($this->isadmin == "true") ? true : false;
  return ($this->isadmin === self::ADMIN_TYPE) ? true : false;
      }
    public function isGuest()    {
        return ($this->isadmin === self::DEFAULT_TYPE) ? true : false;
    }

    public function comment()
    {
      return $this->hasMany('App\comments');
    }

 public function likes()
    {
        return $this->hasMany('App\Like');
    }
}

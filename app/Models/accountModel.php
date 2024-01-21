<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class accountModel extends Model
{
    use HasFactory;

    protected $table = "account";
    protected $primaryKey = "id";
    protected $fillable = [
<<<<<<< HEAD
        'username', 
        'password', 
        'is_admin', 'gender', 'email', 'address', 'phone_number', 'bane', 'dob', 'avatar', 'description', 'id_giftcode'];
=======
        'username',
        'password',
        'is_admin', 'gender', 'email', 'address', 'phone_number', 'bane', 'dob', 'avatar', 'description', 'id_giftcode'
    ];
>>>>>>> responsive

    public $timestamps = true;

    public function giftcode()
    {
        return $this->belongsTo(giftcodeModel::class, 'id_giftcode', 'id');
    }

    public function cart()
    {
        return $this->hasOne(cartModel::class, 'id_user');
    }
<<<<<<< HEAD

}
=======
}
>>>>>>> responsive

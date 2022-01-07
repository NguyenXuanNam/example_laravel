<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductInfo extends Model
{
    use HasFactory;

    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'product_info';

    /**
     * Indicates if the model should be timestamped.
     *
     * @var bool
     */
    public $timestamps = true;

    /**
     * The attributes that should be mutated to dates.
     *
     * @var array
     */
    protected $dates = [
        'created_at', 'updated_at', 'purchased_at', 'expired_at'
    ];

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'customer_name', 'customer_address', 'customer_phone', 'customer_email', 'product_name', 'serial_number', 'purchased_at', 'expired_at', 'notes'
    ];

    /**
     * The attributes that should be guarded mass assignable.
     *
     * @var array
     */
    protected $guarded = [
        'id', 'created_at', 'updated_at'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [];

    /**
     * Get the purchased.
     *
     * @return string
     */
    public function getPurchasedAtAttribute() {
        return $this->attributes['purchased_at'] ? (new Carbon($this->attributes['purchased_at']))->format('Y-m-d') : '';
    }

    /**
     * Get the expired.
     *
     * @return string
     */
    public function getExpiredAtAttribute() {
        return $this->attributes['expired_at'] ? (new Carbon($this->attributes['expired_at']))->format('Y-m-d') : '';
    }
}

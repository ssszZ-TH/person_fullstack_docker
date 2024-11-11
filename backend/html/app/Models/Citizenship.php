<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Citizenship extends Model
{
    use HasFactory;
    protected $table = 'citizenship';

    // อ้างถึง primarykey ใน table นั้นๆ
    protected $primaryKey = 'id';

    // อ้างถึง column ที่ต้องการ
    protected $fillable = [
        'fromdate',
        'thrudate',
        'countryid',
    ];
    // เอาไว้เผื่ออ้างถึง column ที่เก็บ timestamp
    // public const CREATED_AT = 'created_timestamp';
    // public const UPDATED_AT = 'updated_timestamp';
    public const CREATED_AT = null;
    public const UPDATED_AT = null;
}

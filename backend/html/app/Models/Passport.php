<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Passport extends Model
{
    use HasFactory;
    protected $table = 'passport';

    // อ้างถึง primarykey ใน table นั้นๆ
    protected $primaryKey = 'id';

    // อ้างถึง column ที่ต้องการ
    protected $fillable = [
        'pasport_num',
        'issue_date',
        'expire_date',
        'citizenshipid',
    ];
    public const CREATED_AT = null;
    public const UPDATED_AT = null;
}
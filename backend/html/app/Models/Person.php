<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Person extends Model
{
    use HasFactory;
    protected $table = 'person';

    // อ้างถึง primarykey ใน table นั้นๆ
    protected $primaryKey = 'id';

    // อ้างถึง column ที่ต้องการ
    protected $fillable = [
        'birthdate',
        'mothersmaidenname',
        'socialsecurityno',
        'totalyearworkexperience',
        'comment',
        'citizenshipid',
        'gender_typeid'
    ];
    public const CREATED_AT = null;
    public const UPDATED_AT = null;
}

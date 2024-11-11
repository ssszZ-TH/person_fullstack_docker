<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class GenderType extends Model
{
    use HasFactory;
    protected $table = 'gender_type';

    // อ้างถึง primarykey ใน table นั้นๆ
    protected $primaryKey = 'id';

    // อ้างถึง column ที่ต้องการ
    protected $fillable = [
        'gendercode',
        'description',
    ];
    public const CREATED_AT = null;
    public const UPDATED_AT = null;
}

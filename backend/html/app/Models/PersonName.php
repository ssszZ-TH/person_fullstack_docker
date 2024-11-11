<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PersonName extends Model
{
    use HasFactory;
    protected $table = 'person_name';

    // อ้างถึง primarykey ใน table นั้นๆ
    protected $primaryKey = 'id';

    // อ้างถึง column ที่ต้องการ
    protected $fillable = [
        'from_date',
        'thru_date',
        'name',
        'person_name_typeid'
    ];
    public const CREATED_AT = null;
    public const UPDATED_AT = null;
}

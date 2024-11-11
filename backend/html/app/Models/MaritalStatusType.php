<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MaritalStatusType extends Model
{
    use HasFactory;
    protected $table = 'marital_status_type';

    // อ้างถึง primarykey ใน table นั้นๆ
    protected $primaryKey = 'id';

    // อ้างถึง column ที่ต้องการ
    protected $fillable = [
        'description',
    ];
    public const CREATED_AT = null;
    public const UPDATED_AT = null;
}

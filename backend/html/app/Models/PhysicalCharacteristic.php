<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PhysicalCharacteristic extends Model
{
    use HasFactory;
    protected $table = 'physical_characteristic';

    // อ้างถึง primarykey ใน table นั้นๆ
    protected $primaryKey = 'id';

    // อ้างถึง column ที่ต้องการ
    protected $fillable = [
        'from_date',
        'thru_date',
        'value',
        'physical_characteristic_typeid',
    ];
    public const CREATED_AT = null;
    public const UPDATED_AT = null;
}

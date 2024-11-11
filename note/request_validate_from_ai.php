// สำหรับ table marital_status_type
$request->validate([
    'description' => 'required|string|max:64',
]);

// สำหรับ table marital_status
$request->validate([
    'from_date' => 'required|date',
    'thru_date' => 'date|nullable',
    'marital_status_typeid' => 'required|integer|exists:marital_status_type,id',
]);

// สำหรับ table physical_characteristic_type
$request->validate([
    'description' => 'required|string|max:64',
]);

// สำหรับ table physical_characteristic
$request->validate([
    'from_date' => 'required|date',
    'thru_date' => 'date|nullable',
    'value' => 'required|numeric',
    'physical_characteristic_typeid' => 'required|integer|exists:physical_characteristic_type,id',
]);

// สำหรับ table person_name_type
$request->validate([
    'description' => 'required|string|max:64',
]);

// สำหรับ table person_name
$request->validate([
    'from_date' => 'required|date',
    'thru_date' => 'date|nullable',
    'name' => 'required|string|max:255',
    'person_name_typeid' => 'required|integer|exists:person_name_type,id',
]);

// สำหรับ table person
$request->validate([
    'birthdate' => 'required|date',
    'mothersmaidenname' => 'string|nullable|max:255',
    'socialsecurityno' => 'string|nullable|max:64',
    'totalyearworkexperience' => 'integer|nullable',
    'comment' => 'string|nullable|max:255',
    'citizenshipid' => 'required|integer|exists:citizenship,id',
    'gender_typeid' => 'required|integer|exists:gender_type,id',
]);

// สำหรับ table citizenship
$request->validate([
    'fromdate' => 'required|date',
    'thrudate' => 'date|nullable',
    'countryid' => 'required|integer|exists:country,id',
]);

// สำหรับ table country
$request->validate([
    'iso_code' => 'required|string|size:2',
    'name' => 'required|string|max:64',
]);

// สำหรับ table passport
$request->validate([
    'passport_num' => 'required|string|max:64',
    'issue_date' => 'required|date',
    'expire_date' => 'required|date',
    'citizenshipid' => 'required|integer|exists:citizenship,id',
]);

// สำหรับ table gender_type
$request->validate([
    'gendercode' => 'required|string|size:1',
    'description' => 'required|string|max:255',
]);

SELECT 
    person.id AS person_id,
    person.birthdate,
    person.mothersmaidenname,
    person.socialsecurityno,
    person.totalyearworkexperience,
    person.comment,
    
    -- Citizenship details
    citizenship.id AS citizenship_id,
    citizenship.fromdate AS citizenship_from_date,
    citizenship.thrudate AS citizenship_thru_date,
    country.iso_code AS country_iso_code,
    country.name AS country_name,
    
    -- Gender details
    gender_type.gendercode,
    gender_type.description AS gender_description,
    
    -- Marital status details
    marital_status.id AS marital_status_id,
    marital_status.from_date AS marital_status_from_date,
    marital_status.thru_date AS marital_status_thru_date,
    marital_status_type.description AS marital_status_description,
    
    -- Physical characteristics
    physical_characteristic.id AS physical_characteristic_id,
    physical_characteristic.from_date AS characteristic_from_date,
    physical_characteristic.thru_date AS characteristic_thru_date,
    physical_characteristic.value AS characteristic_value,
    physical_characteristic_type.description AS characteristic_type_description,
    
    -- Person name details
    person_name.id AS person_name_id,
    person_name.from_date AS name_from_date,
    person_name.thru_date AS name_thru_date,
    person_name.name AS name_value,
    person_name_type.description AS name_type_description

FROM 
    person

-- Join citizenship and related country details
LEFT JOIN citizenship ON person.citizenshipid = citizenship.id
LEFT JOIN country ON citizenship.countryid = country.id

-- Join gender type details
LEFT JOIN gender_type ON person.gender_typeid = gender_type.id

-- Join marital status and related marital status type details
LEFT JOIN marital_status ON marital_status.id = person.id
LEFT JOIN marital_status_type ON marital_status.marital_status_typeid = marital_status_type.id

-- Join physical characteristic and related characteristic type details
LEFT JOIN physical_characteristic ON physical_characteristic.id = person.id
LEFT JOIN physical_characteristic_type ON physical_characteristic.physical_characteristic_typeid = physical_characteristic_type.id

-- Join person name and related person name type details
LEFT JOIN person_name ON person_name.id = person.id
LEFT JOIN person_name_type ON person_name.person_name_typeid = person_name_type.id;


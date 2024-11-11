CREATE TABLE
    marital_status_type (
        id SERIAL NOT NULL,
        description varchar(64) NOT NULL,
        PRIMARY KEY (id)
    );

CREATE TABLE
    marital_status (
        id SERIAL NOT NULL,
        from_date date NOT NULL,
        thru_date date,
        marital_status_typeid int4 NOT NULL,
        PRIMARY KEY (id)
    );

CREATE TABLE
    physical_characteristic_type (
        id SERIAL NOT NULL,
        description varchar(64) NOT NULL,
        PRIMARY KEY (id)
    );

CREATE TABLE
    physical_characteristic (
        id SERIAL NOT NULL,
        from_date date NOT NULL,
        thru_date date,
        value float4 NOT NULL,
        physical_characteristic_typeid int4 NOT NULL,
        PRIMARY KEY (id)
    );

CREATE TABLE
    person_name_type (
        id SERIAL NOT NULL,
        description varchar(64) NOT NULL,
        PRIMARY KEY (id)
    );

CREATE TABLE
    person_name (
        id SERIAL NOT NULL,
        from_date date NOT NULL,
        thru_date date,
        name varchar(255) NOT NULL,
        person_name_typeid int4 NOT NULL,
        PRIMARY KEY (id)
    );

CREATE TABLE
    person (
        id SERIAL NOT NULL,
        birthdate date NOT NULL,
        mothersmaidenname varchar(255),
        socialsecurityno varchar(64),
        totalyearworkexperience int4,
        comment varchar(255),
        citizenshipid int4 NOT NULL,
        gender_typeid int4 NOT NULL,
        PRIMARY KEY (id)
    );

CREATE TABLE
    citizenship (
        id SERIAL NOT NULL,
        fromdate date NOT NULL,
        thrudate date,
        countryid int4 NOT NULL,
        PRIMARY KEY (id)
    );

CREATE TABLE
    country (
        id SERIAL NOT NULL,
        iso_code char(2) NOT NULL,
        name varchar(64) NOT NULL,
        PRIMARY KEY (id)
    );

CREATE TABLE
    passport (
        id SERIAL NOT NULL,
        pasport_num varchar(64) NOT NULL,
        issue_date date NOT NULL,
        expire_date date NOT NULL,
        citizenshipid int4 NOT NULL,
        PRIMARY KEY (id)
    );

CREATE TABLE
    gender_type (
        id SERIAL NOT NULL,
        gendercode char(1) NOT NULL,
        description varchar(255) NOT NULL,
        PRIMARY KEY (id)
    );

ALTER TABLE marital_status ADD CONSTRAINT FKmarital_st781024 FOREIGN KEY (marital_status_typeid) REFERENCES marital_status_type (id);

ALTER TABLE physical_characteristic ADD CONSTRAINT FKphysical_c493768 FOREIGN KEY (physical_characteristic_typeid) REFERENCES physical_characteristic_type (id);

ALTER TABLE person_name ADD CONSTRAINT FKperson_nam719090 FOREIGN KEY (person_name_typeid) REFERENCES person_name_type (id);

ALTER TABLE person ADD CONSTRAINT FKperson295630 FOREIGN KEY (citizenshipid) REFERENCES citizenship (id);

ALTER TABLE citizenship ADD CONSTRAINT FKcitizenshi11576 FOREIGN KEY (countryid) REFERENCES country (id);

ALTER TABLE person ADD CONSTRAINT FKperson312339 FOREIGN KEY (gender_typeid) REFERENCES gender_type (id);

ALTER TABLE passport ADD CONSTRAINT FKpassport179995 FOREIGN KEY (citizenshipid) REFERENCES citizenship (id);

-- Mock data for every country realistically
INSERT INTO
    country (id, iso_code, name)
VALUES
    ('1', 'AD', 'Andorra');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('2', 'AE', 'United Arab Emirates');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('3', 'AF', 'Afghanistan');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('4', 'AG', 'Antigua and Barbuda');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('5', 'AI', 'Anguilla');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('6', 'AL', 'Albania');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('7', 'AM', 'Armenia');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('8', 'AN', 'Netherlands Antilles');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('9', 'AO', 'Angola');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('10', 'AQ', 'Antarctica');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('11', 'AR', 'Argentina');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('12', 'AS', 'American Samoa');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('13', 'AT', 'Austria');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('14', 'AU', 'Australia');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('15', 'AW', 'Aruba');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('16', 'AZ', 'Azerbaijan');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('17', 'BA', 'Bosnia and Herzegovina');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('18', 'BB', 'Barbados');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('19', 'BD', 'Bangladesh');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('20', 'BE', 'Belgium');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('21', 'BF', 'Burkina Faso');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('22', 'BG', 'Bulgaria');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('23', 'BH', 'Bahrain');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('24', 'BI', 'Burundi');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('25', 'BJ', 'Benin');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('26', 'BM', 'Bermuda');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('27', 'BN', 'Brunei');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('28', 'BO', 'Bolivia');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('29', 'BR', 'Brazil');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('30', 'BS', 'Bahamas');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('31', 'BT', 'Bhutan');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('32', 'BV', 'Bouvet Island');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('33', 'BW', 'Botswana');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('34', 'BY', 'Belarus');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('35', 'BZ', 'Belize');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('36', 'CA', 'Canada');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('37', 'CC', 'Cocos [Keeling] Islands');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('38', 'CD', 'Congo [DRC]');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('39', 'CF', 'Central African Republic');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('40', 'CG', 'Congo [Republic]');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('41', 'CH', 'Switzerland');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('42', 'CI', 'Côte d''Ivoire');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('43', 'CK', 'Cook Islands');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('44', 'CL', 'Chile');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('45', 'CM', 'Cameroon');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('46', 'CN', 'China');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('47', 'CO', 'Colombia');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('48', 'CR', 'Costa Rica');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('49', 'CU', 'Cuba');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('50', 'CV', 'Cape Verde');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('51', 'CX', 'Christmas Island');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('52', 'CY', 'Cyprus');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('53', 'CZ', 'Czech Republic');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('54', 'DE', 'Germany');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('55', 'DJ', 'Djibouti');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('56', 'DK', 'Denmark');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('57', 'DM', 'Dominica');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('58', 'DO', 'Dominican Republic');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('59', 'DZ', 'Algeria');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('60', 'EC', 'Ecuador');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('61', 'EE', 'Estonia');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('62', 'EG', 'Egypt');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('63', 'EH', 'Western Sahara');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('64', 'ER', 'Eritrea');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('65', 'ES', 'Spain');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('66', 'ET', 'Ethiopia');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('67', 'FI', 'Finland');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('68', 'FJ', 'Fiji');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('69', 'FK', 'Falkland Islands [Islas Malvinas]');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('70', 'FM', 'Micronesia');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('71', 'FO', 'Faroe Islands');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('72', 'FR', 'France');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('73', 'GA', 'Gabon');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('74', 'GB', 'United Kingdom');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('75', 'GD', 'Grenada');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('76', 'GE', 'Georgia');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('77', 'GF', 'French Guiana');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('78', 'GG', 'Guernsey');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('79', 'GH', 'Ghana');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('80', 'GI', 'Gibraltar');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('81', 'GL', 'Greenland');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('82', 'GM', 'Gambia');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('83', 'GN', 'Guinea');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('84', 'GP', 'Guadeloupe');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('85', 'GQ', 'Equatorial Guinea');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('86', 'GR', 'Greece');

INSERT INTO
    country (id, iso_code, name)
VALUES
    (
        '87',
        'GS',
        'South Georgia and the South Sandwich Islands'
    );

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('88', 'GT', 'Guatemala');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('89', 'GU', 'Guam');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('90', 'GW', 'Guinea-Bissau');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('91', 'GY', 'Guyana');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('92', 'GZ', 'Gaza Strip');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('93', 'HK', 'Hong Kong');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('94', 'HM', 'Heard Island and McDonald Islands');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('95', 'HN', 'Honduras');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('96', 'HR', 'Croatia');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('97', 'HT', 'Haiti');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('98', 'HU', 'Hungary');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('99', 'ID', 'Indonesia');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('100', 'IE', 'Ireland');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('101', 'IL', 'Israel');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('102', 'IM', 'Isle of Man');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('103', 'IN', 'India');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('104', 'IO', 'British Indian Ocean Territory');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('105', 'IQ', 'Iraq');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('106', 'IR', 'Iran');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('107', 'IS', 'Iceland');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('108', 'IT', 'Italy');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('109', 'JE', 'Jersey');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('110', 'JM', 'Jamaica');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('111', 'JO', 'Jordan');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('112', 'JP', 'Japan');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('113', 'KE', 'Kenya');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('114', 'KG', 'Kyrgyzstan');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('115', 'KH', 'Cambodia');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('116', 'KI', 'Kiribati');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('117', 'KM', 'Comoros');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('118', 'KN', 'Saint Kitts and Nevis');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('119', 'KP', 'North Korea');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('120', 'KR', 'South Korea');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('121', 'KW', 'Kuwait');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('122', 'KY', 'Cayman Islands');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('123', 'KZ', 'Kazakhstan');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('124', 'LA', 'Laos');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('125', 'LB', 'Lebanon');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('126', 'LC', 'Saint Lucia');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('127', 'LI', 'Liechtenstein');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('128', 'LK', 'Sri Lanka');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('129', 'LR', 'Liberia');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('130', 'LS', 'Lesotho');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('131', 'LT', 'Lithuania');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('132', 'LU', 'Luxembourg');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('133', 'LV', 'Latvia');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('134', 'LY', 'Libya');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('135', 'MA', 'Morocco');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('136', 'MC', 'Monaco');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('137', 'MD', 'Moldova');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('138', 'ME', 'Montenegro');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('139', 'MG', 'Madagascar');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('140', 'MH', 'Marshall Islands');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('141', 'MK', 'Macedonia [FYROM]');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('142', 'ML', 'Mali');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('143', 'MM', 'Myanmar [Burma]');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('144', 'MN', 'Mongolia');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('145', 'MO', 'Macau');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('146', 'MP', 'Northern Mariana Islands');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('147', 'MQ', 'Martinique');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('148', 'MR', 'Mauritania');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('149', 'MS', 'Montserrat');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('150', 'MT', 'Malta');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('151', 'MU', 'Mauritius');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('152', 'MV', 'Maldives');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('153', 'MW', 'Malawi');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('154', 'MX', 'Mexico');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('155', 'MY', 'Malaysia');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('156', 'MZ', 'Mozambique');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('157', 'NA', 'Namibia');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('158', 'NC', 'New Caledonia');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('159', 'NE', 'Niger');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('160', 'NF', 'Norfolk Island');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('161', 'NG', 'Nigeria');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('162', 'NI', 'Nicaragua');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('163', 'NL', 'Netherlands');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('164', 'NO', 'Norway');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('165', 'NP', 'Nepal');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('166', 'NR', 'Nauru');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('167', 'NU', 'Niue');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('168', 'NZ', 'New Zealand');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('169', 'OM', 'Oman');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('170', 'PA', 'Panama');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('171', 'PE', 'Peru');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('172', 'PF', 'French Polynesia');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('173', 'PG', 'Papua New Guinea');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('174', 'PH', 'Philippines');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('175', 'PK', 'Pakistan');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('176', 'PL', 'Poland');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('177', 'PM', 'Saint Pierre and Miquelon');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('178', 'PN', 'Pitcairn Islands');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('179', 'PR', 'Puerto Rico');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('180', 'PS', 'Palestinian Territories');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('181', 'PT', 'Portugal');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('182', 'PW', 'Palau');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('183', 'PY', 'Paraguay');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('184', 'QA', 'Qatar');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('185', 'RE', 'Réunion');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('186', 'RO', 'Romania');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('187', 'RS', 'Serbia');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('188', 'RU', 'Russia');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('189', 'RW', 'Rwanda');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('190', 'SA', 'Saudi Arabia');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('191', 'SB', 'Solomon Islands');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('192', 'SC', 'Seychelles');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('193', 'SD', 'Sudan');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('194', 'SE', 'Sweden');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('195', 'SG', 'Singapore');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('196', 'SH', 'Saint Helena');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('197', 'SI', 'Slovenia');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('198', 'SJ', 'Svalbard and Jan Mayen');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('199', 'SK', 'Slovakia');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('200', 'SL', 'Sierra Leone');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('201', 'SM', 'San Marino');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('202', 'SN', 'Senegal');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('203', 'SO', 'Somalia');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('204', 'SR', 'Suriname');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('205', 'ST', 'São Tomé and Príncipe');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('206', 'SV', 'El Salvador');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('207', 'SY', 'Syria');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('208', 'SZ', 'Swaziland');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('209', 'TC', 'Turks and Caicos Islands');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('210', 'TD', 'Chad');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('211', 'TF', 'French Southern Territories');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('212', 'TG', 'Togo');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('213', 'TH', 'Thailand');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('214', 'TJ', 'Tajikistan');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('215', 'TK', 'Tokelau');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('216', 'TL', 'Timor-Leste');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('217', 'TM', 'Turkmenistan');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('218', 'TN', 'Tunisia');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('219', 'TO', 'Tonga');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('220', 'TR', 'Turkey');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('221', 'TT', 'Trinidad and Tobago');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('222', 'TV', 'Tuvalu');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('223', 'TW', 'Taiwan');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('224', 'TZ', 'Tanzania');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('225', 'UA', 'Ukraine');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('226', 'UG', 'Uganda');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('227', 'UM', 'U.S. Minor Outlying Islands');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('228', 'US', 'United States');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('229', 'UY', 'Uruguay');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('230', 'UZ', 'Uzbekistan');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('231', 'VA', 'Vatican City');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('232', 'VC', 'Saint Vincent and the Grenadines');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('233', 'VE', 'Venezuela');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('234', 'VG', 'British Virgin Islands');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('235', 'VI', 'U.S. Virgin Islands');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('236', 'VN', 'Vietnam');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('237', 'VU', 'Vanuatu');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('238', 'WF', 'Wallis and Futuna');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('239', 'WS', 'Samoa');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('240', 'XK', 'Kosovo');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('241', 'YE', 'Yemen');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('242', 'YT', 'Mayotte');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('243', 'ZA', 'South Africa');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('244', 'ZM', 'Zambia');

INSERT INTO
    country (id, iso_code, name)
VALUES
    ('245', 'ZW', 'Zimbabwe');

-- อ้างอิงจาก https://statstd.nso.go.th/definition/projectdetail.aspx?periodId=92&defprodefId=1215
/**
สถานภาพสมรส หมายถึง ความผูกพันระหว่างชายกับหญิงในการเป็นสามีภรรยา  แบ่งได้ดังนี้
1. โสด ได้แก่ ผู้ที่ยังไม่เคยสมรส
2. สมรส ได้แก่ ผู้ที่อยู่ร่วมกันฉันท์สามีภรรยาไม่ว่าจะได้ทำการสมรสกันถูกต้องตามกฎหมายหรือไม่ก็ตาม และแม้ว่าระหว่างไปทำการสำรวจ  ทั้งสามีและภรรยาจะไม่ได้อยู่ด้วยกัน แต่ยังมีความสัมพันธ์ ฉันท์สามีภรรยากันอยู่ เช่น สามีไปทำงานต่างจังหวัดหรือไปทำงานต่างประเทศ ก็ถือว่ายังสมรสกันอยู่
3. หม้าย ได้แก่ ผู้ที่คู่สมรสได้ตายไปแล้ว และขณะนี้ยังไม่ได้สมรสใหม่
4. หย่า ได้แก่ สามีภรรยาที่หย่ากันโดยถูกต้องตามกฎหมายแล้ว
5. แยกกันอยู่ ได้แก่ ผู้ที่มิได้อยู่ร่วมกันฉันท์สามีภรรยาแล้ว แต่ยังไม่ได้หย่ากันตามกฎหมาย รวมทั้งผู้ที่ไม่ได้สมรสอย่างถูกต้องตามกฎหมาย แต่ไม่ได้อยู่ร่วมกันฉันท์สามีภรรยาแล้ว
6. เคยสมรสแต่ไม่ทราบสถานภาพสมรส ได้แก่ ผู้ที่สมรสแต่ไม่ทราบว่าเป็นสถานภาพใดแน่
เคยสมรส ในการสำรวจนี้หมายถึง สมรส (รวมอยู่กินฉันท์สามีภรรยา) หม้าย หย่า แยกกันอยู่ และเคยสมรสแต่ไม่ทราบสถานภาพสมรส
 */
-- Insert mock data into marital_status_type
INSERT INTO
    marital_status_type (id, description)
VALUES
    (1, 'Single'), -- โสด
    (2, 'Married'), -- สมรส
    (3, 'Widowed'), -- หม้าย
    (4, 'Divorced'), -- หย่า
    (5, 'Separated'), -- แยกกันอยู่
    (6, 'Previously Married, Status Unknown');

-- เคยสมรสแต่ไม่ทราบสถานภาพสมรส
-- Mock data for gender_type
INSERT INTO
    gender_type (id, gendercode, description)
VALUES
    (1, 'M', 'Male'),
    (2, 'F', 'Female'),
    (3, 'N', 'Non-Binary'),
    (4, 'U', 'Unspecified');

-- Mock data for citizenship (เชื่อมโยงกับ country id ที่ควรมีใน table country)
INSERT INTO
    citizenship (id, fromdate, thrudate, countryid)
VALUES
    (1, '2015-01-01', NULL, 1),
    (2, '2018-03-10', '2025-03-09', 2),
    (3, '2019-06-20', NULL, 3),
    (4, '2020-11-01', NULL, 4),
    (5, '2021-07-25', NULL, 1),
    (6, '2017-02-13', '2027-02-13', 5),
    (7, '2016-09-05', NULL, 2),
    (8, '2022-08-14', NULL, 3),
    (9, '2014-12-30', NULL, 4),
    (10, '2023-04-10', NULL, 5);

-- Mock data for marital_status (เชื่อมโยงกับ marital_status_type id ที่ควรมีใน table marital_status_type)
INSERT INTO
    marital_status (id, from_date, thru_date, marital_status_typeid)
VALUES
    (1, '2010-06-20', NULL, 1),
    (2, '2015-07-15', '2020-07-14', 2),
    (3, '2018-02-10', NULL, 3),
    (4, '2013-04-25', '2022-04-24', 1),
    (5, '2019-08-18', NULL, 2),
    (6, '2011-01-05', NULL, 3),
    (7, '2021-03-12', NULL, 1),
    (8, '2016-11-30', '2021-11-29', 2),
    (9, '2023-06-14', NULL, 3),
    (10, '2017-09-23', NULL, 1);

-- Mock data for physical_characteristic_type
INSERT INTO
    physical_characteristic_type (id, description)
VALUES
    (1, 'Height'),
    (2, 'Weight'),
    (3, 'Eye Color'),
    (4, 'Hair Color');

-- Mock data for physical_characteristic (เชื่อมโยงกับ physical_characteristic_type)
INSERT INTO
    physical_characteristic (
        id,
        from_date,
        thru_date,
        value,
        physical_characteristic_typeid
    )
VALUES
    (1, '2020-01-01', NULL, 175.5, 1),
    (2, '2020-02-15', NULL, 70.2, 2),
    (3, '2021-05-10', NULL, 180.0, 1),
    (4, '2019-08-20', NULL, 65.4, 2),
    (5, '2022-03-14', NULL, 177.1, 1),
    (6, '2018-09-25', NULL, 72.3, 2),
    (7, '2023-07-12', NULL, 68.0, 2),
    (8, '2022-10-05', NULL, 175.0, 1),
    (9, '2017-01-21', NULL, 73.5, 2),
    (10, '2023-02-14', NULL, 182.0, 1);

-- Mock data for person_name_type
INSERT INTO
    person_name_type (id, description)
VALUES
    (1, 'Given Name'),
    (2, 'Family Name'),
    (3, 'Nickname'),
    (4, 'Maiden Name');

-- Mock data for person_name (เชื่อมโยงกับ person_name_type)
INSERT INTO
    person_name (
        id,
        from_date,
        thru_date,
        name,
        person_name_typeid
    )
VALUES
    (1, '2020-01-01', NULL, 'John', 1),
    (2, '2020-01-01', NULL, 'Doe', 2),
    (3, '2021-04-15', NULL, 'Johnny', 3),
    (4, '2021-04-15', NULL, 'Smith', 4),
    (5, '2018-08-10', NULL, 'Alice', 1),
    (6, '2018-08-10', NULL, 'Johnson', 2),
    (7, '2022-03-05', NULL, 'Ally', 3),
    (8, '2022-03-05', NULL, 'Brown', 4),
    (9, '2019-12-20', NULL, 'Michael', 1),
    (10, '2019-12-20', NULL, 'Williams', 2);

-- Mock data for person (เชื่อมโยงกับ citizenship และ gender_type)
INSERT INTO
    person (
        id,
        birthdate,
        mothersmaidenname,
        socialsecurityno,
        totalyearworkexperience,
        comment,
        citizenshipid,
        gender_typeid
    )
VALUES
    (
        1,
        '1990-01-01',
        'Smith',
        '123-45-6789',
        10,
        'Test person',
        1,
        1
    ),
    (
        2,
        '1985-05-20',
        'Johnson',
        '987-65-4321',
        15,
        'Another test person',
        2,
        2
    ),
    (
        3,
        '1992-04-11',
        'Brown',
        '555-55-5555',
        8,
        'Sample person',
        3,
        1
    ),
    (
        4,
        '1988-09-14',
        'Taylor',
        '666-66-6666',
        12,
        'Data entry',
        4,
        2
    ),
    (
        5,
        '1979-12-24',
        'Williams',
        '777-77-7777',
        20,
        'Developer',
        5,
        3
    ),
    (
        6,
        '1995-07-05',
        'Jones',
        '888-88-8888',
        5,
        'Test engineer',
        6,
        1
    ),
    (
        7,
        '1982-03-15',
        'Davis',
        '999-99-9999',
        18,
        'Project manager',
        7,
        2
    ),
    (
        8,
        '1993-11-02',
        'Martinez',
        '101-10-1010',
        7,
        'Product designer',
        8,
        1
    ),
    (
        9,
        '1987-06-10',
        'Anderson',
        '202-20-2020',
        14,
        'Marketing',
        9,
        2
    ),
    (
        10,
        '1991-08-22',
        'Moore',
        '303-30-3030',
        9,
        'Finance',
        10,
        1
    );

-- Mock data for passport (เชื่อมโยงกับ citizenship)
INSERT INTO
    passport (
        id,
        pasport_num,
        issue_date,
        expire_date,
        citizenshipid
    )
VALUES
    (1, 'A1234567', '2019-01-01', '2029-01-01', 1),
    (2, 'B7654321', '2018-05-15', '2028-05-15', 2),
    (3, 'C3456789', '2021-06-20', '2031-06-20', 3),
    (4, 'D4567890', '2020-07-25', '2030-07-25', 4),
    (5, 'E5678901', '2017-03-14', '2027-03-14', 5),
    (6, 'F6789012', '2016-11-05', '2026-11-05', 6),
    (7, 'G7890123', '2019-08-30', '2029-08-30', 7),
    (8, 'H8901234', '2022-04-10', '2032-04-10', 8),
    (9, 'I9012345', '2015-12-20', '2025-12-20', 9),
    (10, 'J0123456', '2023-02-14', '2033-02-14', 10);
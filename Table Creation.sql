CREATE TABLE PEOPLE(
	person_id int PRIMARY KEY,
	first_name varchar NOT NULL,
	last_name varchar NOT NULL,
	age int NOT NULL
);

CREATE TABLE DONOR(
	donor_id int PRIMARY KEY NOT NULL ,
	blood_type varchar(3) NOT NULL,
	weight_lbs int NOT NULL,
	height_in int NOT NULL,
	gender varchar(1) NOT NULL,
	next_safe_donation_date date NOT NULL,
	CONSTRAINT check_gender CHECK(gender = 'M' OR gender = 'F'),
	FOREIGN KEY(donor_id) REFERENCES dbo.PEOPLE(person_id)
);

CREATE TABLE PATIENT(
	patient_id int PRIMARY KEY NOT NULL,
	blood_type varchar(3) NOT NULL,
	need_status varchar NOT NULL,
	weight_lbs int NOT NULL,
	CONSTRAINT check_status CHECK(need_status = 'high' or need_status = 'low'),
	FOREIGN KEY(patient_id) REFERENCES dbo.PEOPLE(person_id)
);

CREATE TABLE NURSE(
	nurse_id int PRIMARY KEY NOT NULL,
	years_experienced int NOT NULL,
	FOREIGN KEY(nurse_id) REFERENCES dbo.PEOPLE(person_id)
);

CREATE TABLE PRE_EXAM(
	pre_exam_id int PRIMARY KEY NOT NULL,
	hemoglobin_gDL decimal(5,2) NOT NULL,
	temperature_F decimal(5,2) NOT NULL,
	blood_pressure_mmHg decimal(5,2) NOT NULL,
	pulse_rate_BPM int NOT NULL
);

CREATE TABLE DONATION_TYPES(
	donation_type varchar NOT NULL PRIMARY KEY,
	frequency_days int NOT NULL
);

CREATE TABLE DONATION(
	donation_id int PRIMARY KEY NOT NULL,
	donor_id int NOT NULL,
	nurse_id int NOT NULL,
	pre_exam_id int NOT NULL,
	donation_type varchar NOT NULL,
	amount_donated_CC decimal(5,2) NOT NULL,
	FOREIGN KEY(donation_type) REFERENCES dbo.DONATION_TYPES(donation_type),
	FOREIGN KEY(donor_id) REFERENCES dbo.DONOR(donor_id),
	FOREIGN KEY(nurse_id) REFERENCES dbo.NURSE(nurse_id),
	FOREIGN KEY(pre_exam_id) REFERENCES dbo.PRE_EXAM(pre_exam_id) 
);

CREATE TABLE TRANSFUSION(
	transfusion_id int PRIMARY KEY NOT NULL,
	patient_id int NOT NULL,
	pre_exam_id int NOT NULL,
	nurse_id int NOT NULL,
	amount_received_CC decimal(5,2) NOT NULL,
	FOREIGN KEY(patient_id) REFERENCES dbo.PATIENT(patient_id),
	FOREIGN KEY(pre_exam_id) REFERENCES dbo.PRE_EXAM(pre_exam_id),
	FOREIGN KEY(nurse_id) REFERENCES dbo.NURSE(nurse_id)
);

CREATE TABLE BLOOD_BAGS(
	bloodbag_id int PRIMARY KEY NOT NULL,
	quantity_cc decimal(5,2) NOT NULL
);

CREATE TABLE LOCATION_CODES(
	location_code varchar(6) PRIMARY KEY NOT NULL,
	description text NOT NULL
);

CREATE TABLE LOCATIONS(
	locations_id int PRIMARY KEY NOT NULL,
	name text NOT NULL,
	location_code varchar(6) NOT NULL,
	city text NOT NULL,
	FOREIGN KEY(location_code) REFERENCES dbo.LOCATION_CODES(location_code) 
);

CREATE TABLE GLOBAL_INVENTORY (
	bloodbag_id int PRIMARY KEY NOT NULL,
	locations_id int NOT NULL,
	available bit DEFAULT 1,
	FOREIGN KEY(bloodbag_id) REFERENCES dbo.BLOOD_BAGS(bloodbag_id),
	FOREIGN KEY(locations_id) REFERENCES dbo.LOCATIONS(locations_id)
);

CREATE TABLE REQUESTS (
	request_id int PRIMARY KEY NOT NULL,
	locations_id int NOT NULL,
	blood_type_requested text NOT NULL,
	date_requested DATE NOT NULL,
	quantity_requested_pints int NOT NULL,
	FOREIGN KEY(locations_id) REFERENCES dbo.LOCATIONS(locations_id)
);

CREATE TABLE DONATION_RECORDS(
	donation_id int NOT NULL,
	locations_id int NOT NULL,
	bloodbag_id INT NOT NULL,
	donation_date DATE NOT NULL,
	FOREIGN KEY(donation_id) REFERENCES dbo.DONATION(donation_id),
	FOREIGN KEY(locations_id) REFERENCES dbo.LOCATIONS(locations_id),
	FOREIGN KEY(bloodbag_id) REFERENCES dbo.BLOOD_BAGS(bloodbag_id)
);

CREATE TABLE TRANSFUSION_RECORDS(
	transfusion_id int NOT NULL,
	locations_id int NOT NULL,
	bloodbag_id int NOT NULL,
	transfusion_date date NOT NULL,
	FOREIGN KEY(transfusion_id) REFERENCES dbo.TRANSFUSION(transfusion_id),
	FOREIGN KEY(locations_id) REFERENCES dbo.LOCATIONS(locations_id),
	FOREIGN KEY(bloodbag_id) REFERENCES dbo.BLOOD_BAGS(bloodbag_id)
);

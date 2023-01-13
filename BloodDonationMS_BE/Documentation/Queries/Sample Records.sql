ALTER TABLE PEOPLE ALTER COLUMN first_name varchar(20);
ALTER TABLE PEOPLE ALTER COLUMN last_name varchar(20);
ALTER TABLE DONATION_TYPES ALTER COLUMN donation_type varchar(20);
ALTER TABLE DONATION ALTER COLUMN donation_type varchar(20);
ALTER TABLE PATIENT ALTER COLUMN need_status varchar(20);

INSERT INTO dbo.PEOPLE(person_id, first_name, last_name, age)
VALUES(1, 'Vira', 'Chei', 27);
INSERT INTO dbo.PEOPLE(person_id, first_name, last_name, age)
VALUES(2, 'Grace', 'Ali', 42);
INSERT INTO dbo.PEOPLE(person_id, first_name, last_name, age)
VALUES(3, 'Alison', 'Chen', 57);
INSERT INTO dbo.PEOPLE(person_id, first_name, last_name, age)
VALUES(4, 'Mira', 'Lop', 85);
INSERT INTO dbo.PEOPLE(person_id, first_name, last_name, age)
VALUES(5, 'Danie', 'Egipt', 18);
INSERT INTO dbo.PEOPLE(person_id, first_name, last_name, age)
VALUES(6, 'Sanny', 'Owei', 34);
INSERT INTO dbo.PEOPLE(person_id, first_name, last_name, age)
VALUES(7, 'Ness', 'Ambi', 47);
INSERT INTO dbo.PEOPLE(person_id, first_name, last_name, age)
VALUES(8, 'Reno', 'Zembo', 56);
INSERT INTO dbo.PEOPLE(person_id, first_name, last_name, age)
VALUES(9, 'Yusif', 'Co', 21);
INSERT INTO dbo.PEOPLE(person_id, first_name, last_name, age)
VALUES(10, 'Ernest', 'Smith', 22);
INSERT INTO dbo.PEOPLE(person_id, first_name, last_name, age)
VALUES(11, 'Chris', 'Ly', 46);

INSERT INTO DONOR(donor_id, blood_type, weight_lbs, height_in, gender, next_safe_donation_date)
VALUES(1, 'O+', 175, 70, 'M', '2023-05-23');
INSERT INTO DONOR(donor_id, blood_type, weight_lbs, height_in, gender, next_safe_donation_date)
VALUES(2, 'O-', 120, 64, 'M', '2023-10-11');
INSERT INTO DONOR(donor_id, blood_type, weight_lbs, height_in, gender, next_safe_donation_date)
VALUES(3, 'AB-', 105, 59, 'M', '2023-09-05');
INSERT INTO DONOR(donor_id, blood_type, weight_lbs, height_in, gender, next_safe_donation_date)
VALUES(4, 'O+', 127, 60, 'M', '2023-12-01');
INSERT INTO DONOR(donor_id, blood_type, weight_lbs, height_in, gender, next_safe_donation_date)
VALUES(5, 'A+', 134, 65, 'M', '2023-04-12');
INSERT INTO DONOR(donor_id, blood_type, weight_lbs, height_in, gender, next_safe_donation_date)
VALUES(6, 'AB+', 192, 74, 'M', '2023-02-02');

INSERT INTO PATIENT(patient_id, blood_type, need_status, weight_lbs)
VALUES(7, 'O+', 'HIGH', 172);
INSERT INTO PATIENT(patient_id, blood_type, need_status, weight_lbs)
VALUES(8, 'AB+', 'LOW', 190);
INSERT INTO PATIENT(patient_id, blood_type, need_status, weight_lbs)
VALUES(9, 'AB-', 'LOW', 105);

INSERT INTO NURSE(nurse_id, years_experienced)
VALUES(10, 4);
INSERT INTO NURSE(nurse_id, years_experienced)
VALUES(11, 10);

ALTER TABLE PRE_EXAM ALTER COLUMN blood_pressure_mmHg varchar(20);
ALTER TABLE PRE_EXAM ALTER COLUMN hemoglobin_gDL decimal(5,2);

INSERT INTO PRE_EXAM(pre_exam_id, hemoglobin_gDL, temperature_F, blood_pressure_mmHg, pulse_rate_BPM)
VALUES(1, 15.2, 98.6, '120/80', 70)
INSERT INTO PRE_EXAM(pre_exam_id, hemoglobin_gDL, temperature_F, blood_pressure_mmHg, pulse_rate_BPM)
VALUES(2, 14.9, 98.5, '110/70', 75)
INSERT INTO PRE_EXAM(pre_exam_id, hemoglobin_gDL, temperature_F, blood_pressure_mmHg, pulse_rate_BPM)
VALUES(3, 15.7, 98.5, '130/85', 59)
INSERT INTO PRE_EXAM(pre_exam_id, hemoglobin_gDL, temperature_F, blood_pressure_mmHg, pulse_rate_BPM)
VALUES(4, 16.1, 98.4, '120/80', 67)
INSERT INTO PRE_EXAM(pre_exam_id, hemoglobin_gDL, temperature_F, blood_pressure_mmHg, pulse_rate_BPM)
VALUES(5, 14.2, 98.3, '90/80', 90)
INSERT INTO PRE_EXAM(pre_exam_id, hemoglobin_gDL, temperature_F, blood_pressure_mmHg, pulse_rate_BPM)
VALUES(6, 17.1, 98.2, '110/70', 44)

INSERT INTO DONATION(donation_id, donor_id, pre_exam_id, nurse_id, amount_donated_CC, donation_type)
VALUES(1, 1, 1, 10, 946, 'Power Red');
INSERT INTO DONATION(donation_id, donor_id, pre_exam_id, nurse_id, amount_donated_CC, donation_type)
VALUES(2, 2, 2, 10, 473, 'Blood');
INSERT INTO DONATION(donation_id, donor_id, pre_exam_id, nurse_id, amount_donated_CC, donation_type)
VALUES(3, 3, 3, 11, 556, 'Plasma');
INSERT INTO DONATION(donation_id, donor_id, pre_exam_id, nurse_id, amount_donated_CC, donation_type)
VALUES(4, 4, 4, 11, 628, 'Platelets');

INSERT INTO DONATION_TYPES(donation_type, frequency_days)
VALUES('Blood', 56);
INSERT INTO DONATION_TYPES(donation_type, frequency_days)
VALUES('Platelets', 7);
INSERT INTO DONATION_TYPES(donation_type, frequency_days)
VALUES('Plasma', 28);
INSERT INTO DONATION_TYPES(donation_type, frequency_days)
VALUES('Power Red', 112);

INSERT INTO TRANSFUSION(transfusion_id, patient_id, pre_exam_id, nurse_id, amount_received_CC)
VALUES(1, 7, 1, 10, 946);
INSERT INTO TRANSFUSION(transfusion_id, patient_id, pre_exam_id, nurse_id, amount_received_CC)
VALUES(2, 8, 2, 10, 473);
INSERT INTO TRANSFUSION(transfusion_id, patient_id, pre_exam_id, nurse_id, amount_received_CC)
VALUES(3, 9, 3, 11, 556);
INSERT INTO TRANSFUSION(transfusion_id, patient_id, pre_exam_id, nurse_id, amount_received_CC)
VALUES(4, 7, 4, 11, 628);

INSERT INTO BLOOD_BAGS(bloodbag_id, quantity_cc)
VALUES(1, 946);
INSERT INTO BLOOD_BAGS(bloodbag_id, quantity_cc)
VALUES(2, 473);
INSERT INTO BLOOD_BAGS(bloodbag_id, quantity_cc)
VALUES(3, 556);
INSERT INTO BLOOD_BAGS(bloodbag_id, quantity_cc)
VALUES(4, 628);


INSERT INTO LOCATIONS(locations_id, name, location_code, city)
VALUES(1, 'Mid Hudson Regional Hospital', 'HSPT', 'Poughkeepsie');
INSERT INTO LOCATIONS(locations_id, name, location_code, city)
VALUES(2, 'Vassar Brothers Medical Center', 'CLIN', 'Vassar');
INSERT INTO LOCATIONS(locations_id, name, location_code, city)
VALUES(3, 'Marist College', 'BDCO', 'Poughkeepsie');
INSERT INTO LOCATIONS(locations_id, name, location_code, city)
VALUES(4, 'Fort Monmouth', 'MILT', 'Eatentown');

INSERT INTO LOCATION_CODES(location_code, description)
VALUES('HSPT', 'Hospital');
INSERT INTO LOCATION_CODES(location_code, description)
VALUES('CLIN', 'Clinics');
INSERT INTO LOCATION_CODES(location_code, description)
VALUES('BDCO', 'Blood Drive - College');
INSERT INTO LOCATION_CODES(location_code, description)
VALUES('MILT', 'Military Facility');

INSERT INTO GLOBAL_INVENTORY(bloodbag_id, locations_id, available)
VALUES(1, 1, 1);
INSERT INTO GLOBAL_INVENTORY(bloodbag_id, locations_id, available)
VALUES(2, 2, 1);
INSERT INTO GLOBAL_INVENTORY(bloodbag_id, locations_id, available)
VALUES(3, 3, 0);
INSERT INTO GLOBAL_INVENTORY(bloodbag_id, locations_id, available)
VALUES(4, 4, 0);

INSERT INTO REQUESTS(request_id, locations_id, blood_type_requested, date_requested, quantity_requested_pints)
VALUES(1, 1, 'AB+', '2023-01-09', 10000);
INSERT INTO REQUESTS(request_id, locations_id, blood_type_requested, date_requested, quantity_requested_pints)
VALUES(2, 2, 'O+', '2023-01-10', 9000);
INSERT INTO REQUESTS(request_id, locations_id, blood_type_requested, date_requested, quantity_requested_pints)
VALUES(3, 3, 'AB-', '2023-01-03', 3000);
INSERT INTO REQUESTS(request_id, locations_id, blood_type_requested, date_requested, quantity_requested_pints)
VALUES(4, 4, 'O-', '2023-01-04', 12000);

INSERT INTO DONATION_RECORDS(donation_id, locations_id, donation_date, bloodbag_id)
VALUES(1, 1, '2023-03-24', 1);
INSERT INTO DONATION_RECORDS(donation_id, locations_id, donation_date, bloodbag_id)
VALUES(2, 2, '2023-04-05', 2);
INSERT INTO DONATION_RECORDS(donation_id, locations_id, donation_date, bloodbag_id)
VALUES(3, 3, '2023-06-01', 3);
INSERT INTO DONATION_RECORDS(donation_id, locations_id, donation_date, bloodbag_id)
VALUES(4, 4, '2023-10-31', 4);

INSERT INTO TRANSFUSION_RECORDS(transfusion_id, locations_id, transfusion_date, bloodbag_id)
VALUES(1, 1, '2023-03-27', 1);
INSERT INTO TRANSFUSION_RECORDS(transfusion_id, locations_id, transfusion_date, bloodbag_id)
VALUES(2, 2, '2023-04-06', 1);
INSERT INTO TRANSFUSION_RECORDS(transfusion_id, locations_id, transfusion_date, bloodbag_id)
VALUES(3, 3, '2023-06-01', 1);
INSERT INTO TRANSFUSION_RECORDS(transfusion_id, locations_id, transfusion_date, bloodbag_id)
VALUES(4, 4, '2023-11-05', 1);
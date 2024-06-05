select * from aa.Patient

DROP TABLE AAAA.Location;

CREATE TABLE AAAA.Location (
	City VARCHAR(65535),
	County VARCHAR(65535),
	Latitude DOUBLE,
	Longitude DOUBLE,
	State VARCHAR(65535),
	"0-4" DOUBLE,
	"5-9" DOUBLE,
	"10-14" DOUBLE,
	"15-19" DOUBLE,
	"20-29" DOUBLE,
	"30-39" DOUBLE,
	"40-49" DOUBLE,
	"50-59" DOUBLE,
	"60-69" DOUBLE,
	"70-79" DOUBLE,
	"80+" DOUBLE,
	F DOUBLE,
	M DOUBLE
);

LOAD DATA FROM FILE '/Notebooks/Location.csv' INTO AAAA.Location

SELECT * FROM AAAA.Location

create TABLE if not exists AB.DriverLicense (

    Code varchar(255) not null,
    Valide TINYINT not null

)

delete AB.DriverLicense

INSERT INTO AB.DriverLicense (Code, Valide) VALUES ('935564323334', 0);
INSERT into AB.DriverLicense (Code, Valide) VALUES ('35564323334', 1);
INSERT into AB.DriverLicense (Code, Valide) VALUES ('187788223334', 1);

SELECT 
P.PatientNameFamily, P.PatientNameGiven,DL.*
FROM AA.Patient P
inner join AB.DriverLicense DL on P.PatientIdentifierValue = DL.Code


SELECT 
o.*,p.*
FROM aaaa.Observation o full outer join aaaa.Patient p on 
o.SubjectReference=p.key

SELECT 
o.*,p.*
FROM aaaa.Observation o right outer join aaaa.Patient p on 
o.SubjectReference=p.key

SELECT 
o.*,p.*
FROM aaaa.Observation o left outer join aaaa.Patient p on 
o.SubjectReference=p.key

SELECT 
o.*,p.*
FROM aaaa.Observation o join aaaa.Patient p on 
o.SubjectReference=p.key
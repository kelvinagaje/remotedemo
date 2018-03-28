--<ScriptOptions statementTerminator=";"/>

CREATE TABLE LOCATIONS_Encrypt (
		LOCATION_ID NUMBER(4 , 0) NOT NULL,
		STREET_ADDRESS VARCHAR2(40),
		POSTAL_CODE VARCHAR2(12),
		CITY VARCHAR2(30) NOT NULL,
		STATE_PROVINCE VARCHAR2(25),
		COUNTRY_ID CHAR(2)
	);

CREATE INDEX LOC_COUNTRY_IX_enc ON LOCATIONS_Encrypt (COUNTRY_ID ASC);

CREATE INDEX LOC_ID_PK_enc ON LOCATIONS_Encrypt (LOCATION_ID ASC);

CREATE INDEX LOC_STATE_PROVINCE_IX_enc ON LOCATIONS_Encrypt (STATE_PROVINCE ASC);

CREATE INDEX LOC_CITY_IX_enc ON LOCATIONS_Encrypt (CITY ASC);

ALTER TABLE LOCATIONS_Encrypt ADD CONSTRAINT LOC_ID_PK_enc PRIMARY KEY (LOCATION_ID);

ALTER TABLE LOCATIONS_Encrypt ADD CONSTRAINT LOC_C_ID_FK_Enc FOREIGN KEY (COUNTRY_ID)
	REFERENCES COUNTRIES (COUNTRY_ID)
	;


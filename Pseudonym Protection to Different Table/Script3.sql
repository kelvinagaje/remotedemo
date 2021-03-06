--<ScriptOptions statementTerminator=";"/>

CREATE TABLE EMPLOYEES_PSEUDO (
		EMPLOYEE_SID VARCHAR2(9) NOT NULL,
		FIRST_NAME VARCHAR2(20),
		LAST_NAME VARCHAR2(25) NOT NULL,
		EMAIL VARCHAR2(25) NOT NULL,
		PHONE_NUMBER VARCHAR2(20),
		HIRE_DATE DATE NOT NULL,
		JOB_ID VARCHAR2(10) NOT NULL,
		SALARY NUMBER(8 , 2),
		COMMISSION_PCT NUMBER(3 , 2),
		MANAGER_SID VARCHAR2(9),
		DEPARTMENT_ID NUMBER(4 , 0)
	);

CREATE UNIQUE INDEX EMP_EMAIL_UK_PSEUDO ON EMPLOYEES_PSEUDO (EMAIL ASC);

CREATE INDEX EMP_NAME_IX_PSEUDO ON EMPLOYEES_PSEUDO (LAST_NAME ASC, FIRST_NAME ASC);

CREATE UNIQUE INDEX EMP_EMP_ID_PK_PSEUDO ON EMPLOYEES_PSEUDO (EMPLOYEE_SID ASC);

CREATE INDEX EMP_DEPARTMENT_IX_PSEUDO ON EMPLOYEES_PSEUDO (DEPARTMENT_ID ASC);

CREATE INDEX EMP_MANAGER_IX_PSEUDO ON EMPLOYEES_PSEUDO (MANAGER_SID ASC);

CREATE INDEX EMP_JOB_IX_PSEUDO ON EMPLOYEES_PSEUDO (JOB_ID ASC);

ALTER TABLE EMPLOYEES_PSEUDO ADD CONSTRAINT EMP_EMP_ID_PK_PSEUDO PRIMARY KEY (EMPLOYEE_SID);

ALTER TABLE EMPLOYEES_PSEUDO ADD CONSTRAINT EMP_JOB_FK_PSEUDO FOREIGN KEY (JOB_ID)
	REFERENCES JOBS (JOB_ID);

ALTER TABLE EMPLOYEES_PSEUDO ADD CONSTRAINT EMP_DEPT_FK_PSEUDO FOREIGN KEY (DEPARTMENT_ID)
	REFERENCES DEPARTMENTS (DEPARTMENT_ID);

ALTER TABLE EMPLOYEES_PSEUDO ADD CONSTRAINT EMP_MGNR_FK_PSEUDO FOREIGN KEY (MANAGER_SID)
	REFERENCES EMPLOYEES (EMPLOYEE_SID);


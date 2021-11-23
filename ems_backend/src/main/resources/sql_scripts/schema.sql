DROP TABLE IF EXISTS task;
DROP TABLE IF EXISTS employee;
CREATE TABLE employee
(
 id SERIAL PRIMARY KEY,
 first_name VARCHAR(255) NOT NULL,
 last_name VARCHAR(255) NOT NULL,
 email VARCHAR(255) NOT NULL, PASSWORD VARCHAR(255) NOT NULL,
 salary INTEGER NOT NULL,
 occupation VARCHAR(255) NOT NULL,
 emp_auth_level VARCHAR(255) NOT NULL,
 current_month_working_hours INTEGER NOT NULL DEFAULT 168,
 remaining_day_offs INTEGER NOT NULL DEFAULT 26
);
CREATE TABLE task
(
 id SERIAL PRIMARY KEY,
 description VARCHAR(255) NOT NULL, STATUS VARCHAR(255) NOT NULL,
 start_date DATE NOT NULL,
 end_date DATE NOT NULL,
 employee_id INTEGER REFERENCES employee(id)
);

INSERT INTO employee (first_name,
 last_name,
 email, PASSWORD,
 salary,
 occupation,
 emp_auth_level,
 current_month_working_hours,
 remaining_day_offs) VALUES ('Rany',
 'Pen',
 'pen@gmail.com',
 '$2a$10$XKm3PthMPfJJBs/aBBGXsupV3kyhNXQsGLFDQziDMS7V6iLfywoJu',
 1200,
 'Accountant',
 'ROLE_USER',
 168,
 22
);

INSERT INTO employee (first_name,
 last_name,
 email, PASSWORD,
 salary,
 occupation,
 emp_auth_level,
 current_month_working_hours,
 remaining_day_offs) VALUES ('Saroth',
 'Tun',
 'saroth@gmail.com',
 '$2a$10$V9.C0CPWKriQdk5gZ1VBce7rYQKS7X6YGaDmgiw0DuiG0iq40tj0K',
 1200,
 'Network supporter',
 'ROLE_USER',
 168,
 22
);

INSERT INTO employee (first_name,
 last_name,
 email, PASSWORD,
 salary,
 occupation,
 emp_auth_level,
 current_month_working_hours,
 remaining_day_offs) VALUES ('Ravy',
 'Khum',
 'khum@gmail.com',
 '$2a$10$V9.C0CPWKriQdk5gZ1VBce7rYQKS7X6YGaDmgiw0DuiG0iq40tj0K',
 1000,
 'Web Developer',
 'ROLE_USER',
 168,
 22
);

INSERT INTO employee (first_name,
 last_name,
 email, PASSWORD,
 salary,
 occupation,
 emp_auth_level,
 current_month_working_hours,
 remaining_day_offs) VALUES ('Samrith',
 'Tuy',
 'samrith@gmail.com',
 '$2a$10$V9.C0CPWKriQdk5gZ1VBce7rYQKS7X6YGaDmgiw0DuiG0iq40tj0K',
 1100,
 'Web Developer',
 'ROLE_USER',
 168,
 22
);

INSERT INTO employee (first_name,
 last_name,
 email, PASSWORD,
 salary,
 occupation,
 emp_auth_level,
 current_month_working_hours,
 remaining_day_offs) VALUES ('Dina',
 'Vong',
 'dina@gmail.com',
 '$2a$10$V9.C0CPWKriQdk5gZ1VBce7rYQKS7X6YGaDmgiw0DuiG0iq40tj0K',
 1200,
 'Web Developer',
 'ROLE_USER',
 168,
 22
);

INSERT INTO employee (first_name,
 last_name,
 email, PASSWORD,
 salary,
 occupation,
 emp_auth_level,
 current_month_working_hours,
 remaining_day_offs) VALUES ('Sambath',
 'Chea',
 'sambath@gmail.com',
 '$2a$10$13cyedMPauT0Y.Iss1RKxOts4Bswlja5P7ywkreffzwnTSPon6Cwe',
 2000,
 'Mobile Developer',
 'ROLE_ADMIN',
 155,
 10);
 
INSERT INTO employee (first_name,
 last_name,
 email, PASSWORD,
 salary,
 occupation,
 emp_auth_level,
 current_month_working_hours,
 remaining_day_offs) VALUES ('Sophearoth',
 'Sun',
 'sophearoth@gmail.com',
 '$2a$10$V9.C0CPWKriQdk5gZ1VBce7rYQKS7X6YGaDmgiw0DuiG0iq40tj0K',
 1500,
 'Mobile Developer',
 'ROLE_USER',
 160,
 13);
 
INSERT INTO employee (first_name,
 last_name,
 email, PASSWORD,
 salary,
 occupation,
 emp_auth_level,
 current_month_working_hours,
 remaining_day_offs) VALUES ('Samath',
 'Norng',
 'samath@gmail.com',
 '$2a$10$XKm3PthMPfJJBs/aBBGXsupV3kyhNXQsGLFDQziDMS7V6iLfywoJu',
 1000,
 'Software Developer',
 'ROLE_ADMIN',
 160,
 13);

-- Ass1
INSERT INTO task(description, STATUS,
 start_date,
 end_date,
 employee_id) VALUES('Preapare new APP UI design',
 'NEW',
 '2020-09-05',
 '2020-08-10',
 3
);
--Ass2
INSERT INTO task(description, STATUS,
 start_date,
 end_date,
 employee_id) VALUES('Clean the office floor',
 'NEW',
 '2020-08-28',
 '2020-08-29',
 2
);
--Ass3
INSERT INTO task(description, STATUS,
 start_date,
 end_date,
 employee_id) VALUES('Take out the rubbish',
 'DONE',
 '2020-09-01',
 '2020-09-02',
 2
);


-- Ass4
INSERT INTO task(description, STATUS,
 start_date,
 end_date,
 employee_id) VALUES('Preapare new APP UI ',
 'DONE',
 '2020-09-05',
 '2020-08-10',
 3
);
--Ass5
INSERT INTO task(description, STATUS,
 start_date,
 end_date,
 employee_id) VALUES('Clean the floor',
 'NEW',
 '2020-08-28',
 '2020-08-29',
 2
);




--UNASIGNED
INSERT INTO task(description, STATUS,
 start_date,
 end_date) VALUES('Order no 1 to be realized',
 'NEW',
 '2020-09-01',
 '2020-09-02'
);
INSERT INTO task(description, STATUS,
 start_date,
 end_date) VALUES('Order no 2 to be sent',
 'NEW',
 '2020-09-03',
 '2020-09-04'
);
INSERT INTO task(description, STATUS,
 start_date,
 end_date) VALUES('Order no 3 to be realized',
 'NEW',
 '2020-09-01',
 '2020-09-02'
);
INSERT INTO task(description, STATUS,
 start_date,
 end_date) VALUES('Order no 4 to be sent',
 'NEW',
 '2020-09-03',
 '2020-09-04'
);


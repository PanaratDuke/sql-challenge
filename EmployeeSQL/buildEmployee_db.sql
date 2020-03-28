\c postgres;

create database employees;

\c employees;

\i 'schemaEmployee.sql';

\copy departments from 'departments.csv' delimiter ',' csv header;
\copy employees from 'employees.csv' delimiter ',' csv header;
\copy dept_emp from 'dept_emp.csv' delimiter ',' csv header;
\copy dept_manager from 'dept_manager.csv' delimiter ',' csv header;
\copy salaries from 'salaries.csv' delimiter ',' csv header;
\copy titles from 'titles.csv' delimiter ',' csv header;
use employees;
/* all employees who were born before 1965-01-01 */
select * from employees where birth_date < '1965-01-01';
/* Show all employees who are female and were hired after 1990 */
select * from employees where gender  = 'f' and hire_date > '1990-12-31';
/* Show the first and last name of the first 50 employees whose last name starts with F */
select first_name, last_name from employees where last_name like 'F%' limit 50;
/* Insert 3 new employees into the employees table. There emp_no should be 100, 101, and 102. You can choose the rest of the data. */
insert into employees values (100, '2001-01-02', 'Tom', 'Bacardi', 'F', '2017-02-01'), (101, '2002-02-02', 'Becky', 'Bell', 
'f', '2012-12-12'), (102, '2022-03-30', 'Alexis', 'Flood', 'M', '2022-05-15');
/* Change the employee's first name to Bob for the employee with the emp_no of 10023 */
update employees set first_name = 'Bob' where emp_no =10023;
/* Change all employees hire dates to 2002-01-01 whose first or last names start with P. */
update employees set hire_date = '2002-01-01' where first_name like 'p%' or last_name like 'p%';
/*  Delete all employees who have an emp_no less than 10000 */
delete from employees where emp_no < 1000;
/* Delete all employee who have an emp_no of 10048, 10099, 10234, and 20089 */
delete from employees where emp_no in(10048, 10099, 10234, 20089);
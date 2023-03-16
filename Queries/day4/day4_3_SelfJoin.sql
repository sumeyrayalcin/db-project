/*
 SELF JOIN
 when we join according to the same table's column
 we use the same table two times, we seperate the same table in two different table
 and create the logical condition
 */

--get me all employees firstname, lastname and their managers first and lastname
select EMPLOYEE_ID,FIRST_NAME,LAST_NAME,MANAGER_ID from EMPLOYEES;

select e1.employee_id, e1.first_name, e1.LAST_NAME,e1.MANAGER_ID,e2.EMPLOYEE_ID,e2.FIRST_NAME,e2.LAST_NAME
from EMPLOYEES e1 join EMPLOYEES e2
                       on e1.MANAGER_ID=e2.EMPLOYEE_ID
order by e1.EMPLOYEE_ID;



--with left join it will show the null value from left table
select e1.EMPLOYEE_ID,e1.FIRST_NAME,e1.LAST_NAME,e1.MANAGER_ID,e2.EMPLOYEE_ID,e2.FIRST_NAME,e2.LAST_NAME
from EMPLOYEES e1 left join EMPLOYEES e2
                            on e1.MANAGER_ID=e2.EMPLOYEE_ID
order by e1.EMPLOYEE_ID;
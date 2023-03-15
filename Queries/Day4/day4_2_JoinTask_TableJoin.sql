--get me first_name, last_name and department name for all employees

select * from EMPLOYEES;

select * from DEPARTMENTS;


--shows only common in two tables
select  FIRST_NAME, LAST_NAME, DEPARTMENT_NAME
from EMPLOYEES e left join  DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID
where  e.DEPARTMENT_ID is null ;

--shows common+left table's uniques
select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME
from EMPLOYEES e left outer join DEPARTMENTS d
                                 on e.DEPARTMENT_ID=d.DEPARTMENT_ID;

--shows only left table's uniques
select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME
from EMPLOYEES e left outer join DEPARTMENTS d
                                 on e.DEPARTMENT_ID=d.DEPARTMENT_ID
where e.DEPARTMENT_ID is null;



--3 TABLE connected
--get me first_name, last_name and department name,city for all employees
select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME,CITY
from EMPLOYEES e join DEPARTMENTS d
                      on e.DEPARTMENT_ID=d.DEPARTMENT_ID
                 join LOCATIONS l
                      on d.LOCATION_ID=l.LOCATION_ID;


--4 TABLE connected
--get me first_name, last_name and department name,city,country_name for all employees
select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME,CITY,country_name
from EMPLOYEES e join DEPARTMENTS d
                      on e.DEPARTMENT_ID=d.DEPARTMENT_ID
                 join LOCATIONS l
                      on d.LOCATION_ID=l.LOCATION_ID
                 join COUNTRIES c
                      on c.COUNTRY_ID=l.COUNTRY_ID;
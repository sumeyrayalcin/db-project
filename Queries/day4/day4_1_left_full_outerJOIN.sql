--from dan sonra gelen left table
--join den sonra gelen right table

/*
 LEFT OUTER JOIN WITH WHERE
 only shows left table's unique ones
 from customer left outer join address : sadece customer table da olanları gösterir,
 diğer table ile common olanları değil.
 */

select * from EMPLOYEES;
select * from DEPARTMENTS;

select FIRST_NAME, LAST_NAME, DEPARTMENT_NAME
from EMPLOYEES e left join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID;


-- doesnt work well, I will check it later there is no left but there is right
select CUSTOMER_ID,FIRST_NAME,LAST_NAME,CUSTOMER.ADDRESS_ID,ADDRESS.ADDRESS_ID ADDRESS,PHONE
from CUSTOMER right outer join  ADDRESS
                              on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID
where CUSTOMER.ADDRESS_ID IS NULL;




--dilek
select CUSTOMER_ID,FIRST_NAME,LAST_NAME,CUSTOMER.ADDRESS_ID,ADDRESS.ADDRESS_ID ADDRESS,PHONE
from CUSTOMER left outer join  address
                               on CUSTOMER.ADDRESS_ID=ADDRESS.address_ID
where CUSTOMER.address_id is null;


commit ;



/*
 FULL OUTER JOIN WITH WHERE
 shows only unique ones from two tables. it doest show the common ones.
 */
select *from CUSTOMER FULL OUTER JOIN ADDRESS
                                      On CUSTOMER.ADDRESS_ID=ADDRESS.ADDRESS_ID
where CUSTOMER.ADDRESS_ID IS NULL OR
    ADDRESS.ADDRESS_ID IS NULL ;
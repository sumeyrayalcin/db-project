select * from SCRUMTEAM;

--adding new column
ALTER TABLE SCRUMTEAM add salary Integer;

--update existing employees salary
update SCRUMTEAM set salary =100000 where EMP_ID=1;
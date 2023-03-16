select * from TESTERS;

select * from DEVELOPERS;

/*
 SET OPERATORS
 connecting two independent seperate queries together to get one result
 we need same number of columns and same data type in same order
 */


--UNION keyword :
-- attach with a sort. rank the result defaultly.
-- removes all duplicate rows
select * from TESTERS
union
select * from DEVELOPERS;


--UNION ALL connect without a sort
--if you want to keep the order and attach without any sorting or any removing duplicates
select * from DEVELOPERS
union all
select * from TESTERS;


--check only the wanted column, just check there is duplicate or not in that column
--NAMES (remove duplicate from the column that will displayed)
select NAMES from developers
minus
select NAMES from TESTERS;

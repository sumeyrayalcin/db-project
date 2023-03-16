/*
 MINUS
 hangi table'dan cıkarıyorsak o table ın unique olanlarını gösterir
 from dev minus diyorsak dev's uniques gösterilecek
 *show records from query1 that are not present in query2
 */
select NAMES from DEVELOPERS
minus
select names from TESTERS;

select * from DEVELOPERS
minus
select * from TESTERS;

/*
 INTERSECT
shows the common datas of two tables
 it will sort and remove duplicates
 *show common records from 2 queries
 */
select NAMES from DEVELOPERS
intersect
select names from TESTERS;
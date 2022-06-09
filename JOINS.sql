/*** 

JOIN pavyzdziai: kuo skiriasi INNER, LEFT, RIGH ir FULL

***/

--1
select * from 
Projektai INNER JOIN Vykdymas ON Nr = Projektas

--2
select * from 
Projektai LEFT JOIN Vykdymas ON Nr = Projektas

--3
select * from 
Projektai RIGHT JOIN Vykdymas ON Nr = Projektas

--4
select * from 
Projektai FULL JOIN Vykdymas ON Nr = Projektas

--5
select * from 
Projektai LEFT JOIN Vykdymas ON Nr = Projektas
where Projektas IS NULL

--6
select * from 
Projektai RIGHT JOIN Vykdymas ON Nr = Projektas
where Projektai.NR IS NULL

--7
select * from 
Projektai FULL JOIN Vykdymas ON Nr = Projektas
where Vykdymas.Projektas IS NULL OR Projektai.NR IS NULL
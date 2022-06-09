/*** 

JOIN pavyzdziai: kuo skiriasi INNER, LEFT, RIGH ir FULL

***/


select * from 
Projektai INNER JOIN Vykdymas ON Nr = Projektas

select * from 
Projektai LEFT JOIN Vykdymas ON Nr = Projektas

select * from 
Projektai RIGHT JOIN Vykdymas ON Nr = Projektas

select * from 
Projektai FULL JOIN Vykdymas ON Nr = Projektas

select * from 
Projektai LEFT JOIN Vykdymas ON Nr = Projektas
where Projektas IS NULL

select * from 
Projektai RIGHT JOIN Vykdymas ON Nr = Projektas
where Projektai.NR IS NULL

select * from 
Projektai FULL JOIN Vykdymas ON Nr = Projektas
where Vykdymas.Projektas IS NULL OR Projektai.NR IS NULL
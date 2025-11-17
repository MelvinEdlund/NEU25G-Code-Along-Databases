-- RadKommenter
 
/*
	Blockkommentar
*/
 
-- SQL är case-insensetive d.v.s gör ingen skillnad på små och stora bokstäver.
-- Gäller data såväl som kolumnnamn, variabler etc.
 
-- Index börjar på 1.
 
-- Databas-termer:
-- Selection - Vilka rader vi filtrerar ut (gör med keyword Where)
-- Projection - vilka kolumner vi efterfrågar (görs mellan keyword select och from)
 
-- Ge oss alla kolumner (Våran selection = *) från alla rader
--select * from students;
 
---- Använd en where för att filtrera vilka rader vi tar ut, med ett (where-)vilkor.
--select * from students where lastname = 'breuker' and id < 4;
 
---- Projection exempel:
--select 
--	id, 
--	upper(firstname) as 'firstname in upper', 
--	id + 100 as 'id + 100', 
--	--*, 
--	'sebbe' as 'sebastians namn', 
--	'Hej ' + firstname as 'greeting',
--	firstname + ' ' + lastname as fullname
 
--from 
--	students;
/*
	string literals använder 'singe quotes' inte "double quotes" som i C#
	= lika med (istället för == som i C#)
<> inte lika med (ISO-standard, men i T-SQL även != funkar)
< mindre än
> större än
<= mindre eller likamed
>= större eller likamed
 
	and (motsvarar C# &&)
	or (motsvarar C# ||)
	not (motsvarar C# !)
*/
 
-- väljer vilken databas som är aktiv
--use ITHS
 
 
 
use everyloop
 
-- top begränsar antal rader man får ut.
-- select top 10 percent * from users;
 
-- In
-- select * from users where firstname in ('ulla', 'milla', 'johanna');
 
-- Between
--select * from users where firstname between 'b' and 'd';
--select * from users where firstname >= 'b' and firstname <= 'd';
 
-- Like
--select * from users where firstname like 'a-c%'
 
-- Order by
--select * from users order by firstname, lastname desc
 
-- len = length
--select firstname from users order by len(firstname)
 
-- Union all, slå ihop från 2 olika tabeller
 
-- case when end (typ som if-sats)
--select 
--	firstname, 
--	case
--		when len(firstname) < 5 then 'Short'
--		when len(firstname) > 8 then 'Long'
--		else 'medium'
--	end as 'LengthOfName'
--from
--	users
--where
--	firstname like '[adfk]%'
--order by 
--	len(firstname)
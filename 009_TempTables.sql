
select 
	id, 
	UserName, 
	concat(firstname, ' ', lastname) as name
into
	#tempUsers
from 
	Users 
where 
	FirstName like 'a%';

select * from #tempUsers;
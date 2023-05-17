use publications;


/* challenge 1*/


select au.au_id , au.au_lname as last_name, au.au_fname as first_name, t.title, p.pub_name
from authors au
	left join titleauthor  ta
	on au.au_id = ta.au_id
	inner join titles t
	on ta.title_id = t.title_id
    inner join publishers p
    on p.pub_id = t.pub_id;

/* challenge 2 */

select au.au_id as AUTHOR_ID, au.au_lname as LAST_NAME, au.au_fname as FIRST_NAME, p.pub_name as PUBLISHER, count(t.title) as TITLE_COUNT
from authors as au
	inner join titleauthor as ta
    on au.au_id = ta.au_id
    inner join titles as t 
    on ta.title_id = t.title_id
    inner join publishers as p 
    on t.pub_id = p.pub_id
    group by (au.au_id);
    
    
/* challenge 3 */

select au.au_id , au.au_lname as last_name, au.au_fname as first_name, sum(s.qty) as QTY
from authors au
	left join titleauthor  ta
	on au.au_id = ta.au_id
	inner join sales s
	on ta.title_id = s.title_id
    group by (au.au_id)
    order by sum(s.qty) desc;

/*Bonnus */

select a.au_id , a.au_lname as last_name, a.au_fname as first_name, sum(t.royalty + t.advance) as PROFIT
from authors a
	left join titleauthor ta
	on a.au_id = ta.au_id
	left join titles t
	on ta.title_id = t.title_id
	group by a.au_id 
    order by PROFIT desc 
	;
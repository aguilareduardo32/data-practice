use publications;

/* this query gets al the pub name that have an pub_id in titles (iner join)*/

SELECT pubs.pub_name, count(titles.title_id) as Titles
from publications.publishers pubs
inner join publications.titles titles
on pubs.pub_id = titles.pub_id
group by pubs.pub_name;


/* this query gets all the pub name even if they dont have pub_id in titles(left join)*/

select publications.publishers.pub_name, count(publications.titles.title_id) as Titles
from publications.publishers
left join publications.titles
on publications.publishers.pub_id = publications.titles.pub_id
group by publications.publishers.pub_name;



/* if we wanted to know how many book where sold by title...*/

/*#here we put the columns we want in our table*/
select titles.title, titles.type, titles.price, sum(sales.qty) as unit_sold
from publications.titles titles
left join publications.sales sales
on
 titles.title_id = sales.title_id
group by titles.title, titles.type, titles.price;

select count(employee.fname), count(jobs.job_desc)
from publications.employee employee
left join publications.jobs	jobs
on employee.job_id = jobs.job_id;



select count(*) 
from publications.employee emp
right join publications.jobs job
on emp.job_id = job.job_id
union
select count(*) 
from publications.employee emp
left join publications.jobs job
on emp.job_id = job.job_id;




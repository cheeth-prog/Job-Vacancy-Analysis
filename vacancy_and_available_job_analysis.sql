--select all the data
select * from job_dataset

--what is the top 10 job that has the most vacancy in there position
select job_name,vacancies
from job_dataset
where vacancies is not null
order by vacancies desc
limit 10

--what qualification is the most commonly stated in the dataset
select qualification,count(qualification) as total_count
from job_dataset
group by qualification
order by count(qualification) desc
limit 10


--list of all data analyst job and their vacancy
select job_name,vacancies,count(job_name) as total_count
from job_dataset
where job_name like 'Data Analyst%'
group by job_name,vacancies

--what place has the most vacancy and what job is available
select location,job_name,sum(vacancies) as total_vacancy
from job_dataset
where vacancies is not null
group by location,job_name
order by sum(vacancies) desc
limit 10


Select * From data_dictionary;

select * From employee;

SELECT
LENGTH(phone_number)
FROM
employee;

# lets use the following function to edit the phone number column by removing the space at the end of each entry 


update employee
set phone_number = (
SELECT
	rtrim(phone_number)
);

    SELECT
LENGTH(phone_number)
FROM
employee;

Select
*
From
employee;

Select
	town_name,
    count(employee_name) as 'employees count'
From 
	employee
group by
	town_name;
    
    
# Number of records each employee recorded

select
	assigned_employee_id,
	visit_count
From
visits;

SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));


# Top 3 assigned employees
Select
	assigned_employee_id,
    sum(visit_count) as 'number_of_visits'
From 
	visits
group by assigned_employee_id
order by number_of_visits desc
limit 3;

# 1 30 34
select
	assigned_employee_id,
    employee_name,
	email,
	phone_number
From
	employee
where assigned_employee_id in (1, 30,34);


Select
	*
From
	location;
 
 #
select
	count(address),
    province_name
From
	location
Group by province_name;




select
    province_name,
	town_name,
    count(address) as 'records_per_town'
From
	location
Group by town_name, province_name
Order by records_per_town desc;

select
	count(address) as 'num_sources',
    location_type
From
	location
Group by location_type
Order by num_sources desc;


Select
*
From
water_source;

select
    sum(number_of_people_served)
From
	water_source;
    
# How many wells, taps and rivers are there?

select
    type_of_water_source,
    count(number_of_people_served) as totals
From
	water_source
Group by type_of_water_source;


# How many people share particular types of water sources on average?

select
    type_of_water_source,
    avg(number_of_people_served) as average_people_per_source
From
	water_source
Group by type_of_water_source;


# How many people are getting water from each type of source?

select
    type_of_water_source,
    sum(number_of_people_served) as totals
From
	water_source
Group by type_of_water_source
Order by totals desc;


# Percentages

select
    type_of_water_source,
    round(sum(number_of_people_served)/27000000 * 100) as total_percentage
From
	water_source
Group by type_of_water_source
Order by total_percentage desc;



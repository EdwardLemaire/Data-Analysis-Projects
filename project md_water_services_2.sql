SELECT * FROM md_water_services.data_dictionary;

SELECT * FROM md_water_services.water_source LIMIT 5;

SELECT * FROM md_water_services.visits LIMIT 5;

SELECT distinct type_of_water_source FROM md_water_services.water_source;

SELECT * FROM md_water_services.visits
where time_in_queue > 500;

SELECT * FROM md_water_services.visits;

SELECT * FROM md_water_services.water_source
WHERE source_id IN('AkRu05234224', 'HaZa21742224');

#This next line is from page 19. About visits count
SELECT * FROM md_water_services.water_quality;

#subject quality is 10 in home taps and visited a second time
SELECT * FROM md_water_services.water_quality
WHERE subjective_quality_score = 10 and visit_count > 1;

#Well pollution table on page 20
SELECT * FROM md_water_services.well_pollution LIMIT 5;

#Query to check if result column is clean but the bio column is greater than 0.01
SELECT * FROM md_water_services.well_pollution
WHERE results = "clean" and biological > 0.01;

SELECT * FROM md_water_services.well_pollution
WHERE description like "clean%"
and biological > 0.01;

# Page 24 continues here
SET sql_safe_updates = 0;

UPDATE
	well_pollution
SET
	description = 'Bacteria: E. coli'
WHERE
	description = "Clean Bacteria: E. coli";

UPDATE
	well_pollution
SET
	description = "Bacteria: Giardia Lamblia"
WHERE
	description = "Clean Bacteria: Giardia Lamblia";
    
UPDATE
	well_pollution
SET
	results = "Contaminated: Biological"
WHERE
	biological > 0.01 AND results = "Clean";
    
SELECT * FROM md_water_services.well_pollution;

SELECT
*
FROM
	well_pollution
WHERE
	description LIKE "Clean_%"
	OR (results = "Clean" AND biological > 0.01);


SELECT population FROM md_water_services.data_dictionary;
	WHERE type_of_water_source = "shared_tap" ;
    
SELECT * FROM md_water_services.employee
	WHERE phone_number IN(86, 11)
    AND employee_name like 'A%' or 'M%';


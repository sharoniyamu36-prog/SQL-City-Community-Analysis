--IYAMU SHARON ASSESSMENT...

--1) Who hired Jeremy Bowers

SELECT p.id, p.name, i.transcript
FROM person p
JOIN interview i ON i.person_id = p.id
WHERE p.name = 'Jeremy Bowers';

SELECT i.transcript
FROM person p
JOIN interview i ON i.person_id = p.id
WHERE p.name = 'Jeremy Bowers';


--SELECT p.id, p.name
--FROM person p
--JOIN drivers_license d ON p.license_id = d.id
--JOIN facebook_event_checkin f ON f.person_id = p.id
--WHERE d.gender = 'female'
--AND d.hair_color = 'red'
--AND d.car_make = 'tesla' AND d.car_model = 'model s'
--AND d.height BETWEEN 65 AND 67
--AND f.event_name = 'SQL Symphony Concert'
--AND f.date BETWEEN 20171201 AND 20171231     
--GROUP BY p.id, p.name
--HAVING COUNT(*) = 3;


SELECT COUNT(*)
FROM facebook_event_checkin
WHERE event_name = 'SQL Symphony Concert'
  AND date BETWEEN 20171201 AND 20171231;


SELECT person_id, COUNT(*)
FROM facebook_event_checkin
WHERE event_name = 'SQL Symphony Concert'
  AND date BETWEEN 20171201 AND 20171231
GROUP BY person_id
HAVING COUNT(*) = 3;


SELECT p.id, p.name
FROM person p
JOIN drivers_license d ON p.license_id = d.id
WHERE d.gender = 'female'
  AND d.hair_color = 'red'
  AND d.car_make = 'Tesla' AND d.car_model = 'Model S'
  AND d.height BETWEEN 65 AND 67;

--The person who hired Jeremy Bowers is Miranda Priestly with the id 99716




--2) Top 20 Earners
SELECT p.name AS "Name",
       p.address_number || ' ' || p.address_street_name AS "Address",
       d.age AS "Age",
       d.gender AS "Gender",
       d.car_make AS "Car Type"
FROM person p
JOIN drivers_license d ON p.license_id = d.id
JOIN income i ON p.ssn = i.ssn
ORDER BY i.annual_income DESC
LIMIT 20;



--3) Daily Gym Attendance

SELECT TO_DATE(check_in_date::text, 'YYYYMMDD') AS "Date",
       COUNT(DISTINCT membership_id) AS "Number of people in gym"
FROM get_fit_now_check_in
GROUP BY check_in_date
ORDER BY check_in_date;

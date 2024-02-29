#1
SELECT *
FROM crime_scene_report
WHERE date = "20180115" AND (city = "SQL City") AND (type = "murder");
#here I have retrieved the murder that happened in sql city, on 15th january 2018, I have recieved information about witnesses.
PRAGMA table_info('crime_scene_report');
#2
SELECT *
FROM person
WHERE address_street_name = "Northwestern Dr"
ORDER BY address_number DESC 
LIMIT 1;
SELECT *
FROM person
WHERE name LIKE "%Annabel%" AND address_street_name = "Franklin Ave";
##here I have identified the people using the information provided , and retrived their statement about murder, which helped me in further investigation.
#3
SELECT id, name, transcript
FROM person 
JOIN interview ON id = person_id
WHERE id IN (14887, 16371);
#4
SELECT*
FROM get_fit_now_member 
WHERE membership_status = "gold" AND id LIKE "%48Z%";
#with the information provided i have narrowed down the suspects to two people with their id, person_id and names Germuska and bowers 
#5 
SELECT*
FROM person
WHERE id = 28819 OR id = 67318
#here i confirmed the memebershipstatus and id to match 48Z
SELECT *
FROM person
WHERE license_id = "17389" OR license_id = "423327" 
# I used above recieved license id and narrowed down to one person
SELECT * 
FROM drivers_license
WHERE id = "423327";

#6
SELECT *
FROM get_fit_now_check_in
WHERE check_in_date = "20180109" AND membership_id LIKE "%48Z%";
# here i tried to confirm if they were in gym on 9th january, as one of the witness said that she saw murderer in gym on 9th, 


.
SELECT *
FROM get_fit_now_member
WHERE membership_status = "gold" AND   person_id = "67318" 
#here I reconfirmed if the person has gold membeship status,The murderer might be JEREMY BoWERS.



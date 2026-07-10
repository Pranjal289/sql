-- between operator Used to select values within a range.
select name,population from country where population between 1000000 and 10000000;

-- in operator Used when you want to compare a column with multiple specific values.
select * from country where code in ("ind","usa","chn");

-- like operator Used to search for patterns in text.
select * from country where name like "%a%";

-- _ 
select * from city where name like 's%_';

-- get the city and the population where you have the letter e in the city name 

-- get the city and the population where the second last letter shoulf=d be b 

-- get the city and the population where the city name have the second chareter as a and the last second charecyter as r 

-- get the city and the population where you have double a in the city name 

-- get the city name and population the country name have the two letter e seperate with a charecter and it should be in the middle 

select name , population from city where name like '%e%';

select name,population from city where name like '%b_';

select name ,population from city where name like '_a%r_';

select name,population from city where name like '%aa%';

select name , population from city where name like "_%e_e%_";


-- concat It joins two or more words together. 
select concat(name,'',region)
from country;

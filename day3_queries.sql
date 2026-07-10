-- functions 
-- block of code , collections , of satements to perform certain task 

-- inbuilt function 
-- scaller function - applies on every row and retuen the output for everry row 

use world;
-- string functions 

--  concat 
select name,continent , concat_ws(' ', continent,'have',name,'country') from country;
-- substr
select name ,substr(name,-4) from country;
-- length
select name , char_length(name) from country;
-- replace
select name,replace(name,'a','@') from country;
-- trim
select trim('     hel          llll   ');
-- lpad,rpad
select name , lpad(name,6,'@')from country;

-- yyyy-mm-dd
-- date function

select curdate(),current_time(),current_timestamp();

select now(), adddate(now(),2),adddate(now(),interval 1 year),adddate(now(),interval 1 month);

select now(),year(now()), month(now()), extract(month from now()),extract(minute from now()),weekday(now());

select now() , date_format(now(),'year is %Y month is %M,weekday%W');

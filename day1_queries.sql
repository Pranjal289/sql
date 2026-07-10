-- get the ccountry code and name where the surface area of thr counrtry is greater thatn 1900

--  get the ccountry code and name ony for the country where the region is sothern europe 

-- get the ccountry code and name. where the country belong to africa and the region is central africa 

-- get the country name , continent and population where they belong to asisa or africa

-- get country name,region,population with 10% increase in population for the country whose indepence yer is after 1950  

  -- get all the values of the country where the country name and the local name is same 

select code,name from country where surfacearea>1900;

  select code , name from country where region="southern europe";

  select code,name from country where continent="africa" and region="central africa";

  select name,continent,population from country where continent in ("asia" or "africa");

  select name,region,population,population*0.10 as increasedpopulation from country where indepyear>1950;

  select*from country where name=localname;

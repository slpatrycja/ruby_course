
SELECT city.district, SUM(city.population)
from country
JOIN city ON city.countrycode = country.code
JOIN countrylanguage ON countrylanguage.countrycode = country.code
WHERE countrylanguage.language = 'Polish' AND countrylanguage.isofficial = 't'
GROUP BY city.district
ORDER BY SUM(city.population) DESC;


SELECT , city.district from city

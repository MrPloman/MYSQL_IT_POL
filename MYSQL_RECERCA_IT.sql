Select * from flights1;

Select Origin, AVG(DepDelay) AS Avg_DepDelay, AVG(ArrDelay) AS Avg_ArrDelay 
From Flights1 
Group by origin;

SELECT Origin, Year, Month, AVG(ArrDelay) AS AVG_ArrDelay, AVG(DepDelay) AS Avg_DepDelay 
FROM USAirlineFlights2.FLIGHTS1 
group by Origin, Year, Month;

SELECT airport, YEAR, Month, avg(DepDelay) as Avg_DepDelay, avg(ArrDelay) as Avg_ArrpDelay
FROM USAirlineFlights2.flights1
LEFT JOIN USAirlineFlights2.airports ON origin = iata
GROUP BY airport, year, Month;

SELECT COUNT(cancelled), uniquecarrier
FROM flights1 
WHERE cancelled > 0
GROUP BY uniquecarrier
ORDER BY count(cancelled) desc;

SELECT SUM(distance), tailnum
FROM flights1 
GROUP BY tailnum
ORDER BY sum(distance) desc
LIMIT 10;

SELECT UniqueCarrier, avg(ArrDelay)
FROM flights1
GROUP BY UniqueCarrier
HAVING avg(ArrDelay)>10;





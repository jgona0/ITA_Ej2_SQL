-- 7
SELECT UniqueCarrier, avg(ArrDelay) as avgDelay
FROM USAirlineFlights2.Flights
group by UniqueCarrier
having avgDelay > 10.0
order by 2 desc;

-- 6
SELECT TailNum, sum(Distance) 
FROM USAirlineFlights2.Flights
where length(TailNum) > 1 and TailNum != "#NAME?"
group by TailNum
order by 2 desc;

-- 5
SELECT UniqueCarrier, colYear, colMonth, sum(Cancelled) 
FROM USAirlineFlights2.Flights
group by UniqueCarrier, colYear, colMonth
order by 4 desc;

-- 4
SELECT a.City, colYear, colMonth, avg(ArrDelay) 
FROM USAirlineFlights2.Flights f, USAirlineFlights2.USAirports a
where f.Origin = a.IATA
group by Origin, colYear, colMonth
order by 1,2,3;

-- 3
SELECT Origin, colYear, colMonth, avg(ArrDelay) FROM USAirlineFlights2.Flights
group by Origin, colYear, colMonth
order by 1;

-- 2
SELECT origin, avg(ArrDelay) as prom_arribades, avg(DepDelay) as prom_sortides FROM USAirlineFlights2.Flights
group by origin;

-- 1
SELECT count(*) FROM USAirlineFlights2.Flights;

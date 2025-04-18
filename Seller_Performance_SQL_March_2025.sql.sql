-- 1. What are the first 10 rows of the data table? --
SELECT * FROM data LIMIT 10;

-- 2. Who are the top 5 performers based on the number of visits? --
SELECT FullName, `Sum of Visits`
FROM data
ORDER BY `Sum of Visits` DESC
LIMIT 5;

-- 3. What is the average rejection percentage across all records? --
SELECT AVG(`sum_percent_rejected`) AS avg_rejection
FROM data;

-- 4. Can you display the scheduled and net scheduled visits for each agent? --
SELECT FullName, `Sum of Schedule`, `Sum of Net_Schedule`
FROM data;

-- 5.What is the total number of visits made by each Team Leader (TL)? --
SELECT TL, SUM(`Sum of Visits`) AS total_visits
FROM data
GROUP BY TL;

-- 6. What is the average rejection percentage for each Sub-Team? --
SELECT `Sub-Team`, AVG(`sum_percent_rejected`) AS avg_rejected
FROM data
GROUP BY `Sub-Team`;

-- 7.What is the visit-to-schedule percentage for each agent?
SELECT FullName,
       ROUND((`Sum of Visits` / `Sum of Schedule`) * 100, 2) AS visit_schedule_percent
FROM data;

SELECT count(*) FROM hits_10m;
SELECT count(*) FROM hits_10m WHERE AdvEngineID != 0;
SELECT sum(AdvEngineID), count(*), avg(ResolutionWidth) FROM hits_10m;
SELECT sum(UserID) FROM hits_10m;
SELECT count(DISTINCT UserID) FROM hits_10m;
SELECT count(DISTINCT SearchPhrase) FROM hits_10m;
SELECT min(EventDate), max(EventDate) FROM hits_10m;
SELECT AdvEngineID, count(*) FROM hits_10m WHERE AdvEngineID != 0 GROUP BY AdvEngineID ORDER BY count(*) DESC;
SELECT RegionID, count(DISTINCT UserID) AS u FROM hits_10m GROUP BY RegionID ORDER BY u DESC LIMIT 10;
SELECT RegionID, sum(AdvEngineID), count(*) AS c, avg(ResolutionWidth), count(DISTINCT UserID) FROM hits_10m GROUP BY RegionID ORDER BY count(*) DESC LIMIT 10;
SELECT MobilePhoneModel, count(DISTINCT UserID) AS u FROM hits_10m WHERE MobilePhoneModel != '' GROUP BY MobilePhoneModel ORDER BY u DESC LIMIT 10;
SELECT MobilePhone, MobilePhoneModel, count(DISTINCT UserID) AS u FROM hits_10m WHERE MobilePhoneModel != '' GROUP BY MobilePhone, MobilePhoneModel ORDER BY u DESC LIMIT 10;
SELECT SearchPhrase, count(*) FROM hits_10m WHERE SearchPhrase != '' GROUP BY SearchPhrase ORDER BY count(*) DESC LIMIT 10;
SELECT SearchPhrase, count(DISTINCT UserID) AS u FROM hits_10m WHERE SearchPhrase != '' GROUP BY SearchPhrase ORDER BY u DESC LIMIT 10;
SELECT SearchEngineID, SearchPhrase, count(*) FROM hits_10m WHERE SearchPhrase != '' GROUP BY SearchEngineID, SearchPhrase ORDER BY count(*) DESC LIMIT 10;
SELECT UserID, count(*) FROM hits_10m GROUP BY UserID ORDER BY count(*) DESC LIMIT 10;
SELECT UserID, SearchPhrase, count(*) FROM hits_10m GROUP BY UserID, SearchPhrase ORDER BY count(*) DESC LIMIT 10;
SELECT UserID, SearchPhrase, count(*) FROM hits_10m GROUP BY UserID, SearchPhrase LIMIT 10;
SELECT UserID, Minute(EventTime) AS m, SearchPhrase, count(*) FROM hits_10m GROUP BY UserID, m, SearchPhrase ORDER BY count(*) DESC LIMIT 10;
SELECT UserID FROM hits_10m WHERE UserID = 123456789;
SELECT count(*) FROM hits_10m WHERE URL LIKE '%metrika%';
SELECT SearchPhrase, MAX(URL), count(*) FROM hits_10m WHERE URL LIKE '%metrika%' AND SearchPhrase != '' GROUP BY SearchPhrase ORDER BY count(*) DESC LIMIT 10;
SELECT SearchPhrase, MAX(URL), MAX(Title), count(*) AS c, count(DISTINCT UserID) FROM hits_10m WHERE Title LIKE '%Яндекс%' AND URL NOT LIKE '%.yandex.%' AND SearchPhrase != '' GROUP BY SearchPhrase ORDER BY count(*) DESC LIMIT 10;
SELECT * FROM hits_10m WHERE URL LIKE '%metrika%' ORDER BY EventTime LIMIT 10;
SELECT SearchPhrase FROM hits_10m WHERE SearchPhrase != '' ORDER BY EventTime LIMIT 10;
SELECT SearchPhrase FROM hits_10m WHERE SearchPhrase != '' ORDER BY SearchPhrase LIMIT 10;
SELECT SearchPhrase FROM hits_10m WHERE SearchPhrase != '' ORDER BY EventTime, SearchPhrase LIMIT 10;
SELECT CounterID, avg(length(URL)) AS l, count(*) FROM hits_10m WHERE URL != '' GROUP BY CounterID HAVING count(*) > 100000 ORDER BY l DESC LIMIT 25;
SELECT SUBSTRING(SUBSTRING(Referer, POSITION('//' IN Referer) + 2), 1, GREATEST(0, POSITION('/' IN SUBSTRING(Referer, POSITION('//' IN Referer) + 2)) - 1)) AS k,       avg(length(Referer)) AS l, count(*) AS c, MAX(Referer) FROM hits_10m WHERE Referer != '' GROUP BY k HAVING count(*) > 100000 ORDER BY l DESC LIMIT 25;
SELECT sum(ResolutionWidth), sum(ResolutionWidth + 1), sum(ResolutionWidth + 2), sum(ResolutionWidth + 3), sum(ResolutionWidth + 4), sum(ResolutionWidth + 5), sum(ResolutionWidth + 6), sum(ResolutionWidth + 7), sum(ResolutionWidth + 8), sum(ResolutionWidth + 9), sum(ResolutionWidth + 10), sum(ResolutionWidth + 11), sum(ResolutionWidth + 12), sum(ResolutionWidth + 13), sum(ResolutionWidth + 14), sum(ResolutionWidth + 15), sum(ResolutionWidth + 16), sum(ResolutionWidth + 17), sum(ResolutionWidth + 18), sum(ResolutionWidth + 19), sum(ResolutionWidth + 20), sum(ResolutionWidth + 21), sum(ResolutionWidth + 22), sum(ResolutionWidth + 23), sum(ResolutionWidth + 24), sum(ResolutionWidth + 25), sum(ResolutionWidth + 26), sum(ResolutionWidth + 27), sum(ResolutionWidth + 28), sum(ResolutionWidth + 29), sum(ResolutionWidth + 30), sum(ResolutionWidth + 31), sum(ResolutionWidth + 32), sum(ResolutionWidth + 33), sum(ResolutionWidth + 34), sum(ResolutionWidth + 35), sum(ResolutionWidth + 36), sum(ResolutionWidth + 37), sum(ResolutionWidth + 38), sum(ResolutionWidth + 39), sum(ResolutionWidth + 40), sum(ResolutionWidth + 41), sum(ResolutionWidth + 42), sum(ResolutionWidth + 43), sum(ResolutionWidth + 44), sum(ResolutionWidth + 45), sum(ResolutionWidth + 46), sum(ResolutionWidth + 47), sum(ResolutionWidth + 48), sum(ResolutionWidth + 49), sum(ResolutionWidth + 50), sum(ResolutionWidth + 51), sum(ResolutionWidth + 52), sum(ResolutionWidth + 53), sum(ResolutionWidth + 54), sum(ResolutionWidth + 55), sum(ResolutionWidth + 56), sum(ResolutionWidth + 57), sum(ResolutionWidth + 58), sum(ResolutionWidth + 59), sum(ResolutionWidth + 60), sum(ResolutionWidth + 61), sum(ResolutionWidth + 62), sum(ResolutionWidth + 63), sum(ResolutionWidth + 64), sum(ResolutionWidth + 65), sum(ResolutionWidth + 66), sum(ResolutionWidth + 67), sum(ResolutionWidth + 68), sum(ResolutionWidth + 69), sum(ResolutionWidth + 70), sum(ResolutionWidth + 71), sum(ResolutionWidth + 72), sum(ResolutionWidth + 73), sum(ResolutionWidth + 74), sum(ResolutionWidth + 75), sum(ResolutionWidth + 76), sum(ResolutionWidth + 77), sum(ResolutionWidth + 78), sum(ResolutionWidth + 79), sum(ResolutionWidth + 80), sum(ResolutionWidth + 81), sum(ResolutionWidth + 82), sum(ResolutionWidth + 83), sum(ResolutionWidth + 84), sum(ResolutionWidth + 85), sum(ResolutionWidth + 86), sum(ResolutionWidth + 87), sum(ResolutionWidth + 88), sum(ResolutionWidth + 89) FROM hits_10m;
SELECT SearchEngineID, ClientIP, count(*) AS c, sum(Refresh), avg(ResolutionWidth) FROM hits_10m WHERE SearchPhrase != '' GROUP BY SearchEngineID, ClientIP ORDER BY count(*) DESC LIMIT 10;
SELECT WatchID, ClientIP, count(*) AS c, sum(Refresh), avg(ResolutionWidth) FROM hits_10m WHERE SearchPhrase != '' GROUP BY WatchID, ClientIP ORDER BY count(*) DESC LIMIT 10;
SELECT WatchID, ClientIP, count(*) AS c, sum(Refresh), avg(ResolutionWidth) FROM hits_10m GROUP BY WatchID, ClientIP ORDER BY count(*) DESC LIMIT 10;
SELECT URL, count(*) FROM hits_10m GROUP BY URL ORDER BY count(*) DESC LIMIT 10;
SELECT 1, URL, count(*) FROM hits_10m GROUP BY 1, URL ORDER BY count(*) DESC LIMIT 10;
SELECT ClientIP, ClientIP - 1, ClientIP - 2, ClientIP - 3, count(*) FROM hits_10m GROUP BY ClientIP, ClientIP - 1, ClientIP - 2, ClientIP - 3 ORDER BY count(*) DESC LIMIT 10;
SELECT URL, count(*) AS PageViews FROM hits_10m WHERE CounterID = 62 AND EventDate >= DATE('2013-07-01') AND EventDate <= DATE('2013-07-31') AND NOT DontCountHits AND NOT Refresh AND URL != '' GROUP BY URL ORDER BY PageViews DESC LIMIT 10;
SELECT Title, count(*) AS PageViews FROM hits_10m WHERE CounterID = 62 AND EventDate >= DATE('2013-07-01') AND EventDate <= DATE('2013-07-31') AND NOT DontCountHits AND NOT Refresh AND Title != '' GROUP BY Title ORDER BY PageViews DESC LIMIT 10;
SELECT URL, count(*) AS PageViews FROM hits_10m WHERE CounterID = 62 AND EventDate >= DATE('2013-07-01') AND EventDate <= DATE('2013-07-31') AND NOT Refresh AND IsLink AND NOT IsDownload GROUP BY URL ORDER BY PageViews DESC LIMIT 1000;
SELECT TraficSourceID, SearchEngineID, AdvEngineID, CASE WHEN SearchEngineID = 0 AND AdvEngineID = 0 THEN  Referer ELSE '' END AS Src, URL AS Dst, count(*) AS PageViews FROM hits_10m WHERE CounterID = 62 AND EventDate >= DATE('2013-07-01') AND EventDate <= DATE('2013-07-31') AND NOT Refresh GROUP BY TraficSourceID, SearchEngineID, AdvEngineID, Src, Dst ORDER BY PageViews DESC LIMIT 1000; 
SELECT URLHash, EventDate, count(*) AS PageViews FROM hits_10m WHERE CounterID = 62 AND EventDate >= DATE('2013-07-01') AND EventDate <= DATE('2013-07-31') AND NOT Refresh AND TraficSourceID IN (-1, 6) AND RefererHash =  6202628419148573758  GROUP BY URLHash, EventDate ORDER BY PageViews DESC LIMIT 100000; 
SELECT WindowClientWidth, WindowClientHeight, count(*) AS PageViews FROM hits_10m WHERE CounterID = 62 AND EventDate >= DATE('2013-07-01') AND EventDate <= DATE('2013-07-31') AND NOT Refresh AND NOT DontCountHits AND URLHash = 6202628419148573758 GROUP BY WindowClientWidth, WindowClientHeight ORDER BY PageViews DESC LIMIT 10000; 
SELECT EventTime - INTERVAL SECOND(EventTime) SECOND AS Minute, count(*) AS PageViews FROM hits_10m WHERE CounterID = 62 AND EventDate >= DATE('2013-07-01') AND EventDate <= DATE('2013-07-02') AND NOT Refresh AND NOT DontCountHits GROUP BY Minute ORDER BY Minute;

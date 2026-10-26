--PART A:
--1000 records in my database
--the number of records would affect it by making it slower the more records you add. Less is faster more is slower

PART B:
--It did not use a seq scan
--doesnt say as it used bitmap heap scan
--1.659ms

PART C:
--Postgre used the bitmap index scan
--It was faster than no index scan
--It might not use a index scan if postgre detects that it can be done faster without it

PART D: 
--Disabling seq scan did not change how it executed as it still used bitmap scan yet it was a full second faster than it being enabled
--Postgre might perfer seq scan as before it can just be faster and choose to use it even when disabled somehow

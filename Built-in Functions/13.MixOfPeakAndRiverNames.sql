SELECT PeakName,RiverName,
LOWER(CONCAT(PeakName,SUBSTRING(RiverName,2,LEN(RiverName)-1))) as Mix
FROM Peaks,Rivers
WHERE RIGHT(PeakName,1)=LEFT(RiverNAME,1)
ORDER BY Mix
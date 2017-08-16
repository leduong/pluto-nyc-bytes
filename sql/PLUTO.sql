select max(length("Borough")) from public."PLUTO";
select DISTINCT("Borough") from public."PLUTO";
select COUNT(*) from public."PLUTO";

SELECT id, "Borough", 
       "Block", 
       "Lot", 
       "Address", 
       "BBL", 
       "XCoord", 
       "YCoord", 
       "Latitude",
       "Longitude" 
FROM public."PLUTO" WHERE 1 = 1
AND "Block" = '1' 
AND "Lot" = '10'
LIMIT 100;

SELECT "BBL" FROM public."PLUTO"
GROUP BY "BBL" 
HAVING COUNT("BBL") > 1 

SELECT id, "Borough", 
"Block", 
"Lot", "CD", "CT2010", "CB2010", "SchoolDist", 
       "Council", "ZipCode", "FireComp", "PolicePrct", "HealthArea", 
       "SanitBoro", "SanitDistrict", "SanitSub", "Address", "ZoneDist1", 
       "ZoneDist2", "ZoneDist3", "ZoneDist4", "Overlay1", "Overlay2", 
       "SPDist1", "SPDist2", "SPDist3", "LtdHeight", "SplitZone", "BldgClass", 
       "LandUse", "Easements", "OwnerType", "OwnerName", "LotArea", 
       "BldgArea", "ComArea", "ResArea", "OfficeArea", "RetailArea", 
       "GarageArea", "StrgeArea", "FactryArea", "OtherArea", "AreaSource", 
       "NumBldgs", "NumFloors", "UnitsRes", "UnitsTotal", "LotFront", 
       "LotDepth", "BldgFront", "BldgDepth", "Ext", "ProxCode", "IrrLotCode", 
       "LotType", "BsmtCode", "AssessLand", "AssessTot", "ExemptLand", 
       "ExemptTot", "YearBuilt", "YearAlter1", "YearAlter2", "HistDist", 
       "Landmark", "BuiltFAR", "ResidFAR", "CommFAR", "FacilFAR", "BoroCode", 
       "BBL", "CondoNo", "Tract2010", "XCoord", "YCoord", "ZoneMap", 
       "ZMCode", "Sanborn", "TaxMap", "EDesigNum", "APPBBL", "APPDate",
       "PLUTOMapID", "Version",
       "Latitude","Longitude" 
  FROM public."PLUTO"
  WHERE 1 = 1
--  AND "Block" = '2178' 
--  AND "Lot" = '3'
  LIMIT 100;


/* TSQL ************************************************************/
 
SELECT Count(*) FROM [dbo].[Landmark] -- 46064
SELECT Count(*) FROM [dbo].[PLUTO];  -- 834120
 
SELECT * FROM [dbo].[PLUTO];

SELECT Count(*) FROM [dbo].[Landmark] l
LEFT OUTER JOIN [dbo].[PLUTO] p ON l.BBL = p.BBL
WHERE p.BBL IS NULL -- 1014

SELECT TOP 1000 * FROM [dbo].[Landmark] l
LEFT OUTER JOIN [dbo].[PLUTO] p ON l.BBL = p.BBL
WHERE p.BBL IS NULL -- 1014


SELECT L.LP_NUMBER, COUNT(*) FROM [dbo].[Landmark] l
GROUP BY L.LP_NUMBER
ORDER BY COUNT(*) DESC



-- Remove Extra Records
DELETE p FROM [dbo].[PLUTO] p 
  LEFT JOIN [dbo].[Landmark] l ON l.BBL = p.BBL 
      WHERE l.BBL IS NULL

-- Clean Empty Strings - Fix on CSV Import 
UPDATE [dbo].[PLUTO] SET [ZoneDist1] = NULL WHERE [ZoneDist1] = ''
UPDATE [dbo].[PLUTO] SET [ZoneDist2] = NULL WHERE [ZoneDist2] = ''
UPDATE [dbo].[PLUTO] SET [ZoneDist3] = NULL WHERE [ZoneDist3] = ''
UPDATE [dbo].[PLUTO] SET [ZoneDist4] = NULL WHERE [ZoneDist4] = ''
UPDATE [dbo].[PLUTO] SET [Overlay1] = NULL WHERE [Overlay1] = ''
UPDATE [dbo].[PLUTO] SET [Overlay2] = NULL WHERE [Overlay2]  = ''
UPDATE [dbo].[PLUTO] SET [SPDist1] = NULL WHERE [SPDist1] = ''
UPDATE [dbo].[PLUTO] SET [SPDist2] = NULL WHERE [SPDist2] = ''
UPDATE [dbo].[PLUTO] SET [SPDist3] = NULL WHERE [SPDist3] = ''
UPDATE [dbo].[PLUTO] SET [LtdHeight] = NULL WHERE [LtdHeight] = ''
UPDATE [dbo].[PLUTO] SET [OwnerType] = NULL WHERE [OwnerType] = ''
UPDATE [dbo].[PLUTO] SET [Ext] = NULL WHERE [Ext] = ''
UPDATE [dbo].[PLUTO] SET [HistDist] = NULL WHERE [HistDist] = ''
UPDATE [dbo].[PLUTO] SET [Landmark] = NULL WHERE [Landmark] = ''
UPDATE [dbo].[PLUTO] SET [EDesigNum] = NULL WHERE [EDesigNum] = ''
UPDATE [dbo].[PLUTO] SET [APPDate] = NULL WHERE [APPDate] = ''
UPDATE [dbo].[PLUTO] SET [SanitSub] = NULL WHERE [SanitSub] = ''
UPDATE [dbo].[PLUTO] SET [ZMCode] = NULL WHERE [ZMCode] = ''



USE [master]
GO  

DECLARE @kill varchar(8000) = '';  
SELECT @kill = @kill + 'kill ' + CONVERT(varchar(5), session_id) + ';'  
FROM sys.dm_exec_sessions
WHERE database_id  = db_id('NycLandmarks')

EXEC(@kill);

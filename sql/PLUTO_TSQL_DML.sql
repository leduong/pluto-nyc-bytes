USE [NycLandmarks]
GO

SET ANSI_NULLS ON
GO

TRUNCATE TABLE [dbo].[PLUTO]

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PLUTO](
  [Id] [int] IDENTITY(1,1) NOT NULL,
  [Borough] [nvarchar](2) NOT NULL,
  [Block] [int] NOT NULL,
  [Lot] [int]  NOT NULL,
  [CD]  [int] ,
  [CT2010]  [nvarchar](7),
  [CB2010]  [nvarchar](5),
  [SchoolDist]  [nvarchar](2),
  [Council]   [int],
  [ZipCode]  [nvarchar](5),
  [FireComp]  [nvarchar](4),
  [PolicePrct]   [int] ,
  [HealthArea]   [int] ,
  [SanitBoro]   [int] ,
  [SanitDistrict] [int] ,
  [SanitSub]  [nvarchar](2),
  [Address]  [nvarchar](28),
  [ZoneDist1]  [nvarchar](9),
  [ZoneDist2]  [nvarchar](9),
  [ZoneDist3]  [nvarchar](9),
  [ZoneDist4]  [nvarchar](9),
  [Overlay1]  [nvarchar](4),
  [Overlay2]  [nvarchar](4),
  [SPDist1]  [nvarchar](6),
  [SPDist2]  [nvarchar](6),
  [SPDist3]  [nvarchar](6),
  [LtdHeight]  [nvarchar](5),
  [SplitZone]  [nvarchar](1),
  [BldgClass]  [nvarchar](2),
  [LandUse]  [nvarchar](2),
  [Easements]   [int] ,
  [OwnerType]  [nvarchar](1),
  [OwnerName]  [nvarchar](21),
  [LotArea]   [int] ,
  [BldgArea]   [int] ,
  [ComArea]   [int] ,
  [ResArea]   [int] ,
  [OfficeArea]   [int] ,
  [RetailArea]   [int] ,
  [GarageArea]   [int] ,
  [StrgeArea]   [int] ,
  [FactryArea]   [int] ,
  [OtherArea]   [int] ,
  [AreaSource]  [nvarchar](1),
  [NumBldgs]   [int] ,
  [NumFloors] [decimal](6, 2),
  [UnitsRes]   [int] ,
  [UnitsTotal]   [int] ,
  [LotFront] [decimal](7, 2),
  [LotDepth] [decimal](7, 2),
  [BldgFront] [decimal](7, 2),
  [BldgDepth] [decimal](7, 2),
  [Ext]  [nvarchar](2),
  [ProxCode]  [nvarchar](1),
  [IrrLotCode]  [nvarchar](1),
  [LotType]  [nvarchar](1),
  [BsmtCode]  [nvarchar](1),
  [AssessLand] [decimal](13, 2),
  [AssessTot] [decimal](13, 2),
  [ExemptLand] [decimal](13, 2),
  [ExemptTot] [decimal](13, 2),
  [YearBuilt]   [int] ,
  [YearAlter1]   [int] ,
  [YearAlter2]   [int] ,
  [HistDist]character(40),
  [Landmark]character(35),
  [BuiltFAR] [decimal](7, 2),
  [ResidFAR] [decimal](7, 2),
  [CommFAR] [decimal](7, 2),
  [FacilFAR] [decimal](7, 2),
  [BoroCode]   [int] ,
  [BBL] [decimal](12, 2),
  [CondoNo]   [int] ,
  [Tract2010]  [nvarchar](6),
  [XCoord]   [int] ,
  [YCoord]   [int] ,
  [ZoneMap]character(3),
  [ZMCode]  [nvarchar](1),
  [Sanborn]   [nvarchar](8), 
  [TaxMap]  [nvarchar](5),
  [EDesigNum]  [nvarchar](5),
  [APPBBL] [decimal](12, 2),
  [APPDate]  [nvarchar](10),
  [PLUTOMapID]   [int] ,
  [Version]  [nvarchar](6),
  [Latitude] [decimal](9, 6),
  [Longitude] [decimal](9, 6)
CONSTRAINT [PK_PLUTO] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO





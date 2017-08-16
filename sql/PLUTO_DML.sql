-- Table: public."PLUTO"

-- DROP TABLE public."PLUTO";

-- DROP SEQUENCE public."PLUTO_id_seq";

CREATE SEQUENCE public."PLUTO_id_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE public."PLUTO_id_seq"
  OWNER TO postgres;


CREATE TABLE public."PLUTO"
(
  id integer NOT NULL DEFAULT nextval('"PLUTO_id_seq"'::regclass),
  "Borough" character(2) NOT NULL,
  "Block" smallint,
  "Lot" smallint,
  "CD" smallint,
  "CT2010" character(7),
  "CB2010" character(5),
  "SchoolDist" character(2),
  "Council" smallint,
  "ZipCode" character(5),
  "FireComp" character(4),
  "PolicePrct" smallint,
  "HealthArea" smallint,
  "SanitBoro" smallint,
  "SanitDistrict" smallint,
  "SanitSub" character(2),
  "Address" character(28),
  "ZoneDist1" character(9),
  "ZoneDist2" character(9),
  "ZoneDist3" character(9),
  "ZoneDist4" character(9),
  "Overlay1" character(4),
  "Overlay2" character(4),
  "SPDist1" character(6),
  "SPDist2" character(6),
  "SPDist3" character(6),
  "LtdHeight" character(5),
  "SplitZone" character(1),
  "BldgClass" character(2),
  "LandUse" character(2),
  "Easements" smallint,
  "OwnerType" character(1),
  "OwnerName" character(21),
  "LotArea" integer,
  "BldgArea" integer,
  "ComArea" integer,
  "ResArea" integer,
  "OfficeArea" integer,
  "RetailArea" integer,
  "GarageArea" integer,
  "StrgeArea" integer,
  "FactryArea" integer,
  "OtherArea" integer,
  "AreaSource" character(1),
  "NumBldgs" smallint,
  "NumFloors" numeric(6, 2),
  "UnitsRes" smallint,
  "UnitsTotal" smallint,
  "LotFront" numeric(7, 2),
  "LotDepth" numeric(7, 2),
  "BldgFront" numeric(7, 2),
  "BldgDepth" numeric(7, 2),
  "Ext" character(2),
  "ProxCode" character(1),
  "IrrLotCode" character(1),
  "LotType" character(1),
  "BsmtCode" character(1),
  "AssessLand" numeric(13, 2),
  "AssessTot" numeric(13, 2),
  "ExemptLand" numeric(13, 2),
  "ExemptTot" numeric(13, 2),
  "YearBuilt" smallint,
  "YearAlter1" smallint,
  "YearAlter2" smallint,
  "HistDist" character(40),
  "Landmark" character(35),
  "BuiltFAR" numeric(7, 2),
  "ResidFAR" numeric(7, 2),
  "CommFAR" numeric(7, 2),
  "FacilFAR" numeric(7, 2),
  "BoroCode" smallint,
  "BBL" numeric(12, 2),
  "CondoNo" smallint,
  "Tract2010" character(6),
  "XCoord" integer,
  "YCoord" integer,
  "ZoneMap" character(3),
  "ZMCode" character(1),
  "Sanborn" character(8),
  "TaxMap" character(5),
  "EDesigNum" character(5),
  "APPBBL" numeric(12, 2),
  "APPDate" character(10),
  "PLUTOMapID" smallint,
  "Version" character(6),
  "Latitude" numeric(9, 6),
  "Longitude" numeric(9, 6),
  CONSTRAINT "PLUTO_pkey" PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);


ALTER TABLE public."PLUTO"
  OWNER TO postgres;

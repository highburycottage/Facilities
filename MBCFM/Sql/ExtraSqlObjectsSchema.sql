﻿USE [FMHelpdeskSQLV4]
GO

CREATE TABLE [dbo].[WebUsers](
	[UserName] [varchar](50) NOT NULL,
	[Password] [varbinary](max) NOT NULL,
	[FullName] [varchar](150) NOT NULL,
	[Salt] [varbinary](max) NOT NULL,
	[UserType] [varchar](50) NULL,
 CONSTRAINT [PK_WebUsers] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

-- Add siteNotes to Reactive Table
BEGIN TRANSACTION
GO
ALTER TABLE dbo.reactiveCallOut ADD
	siteNotes ntext NULL
GO
ALTER TABLE dbo.reactiveCallOut SET (LOCK_ESCALATION = TABLE)
GO
COMMIT


-- create WebJobsJoined

USE [FMHelpdeskSQLV4]
GO

/****** Object:  View [dbo].[WebJobsJoined]    Script Date: 17/12/2014 10:40:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[WebJobs]
AS
SELECT        
J.[MBC Job No], 
j.[Client Job No], 
j.priority, 
j.siteName as ClientName, 
j.currentStatus, 
j.ordertype, 
j.SiteTelNo as SitePhoneNo,
j.problem, 
j.subContractor as UserName, 
j.note as Notes, 
cast(j.timeOnSite as nvarchar(50)) as ArrivalTime, 
cast(j.timeOffSite as nvarchar(50)) as DepartureTime, 
j.materials as CostOfMaterials,
j.Enteredby,
j.siteName,
j.siteAddress,
j.siteTown,
j.siteCounty,
j.siteNotes
, 'FMIncidentsFM261' as tableName
FROM            dbo.FMIncidentsFM261 as j

union all

SELECT
J.[MBC Job No], 
j.[Client Job No], 
j.priority, 
j.JobAddress as ClientName,
j.currentStatus, 
j.ordertype, 
j.Sitephone as SitePhoneNo,
j.problem, 
j.subContractor as UserName, 
j.note as Notes, 
j.timeOnSite as ArrivalTime, 
j.timeOffSite as DepartureTime, 
j.materials as CostOfMaterials,
j.Enteredby,
j.siteName,
j.siteAddress,
j.siteTown,
j.siteCounty,
j.siteNotes, 'reactiveCallOut' as tableName

FROM             dbo.reactiveCallOut as j
                        

GO


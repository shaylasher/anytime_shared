CREATE TABLE [dbo].[sync_metadata]
(
	[change_version] INT NOT NULL PRIMARY KEY, 
	[change_datetime] DATETIME2(3) NOT NULL
)

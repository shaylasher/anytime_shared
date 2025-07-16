CREATE PROCEDURE [dbo].[spSync_Metadata_Get]
AS
begin
	select *
	from dbo.[sync_metadata]
	/* retrieves change_version and change_datetime */ 
	/* there will always be one row */
end

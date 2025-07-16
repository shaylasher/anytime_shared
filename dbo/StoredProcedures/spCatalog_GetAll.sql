CREATE PROCEDURE [dbo].[spCatalog_GetAll]
AS
begin
	select *
	from dbo.[pricing_catalog];
end
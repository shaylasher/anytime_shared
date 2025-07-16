CREATE PROCEDURE [dbo].[spCatalog_Get]
	@Id int
AS
begin
	select *
	from dbo.[pricing_catalog]
	where Id = @Id;
end

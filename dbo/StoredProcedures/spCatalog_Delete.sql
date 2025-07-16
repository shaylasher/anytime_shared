CREATE PROCEDURE [dbo].[spCatalog_Delete]
	@Id int
AS
begin
	delete 
	from dbo.[pricing_catalog]
	where Id = @Id;
end

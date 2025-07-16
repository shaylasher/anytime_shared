CREATE PROCEDURE [dbo].[spPages_GetAll]
AS
begin
	select *
	from dbo.[customers_pages];
end

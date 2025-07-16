CREATE PROCEDURE [dbo].[spCustomers_GetAll]
AS
begin
	select *
	from dbo.[customers];
end

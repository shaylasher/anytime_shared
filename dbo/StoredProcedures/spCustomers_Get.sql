CREATE PROCEDURE [dbo].[spCustomers_Get]
	@Id int
AS
begin
	select *
	from dbo.[customers]
	where Id = @Id;
end

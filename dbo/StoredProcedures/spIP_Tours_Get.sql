CREATE PROCEDURE [dbo].[spIP_Tours_Get]
	@id int,
	@client_id int,
	@start_date DATETIME
AS
begin
	select *
	from dbo.[customers_ip_tours]
	where id = @id AND client_id = @client_id AND start_date = @start_date;
	
end

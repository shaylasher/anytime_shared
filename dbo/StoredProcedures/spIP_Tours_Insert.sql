CREATE PROCEDURE [dbo].[spIP_Tours_Insert]
	@id INT OUTPUT, 
    @client_id INT, 
    @ac NVARCHAR(255), 
    @start_date DATETIME,
    @end_date DATETIME
AS
begin 
    insert into dbo.[customers_ip_tours] (id, client_id, ac, start_date, end_date)
    
    values (@id, @client_id, @ac, @start_date, @end_date);
end

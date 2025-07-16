CREATE PROCEDURE [dbo].[spIP_Tours_Update]
	@id INT, 
    @client_id INT, 
    @ac NVARCHAR(255),
    @start_date DATETIME, 
    @end_date DATETIME,
    @meta_update DATETIME
AS
begin 
    update dbo.[customers_ip_tours] 
    set ac = @ac, end_date = @end_date, meta_update = @meta_update
    where id = @id AND client_id = @client_id AND start_date = @start_date;
end
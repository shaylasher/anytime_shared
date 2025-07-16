CREATE PROCEDURE [dbo].[spInvoices_Insert]
	@id INT OUTPUT, 
    @client_id INT, 
    @description NVARCHAR(200), 
    @unit_price MONEY,
    @quantity INT
AS
begin 
    insert into dbo.[customers_invoices] (id, client_id, description, unit_price, quantity)
    
    values (@id, @client_id, @description, @unit_price, @quantity);
end

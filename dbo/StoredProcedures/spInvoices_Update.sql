CREATE PROCEDURE [dbo].[spInvoices_Update]
	@id INT, 
    @client_id INT, 
    @description NVARCHAR(200),
    @unit_price MONEY,
    @quantity INT,
    @meta_update DATETIME2(3)
AS
begin 
    update dbo.[customers_invoices] 
    set description = @description, unit_price = @unit_price, quantity = @quantity, meta_update = @meta_update
    where id = @id AND client_id = @client_id;
end

CREATE PROCEDURE [dbo].[spCatalog_Insert]
	@id INT OUTPUT, 
	@description NVARCHAR(200), 
	@default_unit_price MONEY, 
	@default_quantity INT
AS
begin
	insert into [dbo].[pricing_catalog] 
		(id, [description], default_unit_price, default_quantity)
	VALUES 
		(@description, @default_unit_price, @default_quantity);
end

CREATE PROCEDURE [dbo].[spCatalog_Update]
	@id INT,
	@description NVARCHAR(200),
	@default_unit_price MONEY,
	@default_quantity INT
AS
begin
	update [dbo].[pricing_catalog]
	set 
		[description] = @description,
		default_unit_price = @default_unit_price,
		default_quantity = @default_quantity
	where id = @id;
end
CREATE PROCEDURE [dbo].[spPages_Get]
	@id int,
	@client_id int,
	@form_type NVARCHAR(255)
AS
begin
	select *
	from dbo.[customers_pages]
	where id = @id AND client_id = @client_id AND form_type = @form_type;
	
end

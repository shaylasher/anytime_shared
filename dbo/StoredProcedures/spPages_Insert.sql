CREATE PROCEDURE [dbo].[spPages_Insert]
	@id INT OUTPUT, 
    @client_id INT, 
    @form_type NVARCHAR(255), 
    @pages INT,
    @records INT
AS
begin 
    insert into dbo.[customers_pages] (id, client_id, form_type, pages, records)
    
    values (@id, @client_id, @form_type, @pages, @records);
end
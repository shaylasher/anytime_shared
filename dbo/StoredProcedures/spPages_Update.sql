CREATE PROCEDURE [dbo].[spPages_Update]
	@id INT, 
    @client_id INT, 
    @form_type NVARCHAR(255),
    @pages INT,
    @records INT, 
    @meta_update DATETIME
AS
begin 
    update dbo.[customers_pages] 
    set pages = @pages, records = @records, meta_update = @meta_update
    where id = @id AND client_id = @client_id AND form_type = @form_type;
end

CREATE PROCEDURE [dbo].[spInvoices_Get]
	@id int,
	@client_id int
AS
begin
	select *
	from dbo.[customers_invoices]
	where id = @id AND client_id = @client_id;
	/* how many invoices will one customer have? */
end

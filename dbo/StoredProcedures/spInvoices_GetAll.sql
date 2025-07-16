CREATE PROCEDURE [dbo].[spInvoices_GetAll]
AS 
begin
	select *
	from dbo.[customers_invoices];
end

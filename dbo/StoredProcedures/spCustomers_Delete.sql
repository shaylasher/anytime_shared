CREATE PROCEDURE [dbo].[spCustomers_Delete]
	@Id int
AS
begin
	delete 
	from dbo.[customers]
	where Id = @Id;
end
/* dont typically delete records, a better method would be to set a flag to indicate the record is no longer active, but this is a simple example of a delete procedure. */
CREATE PROCEDURE [dbo].[spInterviews_Get]
	@id int,
	@client_id int
AS
begin
	select *
	from dbo.[customers_interviews]
	where id = @id AND client_id = @client_id;
	/* how many interviews will one customer have? */
end

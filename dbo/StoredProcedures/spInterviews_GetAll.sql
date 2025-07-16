CREATE PROCEDURE [dbo].[spInterviews_GetAll]
AS
begin
	select *
	from dbo.[customers_interviews];
end

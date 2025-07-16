CREATE PROCEDURE [dbo].[spInterviews_Insert]
	@id INT OUTPUT, 
    @client_id INT, 
    @interview_date DATE, 
    @interview_airline NVARCHAR(25)
AS
begin 
    insert into dbo.[customers_interviews] (id, client_id, interview_date, interview_airline)
    
    values (@id, @client_id, @interview_date, @interview_airline);
end

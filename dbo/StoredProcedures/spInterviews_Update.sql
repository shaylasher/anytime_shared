CREATE PROCEDURE [dbo].[spInterviews_Update]
	@id INT, 
    @client_id INT, 
    @interview_date DATE,
    @interview_airline NVARCHAR(25),
    @meta_update DATETIME2(7)
AS
begin 
    update dbo.[customers_interviews] 
    set interview_date = @interview_date, interview_airline = @interview_airline, meta_update = @meta_update
    where id = @id AND client_id = @client_id;
end

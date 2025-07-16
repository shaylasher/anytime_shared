CREATE PROCEDURE [dbo].[spSync_Metadata_Update] 
AS
begin 
    update dbo.[sync_metadata] 
    set change_version = change_version + 1, 
        change_datetime = GETDATE() 
end

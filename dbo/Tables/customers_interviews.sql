CREATE TABLE [dbo].[customers_interviews] (
    [id]                INT            IDENTITY (1, 1) NOT NULL,
    [client_id]         INT            NULL,
    [interview_date]    DATETIME       NULL,
    [interview_airline] NVARCHAR (255) NULL,
    [meta_update]       DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
ALTER TABLE [dbo].[customers_interviews] ENABLE CHANGE_TRACKING WITH (TRACK_COLUMNS_UPDATED = ON);


GO
CREATE TRIGGER dbo.trg_customers_interviews
ON dbo.customers_interviews
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE t
    SET meta_update = GETDATE()
    FROM dbo.customers_interviews t
    INNER JOIN inserted i ON t.ID = i.ID; -- Replace ID with the primary key column
END;
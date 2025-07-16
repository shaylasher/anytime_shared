CREATE TABLE [dbo].[customers_pages] (
    [id]          INT            IDENTITY (1, 1) NOT NULL,
    [client_id]   INT            NULL,
    [form_type]   NVARCHAR (255) NULL,
    [pages]       INT            NULL,
    [records]     INT            NULL,
    [meta_update] DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
ALTER TABLE [dbo].[customers_pages] ENABLE CHANGE_TRACKING WITH (TRACK_COLUMNS_UPDATED = ON);


GO
CREATE TRIGGER dbo.trg_customers_pages
ON dbo.customers_pages
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE t
    SET meta_update = GETDATE()
    FROM dbo.customers_pages t
    INNER JOIN inserted i ON t.ID = i.ID; -- Replace ID with the primary key column
END;

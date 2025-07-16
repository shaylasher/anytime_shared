CREATE TABLE [dbo].[customers_ip_tours] (
    [id]          INT            IDENTITY (1, 1) NOT NULL,
    [client_id]   INT            NULL,
    [ac]          NVARCHAR (255) NULL,
    [start_date]  DATETIME       NULL,
    [end_date]    DATETIME       NULL,
    [meta_update] DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
ALTER TABLE [dbo].[customers_ip_tours] ENABLE CHANGE_TRACKING WITH (TRACK_COLUMNS_UPDATED = ON);


GO
CREATE TRIGGER dbo.trg_customers_ip_tours
ON dbo.customers_ip_tours
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE t
    SET meta_update = GETDATE()
    FROM dbo.customers_ip_tours t
    INNER JOIN inserted i ON t.ID = i.ID; -- Replace ID with the primary key column
END;

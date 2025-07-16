CREATE TABLE [dbo].[pricing_catalog] (
    [id]                 INT            IDENTITY (1, 1) NOT NULL,
    [description]        NVARCHAR (200) NULL,
    [default_unit_price] MONEY          NOT NULL,
    [default_quantity]   INT            NOT NULL,
    [meta_update]        DATETIME2 (3)  NULL,
    CONSTRAINT [PK_invoicing] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
ALTER TABLE [dbo].[pricing_catalog] ENABLE CHANGE_TRACKING WITH (TRACK_COLUMNS_UPDATED = ON);


GO
CREATE TRIGGER dbo.trg_pricing_catalog
ON dbo.pricing_catalog
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE t
    SET meta_update = GETDATE()
    FROM dbo.pricing_catalog t
    INNER JOIN inserted i ON t.ID = i.ID; -- Replace ID with the primary key column
END;
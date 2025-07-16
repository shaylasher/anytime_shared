CREATE TABLE [dbo].[customers_invoices]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [client_id] INT NOT NULL,
	[description] NVARCHAR(200) NOT NULL,
	[unit_price] MONEY NOT NULL,
	[quantity] INT NOT NULL,
	[meta_update] DATETIME NULL
)


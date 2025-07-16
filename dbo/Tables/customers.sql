CREATE TABLE [dbo].[customers] (
    [id]                   INT            NOT NULL,
    [short_name]           NVARCHAR (5)   NULL,
    [expedite]             NVARCHAR (1)   NULL,
    [qa]                   NVARCHAR (25)  NULL,
    [qa_cost]              MONEY          NULL,
    [is_sent]              BIT            NULL,
    [is_received]          BIT            NULL,
    [is_delivered]         BIT            NULL,
    [billed]               MONEY          NULL,
    [is_paid]              BIT            NULL,
    [is_binder_purchased]  BIT            NULL,
    [is_ship_normal]       BIT            NULL,
    [is_ship_overnight]    BIT            NULL,
    [mail_cost]            MONEY          NULL,
    [binder_cost]          MONEY          NULL,
    [is_binder_sent]       BIT            NULL,
    [cost]                 MONEY          NULL,
    [profit]               MONEY          NULL,
    [version]              NVARCHAR (20)  NULL,
    [update_date]          DATETIME       NULL,
    [first_output_date]    DATETIME       NULL,
    [airline_notes]        NVARCHAR (MAX) NULL,
    [scan_rep]             NVARCHAR (25)  NULL,
    [is_birdeye_sent]      BIT            NULL,
    [full_name]            NVARCHAR (100) NULL,
    [first_name]           NVARCHAR (25)  NULL,
    [middle_name]          NVARCHAR (25)  NULL,
    [last_name]            NVARCHAR (25)  NULL,
    [callsign]             NVARCHAR (25)  NULL,
    [notes]                NVARCHAR (MAX) NULL,
    [email]                NVARCHAR (100) NULL,
    [interview_date]       DATETIME       NULL,
    [interview_airline]    NVARCHAR (25)  NULL,
    [phone]                NVARCHAR (20)  NULL,
    [Address]              NVARCHAR (100) NULL,
    [Address2]             NVARCHAR (100) NULL,
    [City]                 NVARCHAR (50)  NULL,
    [State]                NVARCHAR (20)  NULL,
    [Zip]                  NVARCHAR (20)  NULL,
    [country]              NVARCHAR (50)  NULL,
    [is_military]          BIT            NULL,
    [branch]               NVARCHAR (100) NULL,
    [is_harrier]           BIT            NULL,
    [is_osprey]            BIT            NULL,
    [is_ip]                BIT            NULL,
    [is_commercial]        BIT            NULL,
    [is_121]               BIT            NULL,
    [flies_for]            NVARCHAR (100) NULL,
    [is_corporate]         BIT            NULL,
    [is_contractor]        BIT            NULL,
    [flies_for_contractor] NVARCHAR (100) NULL,
    [is_ga]                BIT            NULL,
    [is_faa_cert]          BIT            NULL,
    [winging_date]         DATE           NULL,
    [ifr_date]             DATE           NULL,
    [pic_date]             DATE           NULL,
    [solo_date]            DATE           NULL,
    [ppl_date]             DATE           NULL,
    [commercial_date]      DATE           NULL,
    [atp_date]             DATE           NULL,
    [cfi_date]             DATE           NULL,
    [cfii_date]            DATE           NULL,
    [mei_date]             DATE           NULL,
    [meii_date]            DATE           NULL,
    [register_date]        DATE           NULL,
    [referred]             NVARCHAR (100) NULL,
    [logbook_type]         NVARCHAR (MAX) NULL,
    [is_ratp]              BIT            NULL,
    [is_helo]              BIT            NULL,
    [is_navy_log]          BIT            CONSTRAINT [DF_customers_is_navy_log] DEFAULT ((0)) NULL,
    [is_usaf_log]          BIT            CONSTRAINT [DF_customers_is_usaf_log] DEFAULT ((0)) NULL,
    [is_civ_log]           BIT            CONSTRAINT [DF_customers_is_civ_log] DEFAULT ((0)) NULL,
    [cost_per_line]        MONEY          NULL,
    [process]              NVARCHAR (50)  NULL,
    [POC]                  NVARCHAR (50)  NULL,
    [navy_pages]           INT            NULL,
    [navy_records]         INT            NULL,
    [ga_pages]             INT            NULL,
    [ga_records]           INT            NULL,
    [ga_large_pages]       INT            NULL,
    [ga_large_records]     INT            NULL,
    [usaf_pages]           INT            NULL,
    [usaf_records]         INT            NULL,
    [sent_date]            DATETIME       NULL,
    [received_date]        DATETIME       NULL,
    [due_date]             DATETIME       NULL,
    [completion_days]      FLOAT (53)     NULL,
    [process_cost]         MONEY          NULL,
    [scans_received_date]  DATETIME       NULL,
    [meta_update]          DATETIME2 (7)  CONSTRAINT [DF_customers_meta_update] DEFAULT (sysdatetime()) NULL,
    CONSTRAINT [PK__customer__3213E83FA831258C] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
ALTER TABLE [dbo].[customers] ENABLE CHANGE_TRACKING WITH (TRACK_COLUMNS_UPDATED = ON);


GO
CREATE TRIGGER tr_customers_update_meta
ON customers
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    
    UPDATE customers
    SET meta_update = GETDATE()
    FROM customers c
    INNER JOIN inserted i ON c.id = i.id;
END;
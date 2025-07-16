CREATE PROCEDURE [dbo].[IP_Tours_GetAll]
AS
begin
	SELECT *
	FROM dbo.[customers_ip_tours];
end

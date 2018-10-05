USE [PBIReportServer]
GO

/****** Object:  StoredProcedure [dbo].[sp_call_revoke_access]    Script Date: 03/10/2018 16:01:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[sp_call_revoke_access]  @NAME varchar(200), @PATH varchar(200),@USERNAME varchar(200)
AS
SET NOCOUNT ON

BEGIN

DECLARE @PSHELLCMD varchar(4000) = 'PowerShell -executionpolicy bypass -file "revokeaccesspbi.ps1" -username '+@USERNAME+' -path "'+@PATH+'" -name "'+@NAME+'" '

exec xp_cmdshell @PSHELLCMD

END;

GO



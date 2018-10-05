USE [PBIReportServer]
GO

/****** Object:  StoredProcedure [dbo].[sp_call_create_folder_with_perms]    Script Date: 03/10/2018 16:03:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[sp_call_create_folder_with_perms]  @NAME varchar(200), @PATH varchar(200),@USERNAME varchar(200)
AS
SET NOCOUNT ON

BEGIN

DECLARE @PSHELLCMD varchar(4000) = 'PowerShell -executionpolicy bypass -file "createfolderwithpermissionspbi.ps1" -username '+@USERNAME+' -path "'+@PATH+'" -nome "'+@NAME+'" '

exec xp_cmdshell @PSHELLCMD

END;

GO



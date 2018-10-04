USE [ReportServer]
GO

/****** Object:  StoredProcedure [dbo].[sp_make_new_dir]    Script Date: 01/10/2018 17:37:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[sp_make_new_dir]  @DIRNAME varchar(200), @DIRPATH varchar(200),@USERNAME varchar(200)
AS
SET NOCOUNT ON

BEGIN
DECLARE @ID varchar(200) = NEWID();
DECLARE @NOW datetime = GETDATE();
DECLARE @IDPARENT varchar(200) = (SELECT ItemID FROM dbo.Catalog WHERE Path = @DIRPATH);
DECLARE @DIRFINALPATH varchar(200) = (SELECT CONCAT(@DIRPATH, '/', @DIRNAME));
DECLARE @USERID varchar(200) = (SELECT UserID FROM dbo.Users WHERE UserName = @USERNAME);
DECLARE @SID varbinary(400) = (SELECT Sid FROM dbo.Users WHERE UserName = @USERNAME);

exec CreateObject @ItemID=@ID,@Name=@DIRNAME,@Path=@DIRFINALPATH,@ParentID=@IDPARENT,@Type=1,@Property=N'<Properties />',@Hidden=0,@CreatedBySid=@SID,@AuthType=1,@CreationDate=@NOW,@ModificationDate=@NOW,@SubType=default, @CreatedByName=N@USERID;

END;

GO


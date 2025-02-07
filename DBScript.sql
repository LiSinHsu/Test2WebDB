USE [TestWebAPI]
GO
/****** Object:  User [admin]    Script Date: 2024/5/21 12:03:45 ******/
CREATE USER [admin] FOR LOGIN [admin] WITH DEFAULT_SCHEMA=[admin]
GO
ALTER ROLE [db_owner] ADD MEMBER [admin]
GO
/****** Object:  Schema [admin]    Script Date: 2024/5/21 12:03:45 ******/
CREATE SCHEMA [admin]
GO
/****** Object:  Table [dbo].[Report]    Script Date: 2024/5/21 12:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Report](
	[Month] [nchar](5) NULL,
	[CompanyID] [nchar](4) NULL,
	[Name] [nchar](10) NULL,
	[Revenue] [int] NULL,
	[CreateDate] [nchar](7) NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [admin].[SP_Report]    Script Date: 2024/5/21 12:03:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [admin].[SP_Report]
AS
BEGIN
    SELECT * FROM Report;
END
GO

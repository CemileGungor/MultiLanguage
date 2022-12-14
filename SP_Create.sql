USE [Kaizen]
GO
/****** Object:  StoredProcedure [dbo].[GetNewsByLanguage]    Script Date: 30.11.2022 13:40:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetNewsByLanguage]
(
	@language varchar(5) = 'tr'
)
AS
BEGIN
SELECT 
       [n].[Name]
      ,[l1].[Description] AS [Title]
      ,[l2].[Description] AS [Detail]
      ,[l3].[Description] AS [ImageUrls]
      ,[l4].[Description] AS [Category]
  FROM [dbo].[News] n,
  [dbo].[LanguageResources] l1,
  [dbo].[LanguageResources] l2,
  [dbo].[LanguageResources] l3,
  [dbo].[LanguageResources] l4
  WHERE [l1].[EnumCode] = n.Title
  and [l2].[EnumCode] = n.Detail
  and [l3].[EnumCode] = n.ImageUrls 
  and [l4].[EnumCode] = n.Category
  and [l1].[LanguageCode] = @language
  and [l2].[LanguageCode] = @language
  and [l3].[LanguageCode] = @language
  and [l4].[LanguageCode] = @language
END
USE [Kaizen]
GO

INSERT INTO [dbo].[LanguageResources]
           ([LanguageCode]
           ,[Description]
           ,[EnumCode])
     VALUES
			('en','en-News1-Title',1),
			('tr','tr-News1-Baþlýk',1),
			('en','en-News1-Detail',2),
			('tr','tr-News1-Detay',2),
			('en','en-News1-ImgUrl1,en-News1-ImgUrl2,..., en-News1-ImgUrln',3),
			('tr','tr-News1-ImgUrl1,tr-News1-ImgUrl2,..., tr-News1-ImgUrln',3),
			('en','Economy',4),
			('tr','Ekonomi',4),
			('en','Education',5),
			('tr','Eðitim',5),
			('en','en-News2-Title',6),
			('tr','tr-News2-Baþlýk',6),
			('en','en-News2-Detail',7),
			('tr','tr-News2-Detay',7),
			('en','en-News2-ImgUrl1, en-News2-ImgUrl2,..., en-News2-ImgUrln',8),
			('tr','tr-News2-ImgUrl1, tr-News2-ImgUrl2,..., tr-News2-ImgUrln',8)


GO

INSERT INTO [dbo].[News]
           ([Name]
           ,[Title]
           ,[Detail]
           ,[ImageUrls]
           ,[Category])
     VALUES
			('News1',1,2,3,4),
			('News2',6,7,8,5)
GO






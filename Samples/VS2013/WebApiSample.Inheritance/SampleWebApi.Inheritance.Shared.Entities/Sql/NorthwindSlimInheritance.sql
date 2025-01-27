USE [NorthwindSlimInheritance]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 7/31/2014 10:10:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/31/2014 10:10:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_dbo.Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/31/2014 10:10:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](40) NOT NULL,
	[CategoryId] [int] NULL,
	[UnitPrice] [money] NULL,
	[RowVersion] [timestamp] NOT NULL,
	[DiscontinuedDate] [datetime] NULL,
	[Discriminator] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201407301522480_InitialCreate', N'TrackableWebApi.Inheritance.Service.Entities.NorthwindSlim', 0x1F8B0800000000000400D55ADB6EDB46107D2FD07F20F8D4168E283B299018520247B60B21F105A693F62D5891236991E52EBBBB742C14FDB23EF493FA0B9DE59D5CEA6A2576908748E4CED9B99C999D1DF9BF7FFE1DBCB98F9873075251C187EE61AFEF3AC00311523E1BBA899E3E7BE9BE79FDE30F83B330BA773E16EB9E9B7528C9D5D09D6B1D1F7B9E0AE61011D58B6820851253DD0B44E491507847FDFE2BEFF0D003847011CB71063709D73482F40B7E1D091E40AC13C22E44084CE5CFF18D9FA23A97240215930086EEAD24C1673261F03B4C4E62DA1BF33948AA0922F47C907714FF3F43744D41B9CE09A30475F4814D5D87702E34D168C1F10705BE9682CFFC181F1076BB8801D74D0953905B765C2DDFD4C8FE9131D2AB040BA820515A445B021E3ECFBDE6B5C577F2BD5B7A15FD9A7A6861AC4E7D3B744744C34CC885EBB4373B1E3169166EE7FA5E0178E06C237650720CA968FE1D38A384E944C29043A2256107CE7532613478078B5BF119F890278CD56D43EBF05DE3013EBA962206A91737306D593C0E5DC76BCA7B6D8052BC4336F3CD98EBE747AE7389CA18534B2AD5FCE86B21E137E020513ABC265A8344268C4348836169B1644FF3ADD815398C89EA3A17E4FE3DF0999E630AFFEA3AE7F41EC2E241AEC8074E31AD5146CB043A146D6D7E49EEE82CD5BBA5067E0D9340636EDD004B17A8398DB314EBE52F3F556C3A9722BA11AC122CDF7DBA2572061A4D114B16F82291414BB58157517725A173B4BDF139C77BB274CEF5DB85CD35D16F45E67CCB355C7ED1DF0B97374DDED562B8A9BE963428153E85804684B9CEB5C44FF901FACA75FC80185D5EAC03BC115F727614886F292726696A2E78D9F24066F1FA408C441427F860F3C4AE72F6A1895DE4EDD2C42E327FA7C43EA52A10F8902768EE9E93BC03FBDB24BCF39628C8F3A0E66F772581EADA9EA26F4B62E2E75B1A6D58394F9412014DBDD64CCE2AD84D2DCE78E8AC8BBC6D8973817EA0315A8E3A0CDD5F2C62AE802D4F8A0AB6226213B7DFEB1D5AD05825419AC24418B69A0AC340B9B64B2AE5018D095BA3454B6ECBDEC2C4A1DCA9FDE61462E0A682AEF1EFC35528776A1D15EB3C35F06A74B1D31465344A80CC95B81452CFBF501EFA8C461D598A6D789EA82A2F6D6D4E18541F74D3A8B4B5AFD86C51C2625613A56A612C8C92AD2D889AD5164EAD28D6962D2B9CED506C904DA5FE75D5AD986E903F35A0BA27DBFD42D3D88E125286B9BAA879D94DADB8D1794BAE74830B12C778CCD7AE78F913C7CFEE77A367FEF6D79B28C3F002D571CB29B52D77C22393CCA0F5D69C99219C53A93416503221A693188591B5AC49EA25542BF6B2786B87ADA06021623E67623B5DB83AAA438E7C8E5647A6BAA43D834D860ED1F40A4E18912B7AA8916049C4D7579DF568593BD88597BDB111075ECB36ABD259FE6D91BD1DB18DE259A6E136D11C2BF3F96AFAD32EF78E9F77086B6713B12A0EB58B403D084BAF161B60D9216DBCD89E23FB615CAD99AF83D51E6F8E55EFE3EB60F5E7FB67EE3E4B47574BFD9DD1CDEE85EB90F6DB4E642CF2214D1BE18F8425CBEE1A6D604923BCB7A1339E7A989F7E68AD003C8ED3579E0A5613D45E52EE5E3643ADA667903720EB87DD5647922D312307714743D38DF80BA521EA99053DFF4F366214EDAD165C104EA7A07476D7748FFA8747ADA9F8D399507B4A856CC331F5A30F7CA9F1F2DA29D88EA3A9FA5C8CDF1119CC89B4A6BC2BB1B79E933EF2C8F1ABB8B363CAD8E94D33677CF01031B5C0BAE18EF1967D3F74FF4AC58E9DF11F9F2AC903E74A628A1E3B7DE7EFBA02D98C6FCB696424382CB645B14790E66739A549142F8D463559DC6EAF65D3AA103FEB745AB53D5EED1458952C472F77CC9607CCC6AAA1C0AE532BEB42BFDB5C6DA7E1D78ACBE4D79E767D3FD32D7B5EB0D1F46AB17276959DF098161381F1CE18BBED646BD560AB0BFF31A75E6DA73407121B8CB9BAE6635F67A665B76D48A9DA5F3220A3159D5510A69DE51034C854AE19F3A92878DDD2A858D22A7817A009164B7222359D9200CBBF0840A9F447B3BC5D3E8B26108EF955A2B144A3C9104D58C389263756ED9F0EEE9A3A0FAEE2F4C7A07D98806A5253EFAFF8DB84B2B0D4FBBCA3242F813049971F4A2696DA1C4EB345897489C7E06640B9FBCA5A710B51CC104C5D719FDCC12EBA7D50F01E66245814DDF77290F58168BA7D704AC94C9248E518953C7E450E87D1FDEBFF010270ED0CD0230000, N'6.1.1-30610')
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

GO
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (1, N'Beverages')
GO
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (2, N'Condiments')
GO
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (3, N'Confections')
GO
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (4, N'Dairy Products')
GO
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (5, N'Grains/Cereals')
GO
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (6, N'Meat/Poultry')
GO
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (7, N'Produce')
GO
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (8, N'Seafood')
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [DiscontinuedDate], [Discriminator]) VALUES (1, N'Chai', 1, 23.0000, NULL, N'Product')
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [DiscontinuedDate], [Discriminator]) VALUES (2, N'Chang', 1, 23.0000, NULL, N'Product')
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [DiscontinuedDate], [Discriminator]) VALUES (3, N'Aniseed Syrup', 2, 23.0000, CAST(N'2014-07-29 00:00:00.000' AS DateTime), N'DiscontinuedProduct')
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [UnitPrice], [DiscontinuedDate], [Discriminator]) VALUES (4, N'Chef Anton''s Cajun Seasoning', 2, 23.0000, CAST(N'2014-07-28 00:00:00.000' AS DateTime), N'DiscontinuedProduct')
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Product_dbo.Category_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_dbo.Product_dbo.Category_CategoryId]
GO

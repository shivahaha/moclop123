SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Contact]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Contact](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](30) NOT NULL,
	[ManagerID] [int] NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Country]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Country](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Account] [nvarchar](30) NULL,
	[Email] [nvarchar](50) NULL,
	[Role] [nvarchar](30) NULL,
	[Password] [nvarchar](20) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReferenceData]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ReferenceData](
	[RefID] [int] IDENTITY(1,1) NOT NULL,
	[RefCode] [nvarchar](30) NULL,
	[RefValue] [nvarchar](30) NULL,
 CONSTRAINT [PK_ReferenceData] PRIMARY KEY CLUSTERED 
(
	[RefID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Programme]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Programme](
	[ProgrammeID] [int] NOT NULL,
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Programme] PRIMARY KEY CLUSTERED 
(
	[ProgrammeID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Organisation]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Organisation](
	[OrgID] [int] IDENTITY(1,1) NOT NULL,
	[OrgName] [nvarchar](50) NULL,
	[ContactID] [int] NULL,
 CONSTRAINT [PK_Organisation] PRIMARY KEY CLUSTERED 
(
	[OrgID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Directorate]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Directorate](
	[DirectorateID] [int] IDENTITY(1,1) NOT NULL,
	[OrgID] [int] NULL,
	[ContactID] [int] NULL,
 CONSTRAINT [PK_Directorate] PRIMARY KEY CLUSTERED 
(
	[DirectorateID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Directorate]') AND name = N'IX_Directorate')
CREATE NONCLUSTERED INDEX [IX_Directorate] ON [dbo].[Directorate] 
(
	[DirectorateID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Team]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Team](
	[TeamID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentID] [int] NULL,
	[ContactID] [int] NULL,
 CONSTRAINT [PK_Team] PRIMARY KEY CLUSTERED 
(
	[TeamID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Service]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Service](
	[ServiceID] [int] IDENTITY(1,1) NOT NULL,
	[ContactID] [int] NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[ServiceID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Department]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Department](
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[DirectorateID] [int] NOT NULL,
	[ContactID] [int] NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Premise]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Premise](
	[PremiseID] [int] IDENTITY(1,1) NOT NULL,
	[ServiceID] [int] NULL,
 CONSTRAINT [PK_Premise] PRIMARY KEY CLUSTERED 
(
	[PremiseID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TrustDistrict]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TrustDistrict](
	[TrustDistrictID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[Description] [nvarchar](50) NULL,
	[TrustRegionID] [int] NULL,
 CONSTRAINT [PK_TrustDistrict] PRIMARY KEY CLUSTERED 
(
	[TrustDistrictID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Address]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Address](
	[AddressID] [int] IDENTITY(1,1) NOT NULL,
	[PostCode] [int] NULL,
	[TownID] [int] NULL,
	[CountyID] [int] NULL,
	[CountryID] [int] NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GovOfficeRegion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GovOfficeRegion](
	[GovOfficeRegionID] [int] IDENTITY(1,1) NOT NULL,
	[GovOfficeRegionName] [nvarchar](30) NULL,
	[CountyID] [int] NULL,
	[CountryID] [int] NULL,
 CONSTRAINT [PK_GovOfficeRegion] PRIMARY KEY CLUSTERED 
(
	[GovOfficeRegionID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TrustRegion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TrustRegion](
	[TrustRegionID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NULL,
	[Description] [nvarchar](50) NULL,
	[CountryID] [int] NULL,
 CONSTRAINT [PK_TrustRegion] PRIMARY KEY CLUSTERED 
(
	[TrustRegionID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[County]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[County](
	[CountyID] [int] IDENTITY(1,1) NOT NULL,
	[CountryID] [int] NULL,
	[CountyName] [nvarchar](50) NULL,
 CONSTRAINT [PK_County] PRIMARY KEY CLUSTERED 
(
	[CountyID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Town]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Town](
	[TownID] [int] IDENTITY(1,1) NOT NULL,
	[CountyID] [int] NULL,
	[CountryID] [int] NULL,
	[TownName] [nvarchar](30) NULL,
 CONSTRAINT [PK_Town] PRIMARY KEY CLUSTERED 
(
	[TownID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SupportingMaterial]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SupportingMaterial](
	[SupportingMaterialID] [int] IDENTITY(1,1) NOT NULL,
	[OrgID] [int] NULL,
	[UserID] [int] NULL,
 CONSTRAINT [PK_SupportingMaterial] PRIMARY KEY CLUSTERED 
(
	[SupportingMaterialID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Programme_Contact]') AND parent_object_id = OBJECT_ID(N'[dbo].[Programme]'))
ALTER TABLE [dbo].[Programme]  WITH CHECK ADD  CONSTRAINT [FK_Programme_Contact] FOREIGN KEY([ContactID])
REFERENCES [dbo].[Contact] ([ContactID])
GO
ALTER TABLE [dbo].[Programme] CHECK CONSTRAINT [FK_Programme_Contact]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Organisation_Contact]') AND parent_object_id = OBJECT_ID(N'[dbo].[Organisation]'))
ALTER TABLE [dbo].[Organisation]  WITH CHECK ADD  CONSTRAINT [FK_Organisation_Contact] FOREIGN KEY([ContactID])
REFERENCES [dbo].[Contact] ([ContactID])
GO
ALTER TABLE [dbo].[Organisation] CHECK CONSTRAINT [FK_Organisation_Contact]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Directorate_Contact]') AND parent_object_id = OBJECT_ID(N'[dbo].[Directorate]'))
ALTER TABLE [dbo].[Directorate]  WITH CHECK ADD  CONSTRAINT [FK_Directorate_Contact] FOREIGN KEY([ContactID])
REFERENCES [dbo].[Contact] ([ContactID])
GO
ALTER TABLE [dbo].[Directorate] CHECK CONSTRAINT [FK_Directorate_Contact]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Directorate_Organisation]') AND parent_object_id = OBJECT_ID(N'[dbo].[Directorate]'))
ALTER TABLE [dbo].[Directorate]  WITH CHECK ADD  CONSTRAINT [FK_Directorate_Organisation] FOREIGN KEY([OrgID])
REFERENCES [dbo].[Organisation] ([OrgID])
GO
ALTER TABLE [dbo].[Directorate] CHECK CONSTRAINT [FK_Directorate_Organisation]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Team_Contact]') AND parent_object_id = OBJECT_ID(N'[dbo].[Team]'))
ALTER TABLE [dbo].[Team]  WITH CHECK ADD  CONSTRAINT [FK_Team_Contact] FOREIGN KEY([ContactID])
REFERENCES [dbo].[Contact] ([ContactID])
GO
ALTER TABLE [dbo].[Team] CHECK CONSTRAINT [FK_Team_Contact]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Team_Department]') AND parent_object_id = OBJECT_ID(N'[dbo].[Team]'))
ALTER TABLE [dbo].[Team]  WITH CHECK ADD  CONSTRAINT [FK_Team_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([DepartmentID])
GO
ALTER TABLE [dbo].[Team] CHECK CONSTRAINT [FK_Team_Department]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Service_Contact]') AND parent_object_id = OBJECT_ID(N'[dbo].[Service]'))
ALTER TABLE [dbo].[Service]  WITH CHECK ADD  CONSTRAINT [FK_Service_Contact] FOREIGN KEY([ContactID])
REFERENCES [dbo].[Contact] ([ContactID])
GO
ALTER TABLE [dbo].[Service] CHECK CONSTRAINT [FK_Service_Contact]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Department_Contact]') AND parent_object_id = OBJECT_ID(N'[dbo].[Department]'))
ALTER TABLE [dbo].[Department]  WITH CHECK ADD  CONSTRAINT [FK_Department_Contact] FOREIGN KEY([ContactID])
REFERENCES [dbo].[Contact] ([ContactID])
GO
ALTER TABLE [dbo].[Department] CHECK CONSTRAINT [FK_Department_Contact]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Department_Directorate]') AND parent_object_id = OBJECT_ID(N'[dbo].[Department]'))
ALTER TABLE [dbo].[Department]  WITH CHECK ADD  CONSTRAINT [FK_Department_Directorate] FOREIGN KEY([DirectorateID])
REFERENCES [dbo].[Directorate] ([DirectorateID])
GO
ALTER TABLE [dbo].[Department] CHECK CONSTRAINT [FK_Department_Directorate]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Premise_Service]') AND parent_object_id = OBJECT_ID(N'[dbo].[Premise]'))
ALTER TABLE [dbo].[Premise]  WITH CHECK ADD  CONSTRAINT [FK_Premise_Service] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Service] ([ServiceID])
GO
ALTER TABLE [dbo].[Premise] CHECK CONSTRAINT [FK_Premise_Service]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TrustDistrict_TrustRegion]') AND parent_object_id = OBJECT_ID(N'[dbo].[TrustDistrict]'))
ALTER TABLE [dbo].[TrustDistrict]  WITH CHECK ADD  CONSTRAINT [FK_TrustDistrict_TrustRegion] FOREIGN KEY([TrustRegionID])
REFERENCES [dbo].[TrustRegion] ([TrustRegionID])
GO
ALTER TABLE [dbo].[TrustDistrict] CHECK CONSTRAINT [FK_TrustDistrict_TrustRegion]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Address_Country]') AND parent_object_id = OBJECT_ID(N'[dbo].[Address]'))
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([CountryID])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_Country]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Address_County]') AND parent_object_id = OBJECT_ID(N'[dbo].[Address]'))
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_County] FOREIGN KEY([CountyID])
REFERENCES [dbo].[County] ([CountyID])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_County]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Address_Town]') AND parent_object_id = OBJECT_ID(N'[dbo].[Address]'))
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_Town] FOREIGN KEY([TownID])
REFERENCES [dbo].[Town] ([TownID])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_Town]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GovOfficeRegion_Country]') AND parent_object_id = OBJECT_ID(N'[dbo].[GovOfficeRegion]'))
ALTER TABLE [dbo].[GovOfficeRegion]  WITH CHECK ADD  CONSTRAINT [FK_GovOfficeRegion_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([CountryID])
GO
ALTER TABLE [dbo].[GovOfficeRegion] CHECK CONSTRAINT [FK_GovOfficeRegion_Country]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GovOfficeRegion_County]') AND parent_object_id = OBJECT_ID(N'[dbo].[GovOfficeRegion]'))
ALTER TABLE [dbo].[GovOfficeRegion]  WITH CHECK ADD  CONSTRAINT [FK_GovOfficeRegion_County] FOREIGN KEY([CountyID])
REFERENCES [dbo].[County] ([CountyID])
GO
ALTER TABLE [dbo].[GovOfficeRegion] CHECK CONSTRAINT [FK_GovOfficeRegion_County]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TrustRegion_Country]') AND parent_object_id = OBJECT_ID(N'[dbo].[TrustRegion]'))
ALTER TABLE [dbo].[TrustRegion]  WITH CHECK ADD  CONSTRAINT [FK_TrustRegion_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([CountryID])
GO
ALTER TABLE [dbo].[TrustRegion] CHECK CONSTRAINT [FK_TrustRegion_Country]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_County_Country]') AND parent_object_id = OBJECT_ID(N'[dbo].[County]'))
ALTER TABLE [dbo].[County]  WITH CHECK ADD  CONSTRAINT [FK_County_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([CountryID])
GO
ALTER TABLE [dbo].[County] CHECK CONSTRAINT [FK_County_Country]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Town_Country]') AND parent_object_id = OBJECT_ID(N'[dbo].[Town]'))
ALTER TABLE [dbo].[Town]  WITH CHECK ADD  CONSTRAINT [FK_Town_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([CountryID])
GO
ALTER TABLE [dbo].[Town] CHECK CONSTRAINT [FK_Town_Country]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Town_County]') AND parent_object_id = OBJECT_ID(N'[dbo].[Town]'))
ALTER TABLE [dbo].[Town]  WITH CHECK ADD  CONSTRAINT [FK_Town_County] FOREIGN KEY([CountyID])
REFERENCES [dbo].[County] ([CountyID])
GO
ALTER TABLE [dbo].[Town] CHECK CONSTRAINT [FK_Town_County]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SupportingMaterial_Organisation]') AND parent_object_id = OBJECT_ID(N'[dbo].[SupportingMaterial]'))
ALTER TABLE [dbo].[SupportingMaterial]  WITH CHECK ADD  CONSTRAINT [FK_SupportingMaterial_Organisation] FOREIGN KEY([OrgID])
REFERENCES [dbo].[Organisation] ([OrgID])
GO
ALTER TABLE [dbo].[SupportingMaterial] CHECK CONSTRAINT [FK_SupportingMaterial_Organisation]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SupportingMaterial_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[SupportingMaterial]'))
ALTER TABLE [dbo].[SupportingMaterial]  WITH CHECK ADD  CONSTRAINT [FK_SupportingMaterial_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[SupportingMaterial] CHECK CONSTRAINT [FK_SupportingMaterial_User]

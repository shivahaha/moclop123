USE [MockProject]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 11/14/2012 09:21:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [uc_Roles_RoleName] UNIQUE NONCLUSTERED 
(
	[RoleName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ServiceReferenceDatas]    Script Date: 11/14/2012 09:21:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceReferenceDatas](
	[Id] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[ItemName] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_ServiceReferenceDatas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BusinessTypes]    Script Date: 11/14/2012 09:21:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BusinessTypes](
	[BusinessId] [int] IDENTITY(1,1) NOT NULL,
	[BusinessName] [varchar](250) NOT NULL,
	[SICCode] [varchar](5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BusinessId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [uc_BusinessTypes_BusinessName] UNIQUE NONCLUSTERED 
(
	[BusinessName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BestContactMethods]    Script Date: 11/14/2012 09:21:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BestContactMethods](
	[BestContactMethodId] [int] IDENTITY(1,1) NOT NULL,
	[BestContactMethodName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BestContactMethodId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [uc_BestContactMethods_BestContactMethodName] UNIQUE NONCLUSTERED 
(
	[BestContactMethodName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactTypes]    Script Date: 11/14/2012 09:21:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactTypes](
	[ContactTypeId] [int] IDENTITY(1,1) NOT NULL,
	[ContactTypeName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ContactTypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [uc_ContactTypes_ContactTypeName] UNIQUE NONCLUSTERED 
(
	[ContactTypeName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GovOfficeRegions]    Script Date: 11/14/2012 09:21:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GovOfficeRegions](
	[GovOfficeRegionId] [int] IDENTITY(1,1) NOT NULL,
	[GovOfficeRegionName] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](256) NULL,
	[IsActive] [bit] NOT NULL,
	[CountryId] [varchar](20) NULL,
	[CountyId] [varchar](20) NULL,
 CONSTRAINT [PK__GovOfficeRegions__0EA330E9] PRIMARY KEY CLUSTERED 
(
	[GovOfficeRegionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [uc_GovOfficeRegions_GovOfficeRegionName] UNIQUE NONCLUSTERED 
(
	[GovOfficeRegionName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrganizationReferences]    Script Date: 11/14/2012 09:21:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrganizationReferences](
	[Id] [int] NOT NULL,
	[Category] [int] NOT NULL,
	[ItemName] [nvarchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 11/14/2012 09:21:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Countries](
	[CountryId] [varchar](20) NOT NULL,
	[CountryName] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [uc_Countries_CountryName] UNIQUE NONCLUSTERED 
(
	[CountryName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Counties]    Script Date: 11/14/2012 09:21:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Counties](
	[CountyId] [varchar](20) NOT NULL,
	[CountyName] [varchar](50) NOT NULL,
	[CountryId] [varchar](20) NOT NULL,
	[GovOfficeRegionId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CountyId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [uc_Counties_CountyName] UNIQUE NONCLUSTERED 
(
	[CountyName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 11/14/2012 09:21:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contacts](
	[ContactId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[SurName] [nvarchar](50) NOT NULL,
	[KnownAs] [nvarchar](50) NULL,
	[OfficePhone] [varchar](50) NULL,
	[MobilePhone] [varchar](50) NULL,
	[HomePhone] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[ManageId] [int] NULL,
	[ContactTypeId] [int] NOT NULL,
	[BestContactMethodId] [int] NULL,
	[JobRole] [nvarchar](50) NULL,
	[WorkBase] [nvarchar](50) NOT NULL,
	[JobTitle] [nvarchar](50) NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ContactId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 11/14/2012 09:21:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Account] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[RoleId] [int] NOT NULL,
	[Email] [varchar](250) NOT NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [uc_Users_Account] UNIQUE NONCLUSTERED 
(
	[Account] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [uc_Users_Email] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TrustRegions]    Script Date: 11/14/2012 09:21:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TrustRegions](
	[TrustRegionId] [int] IDENTITY(1,1) NOT NULL,
	[TrustRegionName] [nvarchar](250) NOT NULL,
	[CountryId] [varchar](20) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_TrustRegions] PRIMARY KEY CLUSTERED 
(
	[TrustRegionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Programs]    Script Date: 11/14/2012 09:21:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Programs](
	[ProgramId] [int] IDENTITY(1,1) NOT NULL,
	[ProgramName] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](100) NULL,
	[ContactId] [int] NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProgramId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UC_Programs_ProgramName] UNIQUE NONCLUSTERED 
(
	[ProgramName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 11/14/2012 09:21:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Services](
	[ServiceId] [int] IDENTITY(1,1) NOT NULL,
	[ServiceName] [nvarchar](100) NOT NULL,
	[ShortDescription] [nvarchar](500) NOT NULL,
	[SubType] [varchar](50) NOT NULL,
	[ContactId] [int] NOT NULL,
	[ClientDescription] [nvarchar](500) NULL,
	[Attendance] [nvarchar](100) NULL,
	[StartExpected] [smalldatetime] NULL,
	[StartDate] [smalldatetime] NULL,
	[EndDate] [smalldatetime] NULL,
	[ExtendableYears] [int] NULL,
	[ExtendableMonths] [int] NULL,
	[FullDescription] [nvarchar](max) NULL,
	[DeptCode] [varchar](100) NOT NULL,
	[ServiceType] [varchar](100) NOT NULL,
	[DescriptionDelivery] [nvarchar](500) NULL,
	[ContractCode] [nvarchar](100) NULL,
	[ContractValue] [nvarchar](100) NULL,
	[ContractStagedPayment] [bit] NULL,
	[ReferrealProcess] [nvarchar](100) NULL,
	[LimitedYears] [int] NULL,
	[LimitedMonths] [int] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[ServiceId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UC_Services_ServiceName] UNIQUE NONCLUSTERED 
(
	[ServiceName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TrustDistricts]    Script Date: 11/14/2012 09:21:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrustDistricts](
	[TrustDistrictId] [int] IDENTITY(1,1) NOT NULL,
	[TrustDistrictName] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[TrustRegionId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_TrustDistricts] PRIMARY KEY CLUSTERED 
(
	[TrustDistrictId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Towns]    Script Date: 11/14/2012 09:21:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Towns](
	[TownId] [varchar](20) NOT NULL,
	[TownName] [varchar](50) NOT NULL,
	[CountyId] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TownId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [uc_Towns_TownId] UNIQUE NONCLUSTERED 
(
	[TownId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Addresses]    Script Date: 11/14/2012 09:21:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Addresses](
	[AddressId] [int] IDENTITY(1,1) NOT NULL,
	[AddressLine] [nvarchar](250) NOT NULL,
	[Postcode] [varchar](20) NOT NULL,
	[TownId] [varchar](20) NOT NULL,
	[AddressLine2] [nvarchar](250) NULL,
	[AddressLine3] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[AddressId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Interventions]    Script Date: 11/14/2012 09:21:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Interventions](
	[InterventionId] [int] IDENTITY(1,1) NOT NULL,
	[InterventionName] [nvarchar](250) NOT NULL,
	[ServiceId] [int] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Interventions] PRIMARY KEY CLUSTERED 
(
	[InterventionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InternalServices]    Script Date: 11/14/2012 09:21:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InternalServices](
	[ServiceId] [int] NOT NULL,
	[OtherServiceId] [int] NOT NULL,
 CONSTRAINT [PK_InternalServices] PRIMARY KEY CLUSTERED 
(
	[ServiceId] ASC,
	[OtherServiceId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServicePrograms]    Script Date: 11/14/2012 09:21:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServicePrograms](
	[ProgramId] [int] NOT NULL,
	[ServiceId] [int] NOT NULL,
 CONSTRAINT [PK_ServicePrograms] PRIMARY KEY CLUSTERED 
(
	[ProgramId] ASC,
	[ServiceId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceFundings]    Script Date: 11/14/2012 09:21:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceFundings](
	[ServiceId] [int] NOT NULL,
	[FundingContactId] [int] NOT NULL,
	[FundingAmount] [float] NOT NULL,
	[FundingStart] [smalldatetime] NULL,
	[FundingEnd] [smalldatetime] NULL,
	[FundraisingForText] [nvarchar](500) NULL,
	[FundraisingWhy] [nvarchar](500) NULL,
	[FundraisingDonorAmount] [float] NULL,
	[FundingNeeds] [float] NULL,
	[FundingContinuationAmount] [float] NULL,
	[FundingContinuationDetails] [nvarchar](500) NULL,
	[FundraisingNeeds] [float] NULL,
	[FundraisingRequiredBy] [smalldatetime] NULL,
	[FundraisingCompletedDate] [smalldatetime] NULL,
	[FundraisingDonationDate] [smalldatetime] NULL,
	[FundraisingDonationIncremental] [bit] NULL,
	[FundraisingDonorAnonymous] [bit] NULL,
	[FundingSource] [nvarchar](250) NULL,
 CONSTRAINT [PK_ServiceFundings] PRIMARY KEY CLUSTERED 
(
	[ServiceId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceContracts]    Script Date: 11/14/2012 09:21:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ServiceContracts](
	[ServiceId] [int] NOT NULL,
	[ContractOutcome] [varchar](100) NULL,
	[ContractObligation] [varchar](100) NULL,
	[Participation] [varchar](20) NULL,
 CONSTRAINT [PK_ServiceContracts] PRIMARY KEY CLUSTERED 
(
	[ServiceId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ServiceReferences]    Script Date: 11/14/2012 09:21:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ServiceReferences](
	[ServiceId] [int] NOT NULL,
	[BenefitsCriterion] [varchar](100) NULL,
	[BarriersCriterion] [varchar](100) NULL,
	[EthnicityCriterion] [varchar](100) NULL,
	[DisabilityCriterion] [varchar](100) NULL,
	[PersonalCircumstancesCriterion] [varchar](100) NULL,
	[ParticipationCriterion] [varchar](100) NULL,
	[ClientSupportProcess] [varchar](100) NULL,
	[ClientJourney] [varchar](100) NULL,
	[SupportCentres] [varchar](100) NULL,
	[ClientOutcome] [varchar](100) NULL,
	[TargetClient] [varchar](100) NULL,
	[Accreditations] [varchar](100) NULL,
	[ReferralSources] [varchar](100) NULL,
	[ProgramId] [int] NULL,
 CONSTRAINT [PK_ServiceReferences] PRIMARY KEY CLUSTERED 
(
	[ServiceId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Premises]    Script Date: 11/14/2012 09:21:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Premises](
	[PremiseId] [int] IDENTITY(1,1) NOT NULL,
	[PremiseName] [nvarchar](250) NOT NULL,
	[LocationName] [nvarchar](250) NOT NULL,
	[LocationType] [nvarchar](250) NOT NULL,
	[LocationStatus] [nvarchar](250) NOT NULL,
	[PhoneNumber] [varchar](20) NOT NULL,
	[LocationStatusDate] [smalldatetime] NULL,
	[ShopFlagDate] [smalldatetime] NULL,
	[LocationDescription] [nvarchar](250) NULL,
	[AddressId] [int] NULL,
	[CityTown] [nvarchar](50) NULL,
	[County] [nvarchar](50) NULL,
	[CountryId] [varchar](20) NULL,
	[KnowAs] [nvarchar](50) NULL,
	[ProjectCode] [nvarchar](50) NULL,
	[FaxNumber] [varchar](20) NULL,
	[MinicomNumber] [varchar](20) NULL,
	[PrimaryLocation] [bit] NULL,
	[LocationManaged] [bit] NULL,
	[NetworkConnectivity] [bit] NULL,
	[IsNewShop] [bit] NULL,
	[IsActive] [bit] NOT NULL,
	[SpecialistShop] [bit] NULL,
 CONSTRAINT [PK_Premises] PRIMARY KEY CLUSTERED 
(
	[PremiseId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Organizations]    Script Date: 11/14/2012 09:21:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Organizations](
	[OrganizationId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationName] [nvarchar](250) NOT NULL,
	[ShortDescription] [nvarchar](500) NOT NULL,
	[AddressId] [int] NOT NULL,
	[BusinessId] [int] NOT NULL,
	[PhoneNumber] [varchar](20) NOT NULL,
	[CityTown] [nvarchar](50) NULL,
	[County] [nvarchar](50) NULL,
	[CountryId] [varchar](20) NULL,
	[PreferredOrganization] [bit] NULL,
	[FullDescription] [nvarchar](max) NULL,
	[ContactId] [int] NULL,
	[Fax] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
	[WebAddress] [nvarchar](250) NULL,
	[CharityNumber] [varchar](20) NULL,
	[CompanyNumber] [varchar](20) NULL,
	[OrganizationSpecialism] [varchar](100) NULL,
	[ServiceDisabilities] [varchar](100) NULL,
	[ServiceBarriers] [varchar](100) NULL,
	[ServiceBenefits] [varchar](100) NULL,
	[ServiceCircumstances] [varchar](100) NULL,
	[ServiceEthnicity] [varchar](100) NULL,
	[Accreditation] [varchar](100) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Organizations] PRIMARY KEY CLUSTERED 
(
	[OrganizationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UC_Organizations_Name] UNIQUE NONCLUSTERED 
(
	[OrganizationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SupportingMaterials]    Script Date: 11/14/2012 09:21:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SupportingMaterials](
	[SupportingMaterialId] [int] IDENTITY(1,1) NOT NULL,
	[Url] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[Type] [varchar](20) NULL,
	[UserId] [int] NOT NULL,
	[AddedDate] [smalldatetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[OrganizationId] [int] NOT NULL,
 CONSTRAINT [PK_SupportingMaterials] PRIMARY KEY CLUSTERED 
(
	[SupportingMaterialId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ServicePremises]    Script Date: 11/14/2012 09:21:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ServicePremises](
	[ServiceId] [int] NOT NULL,
	[PremiseId] [int] NOT NULL,
	[ProjectCode] [varchar](50) NULL,
 CONSTRAINT [PK_ServicePremises] PRIMARY KEY CLUSTERED 
(
	[ServiceId] ASC,
	[PremiseId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ServiceOrganizations]    Script Date: 11/14/2012 09:21:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ServiceOrganizations](
	[ServiceId] [int] NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[Roles] [varchar](100) NULL,
	[Description] [nvarchar](250) NULL,
 CONSTRAINT [PK_ServiceOrganizations] PRIMARY KEY CLUSTERED 
(
	[ServiceId] ASC,
	[OrganizationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrganizationPrograms]    Script Date: 11/14/2012 09:21:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrganizationPrograms](
	[ProgramId] [int] NOT NULL,
	[OrganizationId] [int] NOT NULL,
 CONSTRAINT [PK_OrganizationPrograms] PRIMARY KEY CLUSTERED 
(
	[ProgramId] ASC,
	[OrganizationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Directorates]    Script Date: 11/14/2012 09:21:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Directorates](
	[DirectorateId] [int] IDENTITY(1,1) NOT NULL,
	[DirectorateName] [nvarchar](50) NOT NULL,
	[BusinessId] [int] NOT NULL,
	[AddressId] [int] NOT NULL,
	[ContactId] [int] NULL,
	[ShortDescription] [nvarchar](500) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[CityTown] [nvarchar](50) NULL,
	[County] [nvarchar](50) NULL,
	[CountryId] [varchar](20) NULL,
	[PhoneNumber] [varchar](20) NULL,
	[Fax] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
	[WebAddress] [nvarchar](250) NULL,
	[CharityNumber] [varchar](20) NULL,
	[CompanyNumber] [varchar](20) NULL,
	[IsActive] [bit] NOT NULL,
	[OrganizationId] [int] NOT NULL,
 CONSTRAINT [PK_Directorates] PRIMARY KEY CLUSTERED 
(
	[DirectorateId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UC_Directorates_DirectorateName] UNIQUE NONCLUSTERED 
(
	[DirectorateName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 11/14/2012 09:21:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Departments](
	[DepartmentId] [int] NOT NULL,
	[DepartmentName] [nvarchar](100) NOT NULL,
	[BusinessId] [int] NULL,
	[AddressId] [int] NULL,
	[ContactId] [int] NULL,
	[ShortDescription] [nvarchar](500) NOT NULL,
	[FullDescription] [nvarchar](max) NULL,
	[CityTown] [nvarchar](50) NULL,
	[County] [nvarchar](50) NULL,
	[CountryId] [varchar](20) NULL,
	[PhoneNumber] [varchar](20) NULL,
	[Fax] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
	[WebAddress] [nvarchar](250) NULL,
	[IsActive] [bit] NOT NULL,
	[DirectorateId] [int] NOT NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[DepartmentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UC_Departments_DepartmentName] UNIQUE NONCLUSTERED 
(
	[DepartmentName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Teams]    Script Date: 11/14/2012 09:21:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Teams](
	[TeamId] [int] IDENTITY(1,1) NOT NULL,
	[TeamName] [nvarchar](100) NOT NULL,
	[BusinessId] [int] NULL,
	[AddressId] [int] NULL,
	[ContactId] [int] NULL,
	[ShortDescription] [nvarchar](500) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[CityTown] [nvarchar](50) NULL,
	[County] [nvarchar](50) NULL,
	[CountryId] [varchar](20) NULL,
	[PhoneNumber] [varchar](20) NULL,
	[Fax] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
	[WebAddress] [nvarchar](250) NULL,
	[IsActive] [bit] NOT NULL,
	[DepartmentId] [int] NOT NULL,
 CONSTRAINT [PK_Teams] PRIMARY KEY CLUSTERED 
(
	[TeamId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UC_Teams_DepartmentName] UNIQUE NONCLUSTERED 
(
	[TeamName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF__Contacts__IsActi__03317E3D]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[Contacts] ADD  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF__Departmen__IsAct__47DBAE45]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[Departments] ADD  CONSTRAINT [DF__Departmen__IsAct__47DBAE45]  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF__Directora__IsAct__3F466844]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[Directorates] ADD  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF__GovOffice__IsAct__108B795B]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[GovOfficeRegions] ADD  CONSTRAINT [DF__GovOffice__IsAct__108B795B]  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF__Organizat__IsAct__2C3393D0]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[Organizations] ADD  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF__Premises__IsActi__607251E5]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[Premises] ADD  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF__Programs__IsActi__08EA5793]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[Programs] ADD  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF__ServiceFu__Fundr__01142BA1]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[ServiceFundings] ADD  DEFAULT ((0)) FOR [FundraisingDonationIncremental]
GO
/****** Object:  Default [DF__Services__Contra__5DCAEF64]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[Services] ADD  CONSTRAINT [DF__Services__Contra__5DCAEF64]  DEFAULT ((0)) FOR [ContractStagedPayment]
GO
/****** Object:  Default [DF__Services__IsActi__5EBF139D]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[Services] ADD  CONSTRAINT [DF__Services__IsActi__5EBF139D]  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF__Supportin__Added__38996AB5]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[SupportingMaterials] ADD  DEFAULT (getdate()) FOR [AddedDate]
GO
/****** Object:  Default [DF__Supportin__IsAct__398D8EEE]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[SupportingMaterials] ADD  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF__Teams__IsActive__5070F446]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[Teams] ADD  CONSTRAINT [DF__Teams__IsActive__5070F446]  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  ForeignKey [fk_Addresses_TownId]    Script Date: 11/14/2012 09:21:54 ******/
ALTER TABLE [dbo].[Addresses]  WITH CHECK ADD  CONSTRAINT [fk_Addresses_TownId] FOREIGN KEY([TownId])
REFERENCES [dbo].[Towns] ([TownId])
GO
ALTER TABLE [dbo].[Addresses] CHECK CONSTRAINT [fk_Addresses_TownId]
GO
/****** Object:  ForeignKey [fk_Contacts_BestContactMethodId]    Script Date: 11/14/2012 09:21:54 ******/
ALTER TABLE [dbo].[Contacts]  WITH CHECK ADD  CONSTRAINT [fk_Contacts_BestContactMethodId] FOREIGN KEY([BestContactMethodId])
REFERENCES [dbo].[BestContactMethods] ([BestContactMethodId])
GO
ALTER TABLE [dbo].[Contacts] CHECK CONSTRAINT [fk_Contacts_BestContactMethodId]
GO
/****** Object:  ForeignKey [fk_Contacts_ContactTypeId]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[Contacts]  WITH CHECK ADD  CONSTRAINT [fk_Contacts_ContactTypeId] FOREIGN KEY([ContactTypeId])
REFERENCES [dbo].[ContactTypes] ([ContactTypeId])
GO
ALTER TABLE [dbo].[Contacts] CHECK CONSTRAINT [fk_Contacts_ContactTypeId]
GO
/****** Object:  ForeignKey [fk_Counties_CountryId]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[Counties]  WITH CHECK ADD  CONSTRAINT [fk_Counties_CountryId] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Countries] ([CountryId])
GO
ALTER TABLE [dbo].[Counties] CHECK CONSTRAINT [fk_Counties_CountryId]
GO
/****** Object:  ForeignKey [fk_Counties_GovOfficeRegionId]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[Counties]  WITH CHECK ADD  CONSTRAINT [fk_Counties_GovOfficeRegionId] FOREIGN KEY([GovOfficeRegionId])
REFERENCES [dbo].[GovOfficeRegions] ([GovOfficeRegionId])
GO
ALTER TABLE [dbo].[Counties] CHECK CONSTRAINT [fk_Counties_GovOfficeRegionId]
GO
/****** Object:  ForeignKey [FK_Departments_AddressId]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD  CONSTRAINT [FK_Departments_AddressId] FOREIGN KEY([AddressId])
REFERENCES [dbo].[Addresses] ([AddressId])
GO
ALTER TABLE [dbo].[Departments] CHECK CONSTRAINT [FK_Departments_AddressId]
GO
/****** Object:  ForeignKey [FK_Departments_BusinessId]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD  CONSTRAINT [FK_Departments_BusinessId] FOREIGN KEY([BusinessId])
REFERENCES [dbo].[BusinessTypes] ([BusinessId])
GO
ALTER TABLE [dbo].[Departments] CHECK CONSTRAINT [FK_Departments_BusinessId]
GO
/****** Object:  ForeignKey [FK_Departments_ContactId]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD  CONSTRAINT [FK_Departments_ContactId] FOREIGN KEY([ContactId])
REFERENCES [dbo].[Contacts] ([ContactId])
GO
ALTER TABLE [dbo].[Departments] CHECK CONSTRAINT [FK_Departments_ContactId]
GO
/****** Object:  ForeignKey [FK_Departments_CountryId]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD  CONSTRAINT [FK_Departments_CountryId] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Countries] ([CountryId])
GO
ALTER TABLE [dbo].[Departments] CHECK CONSTRAINT [FK_Departments_CountryId]
GO
/****** Object:  ForeignKey [FK_Departments_DirectorateId]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD  CONSTRAINT [FK_Departments_DirectorateId] FOREIGN KEY([DirectorateId])
REFERENCES [dbo].[Directorates] ([DirectorateId])
GO
ALTER TABLE [dbo].[Departments] CHECK CONSTRAINT [FK_Departments_DirectorateId]
GO
/****** Object:  ForeignKey [FK_Directorates_AddressId]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[Directorates]  WITH CHECK ADD  CONSTRAINT [FK_Directorates_AddressId] FOREIGN KEY([AddressId])
REFERENCES [dbo].[Addresses] ([AddressId])
GO
ALTER TABLE [dbo].[Directorates] CHECK CONSTRAINT [FK_Directorates_AddressId]
GO
/****** Object:  ForeignKey [FK_Directorates_BusinessId]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[Directorates]  WITH CHECK ADD  CONSTRAINT [FK_Directorates_BusinessId] FOREIGN KEY([BusinessId])
REFERENCES [dbo].[BusinessTypes] ([BusinessId])
GO
ALTER TABLE [dbo].[Directorates] CHECK CONSTRAINT [FK_Directorates_BusinessId]
GO
/****** Object:  ForeignKey [FK_Directorates_ContactId]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[Directorates]  WITH CHECK ADD  CONSTRAINT [FK_Directorates_ContactId] FOREIGN KEY([ContactId])
REFERENCES [dbo].[Contacts] ([ContactId])
GO
ALTER TABLE [dbo].[Directorates] CHECK CONSTRAINT [FK_Directorates_ContactId]
GO
/****** Object:  ForeignKey [FK_Directorates_CountryId]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[Directorates]  WITH CHECK ADD  CONSTRAINT [FK_Directorates_CountryId] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Countries] ([CountryId])
GO
ALTER TABLE [dbo].[Directorates] CHECK CONSTRAINT [FK_Directorates_CountryId]
GO
/****** Object:  ForeignKey [FK_Directorates_OrganizationId]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[Directorates]  WITH CHECK ADD  CONSTRAINT [FK_Directorates_OrganizationId] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organizations] ([OrganizationId])
GO
ALTER TABLE [dbo].[Directorates] CHECK CONSTRAINT [FK_Directorates_OrganizationId]
GO
/****** Object:  ForeignKey [FK_InternalServices_OtherServiceId]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[InternalServices]  WITH CHECK ADD  CONSTRAINT [FK_InternalServices_OtherServiceId] FOREIGN KEY([OtherServiceId])
REFERENCES [dbo].[Services] ([ServiceId])
GO
ALTER TABLE [dbo].[InternalServices] CHECK CONSTRAINT [FK_InternalServices_OtherServiceId]
GO
/****** Object:  ForeignKey [FK_InternalServices_ServiceId]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[InternalServices]  WITH CHECK ADD  CONSTRAINT [FK_InternalServices_ServiceId] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Services] ([ServiceId])
GO
ALTER TABLE [dbo].[InternalServices] CHECK CONSTRAINT [FK_InternalServices_ServiceId]
GO
/****** Object:  ForeignKey [FK_Interventions_ServiceId]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[Interventions]  WITH CHECK ADD  CONSTRAINT [FK_Interventions_ServiceId] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Services] ([ServiceId])
GO
ALTER TABLE [dbo].[Interventions] CHECK CONSTRAINT [FK_Interventions_ServiceId]
GO
/****** Object:  ForeignKey [FK_OrganizationPrograms_OrganizationId]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[OrganizationPrograms]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationPrograms_OrganizationId] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organizations] ([OrganizationId])
GO
ALTER TABLE [dbo].[OrganizationPrograms] CHECK CONSTRAINT [FK_OrganizationPrograms_OrganizationId]
GO
/****** Object:  ForeignKey [FK_OrganizationPrograms_ProgramId]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[OrganizationPrograms]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationPrograms_ProgramId] FOREIGN KEY([ProgramId])
REFERENCES [dbo].[Programs] ([ProgramId])
GO
ALTER TABLE [dbo].[OrganizationPrograms] CHECK CONSTRAINT [FK_OrganizationPrograms_ProgramId]
GO
/****** Object:  ForeignKey [FK_Organizations_AddressId]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[Organizations]  WITH CHECK ADD  CONSTRAINT [FK_Organizations_AddressId] FOREIGN KEY([AddressId])
REFERENCES [dbo].[Addresses] ([AddressId])
GO
ALTER TABLE [dbo].[Organizations] CHECK CONSTRAINT [FK_Organizations_AddressId]
GO
/****** Object:  ForeignKey [FK_Organizations_ContactId]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[Organizations]  WITH CHECK ADD  CONSTRAINT [FK_Organizations_ContactId] FOREIGN KEY([ContactId])
REFERENCES [dbo].[Contacts] ([ContactId])
GO
ALTER TABLE [dbo].[Organizations] CHECK CONSTRAINT [FK_Organizations_ContactId]
GO
/****** Object:  ForeignKey [FK_Organizations_CountryId]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[Organizations]  WITH CHECK ADD  CONSTRAINT [FK_Organizations_CountryId] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Countries] ([CountryId])
GO
ALTER TABLE [dbo].[Organizations] CHECK CONSTRAINT [FK_Organizations_CountryId]
GO
/****** Object:  ForeignKey [FK_Organizations_TypeOfBusinessId]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[Organizations]  WITH CHECK ADD  CONSTRAINT [FK_Organizations_TypeOfBusinessId] FOREIGN KEY([BusinessId])
REFERENCES [dbo].[BusinessTypes] ([BusinessId])
GO
ALTER TABLE [dbo].[Organizations] CHECK CONSTRAINT [FK_Organizations_TypeOfBusinessId]
GO
/****** Object:  ForeignKey [FK_Country_CountryID]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[Premises]  WITH CHECK ADD  CONSTRAINT [FK_Country_CountryID] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Countries] ([CountryId])
GO
ALTER TABLE [dbo].[Premises] CHECK CONSTRAINT [FK_Country_CountryID]
GO
/****** Object:  ForeignKey [FK_Premises_AddressId]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[Premises]  WITH CHECK ADD  CONSTRAINT [FK_Premises_AddressId] FOREIGN KEY([AddressId])
REFERENCES [dbo].[Addresses] ([AddressId])
GO
ALTER TABLE [dbo].[Premises] CHECK CONSTRAINT [FK_Premises_AddressId]
GO
/****** Object:  ForeignKey [fk_Programs_ContactId]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[Programs]  WITH CHECK ADD  CONSTRAINT [fk_Programs_ContactId] FOREIGN KEY([ContactId])
REFERENCES [dbo].[Contacts] ([ContactId])
GO
ALTER TABLE [dbo].[Programs] CHECK CONSTRAINT [fk_Programs_ContactId]
GO
/****** Object:  ForeignKey [FK_ServiceContracts_ServiceId]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[ServiceContracts]  WITH CHECK ADD  CONSTRAINT [FK_ServiceContracts_ServiceId] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Services] ([ServiceId])
GO
ALTER TABLE [dbo].[ServiceContracts] CHECK CONSTRAINT [FK_ServiceContracts_ServiceId]
GO
/****** Object:  ForeignKey [FK_ServiceFundings_ContactId]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[ServiceFundings]  WITH CHECK ADD  CONSTRAINT [FK_ServiceFundings_ContactId] FOREIGN KEY([FundingContactId])
REFERENCES [dbo].[Contacts] ([ContactId])
GO
ALTER TABLE [dbo].[ServiceFundings] CHECK CONSTRAINT [FK_ServiceFundings_ContactId]
GO
/****** Object:  ForeignKey [FK_ServiceFundings_ServiceId]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[ServiceFundings]  WITH CHECK ADD  CONSTRAINT [FK_ServiceFundings_ServiceId] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Services] ([ServiceId])
GO
ALTER TABLE [dbo].[ServiceFundings] CHECK CONSTRAINT [FK_ServiceFundings_ServiceId]
GO
/****** Object:  ForeignKey [FK_ServiceOrganizations_OrganizationId]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[ServiceOrganizations]  WITH CHECK ADD  CONSTRAINT [FK_ServiceOrganizations_OrganizationId] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organizations] ([OrganizationId])
GO
ALTER TABLE [dbo].[ServiceOrganizations] CHECK CONSTRAINT [FK_ServiceOrganizations_OrganizationId]
GO
/****** Object:  ForeignKey [FK_ServiceOrganizations_ServiceId]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[ServiceOrganizations]  WITH CHECK ADD  CONSTRAINT [FK_ServiceOrganizations_ServiceId] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Services] ([ServiceId])
GO
ALTER TABLE [dbo].[ServiceOrganizations] CHECK CONSTRAINT [FK_ServiceOrganizations_ServiceId]
GO
/****** Object:  ForeignKey [FK_ServicePremises_PremiseId]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[ServicePremises]  WITH CHECK ADD  CONSTRAINT [FK_ServicePremises_PremiseId] FOREIGN KEY([PremiseId])
REFERENCES [dbo].[Premises] ([PremiseId])
GO
ALTER TABLE [dbo].[ServicePremises] CHECK CONSTRAINT [FK_ServicePremises_PremiseId]
GO
/****** Object:  ForeignKey [FK_ServicePremises_ServiceId]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[ServicePremises]  WITH CHECK ADD  CONSTRAINT [FK_ServicePremises_ServiceId] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Services] ([ServiceId])
GO
ALTER TABLE [dbo].[ServicePremises] CHECK CONSTRAINT [FK_ServicePremises_ServiceId]
GO
/****** Object:  ForeignKey [FK_ServicePrograms_ProgramId]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[ServicePrograms]  WITH CHECK ADD  CONSTRAINT [FK_ServicePrograms_ProgramId] FOREIGN KEY([ProgramId])
REFERENCES [dbo].[Programs] ([ProgramId])
GO
ALTER TABLE [dbo].[ServicePrograms] CHECK CONSTRAINT [FK_ServicePrograms_ProgramId]
GO
/****** Object:  ForeignKey [FK_ServicePrograms_ServiceId]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[ServicePrograms]  WITH CHECK ADD  CONSTRAINT [FK_ServicePrograms_ServiceId] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Services] ([ServiceId])
GO
ALTER TABLE [dbo].[ServicePrograms] CHECK CONSTRAINT [FK_ServicePrograms_ServiceId]
GO
/****** Object:  ForeignKey [FK_ServiceReferences_ProgramId]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[ServiceReferences]  WITH CHECK ADD  CONSTRAINT [FK_ServiceReferences_ProgramId] FOREIGN KEY([ProgramId])
REFERENCES [dbo].[Programs] ([ProgramId])
GO
ALTER TABLE [dbo].[ServiceReferences] CHECK CONSTRAINT [FK_ServiceReferences_ProgramId]
GO
/****** Object:  ForeignKey [FK_ServiceReferences_ServiceId]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[ServiceReferences]  WITH CHECK ADD  CONSTRAINT [FK_ServiceReferences_ServiceId] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Services] ([ServiceId])
GO
ALTER TABLE [dbo].[ServiceReferences] CHECK CONSTRAINT [FK_ServiceReferences_ServiceId]
GO
/****** Object:  ForeignKey [FK_Services_ContactId]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[Services]  WITH CHECK ADD  CONSTRAINT [FK_Services_ContactId] FOREIGN KEY([ContactId])
REFERENCES [dbo].[Contacts] ([ContactId])
GO
ALTER TABLE [dbo].[Services] CHECK CONSTRAINT [FK_Services_ContactId]
GO
/****** Object:  ForeignKey [FK_SupportingMaterials_OrganizationId]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[SupportingMaterials]  WITH CHECK ADD  CONSTRAINT [FK_SupportingMaterials_OrganizationId] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organizations] ([OrganizationId])
GO
ALTER TABLE [dbo].[SupportingMaterials] CHECK CONSTRAINT [FK_SupportingMaterials_OrganizationId]
GO
/****** Object:  ForeignKey [FK_SupportingMaterials_UserId]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[SupportingMaterials]  WITH CHECK ADD  CONSTRAINT [FK_SupportingMaterials_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[SupportingMaterials] CHECK CONSTRAINT [FK_SupportingMaterials_UserId]
GO
/****** Object:  ForeignKey [FK_Teams_AddressId]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[Teams]  WITH CHECK ADD  CONSTRAINT [FK_Teams_AddressId] FOREIGN KEY([AddressId])
REFERENCES [dbo].[Addresses] ([AddressId])
GO
ALTER TABLE [dbo].[Teams] CHECK CONSTRAINT [FK_Teams_AddressId]
GO
/****** Object:  ForeignKey [FK_Teams_BusinessId]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[Teams]  WITH CHECK ADD  CONSTRAINT [FK_Teams_BusinessId] FOREIGN KEY([BusinessId])
REFERENCES [dbo].[BusinessTypes] ([BusinessId])
GO
ALTER TABLE [dbo].[Teams] CHECK CONSTRAINT [FK_Teams_BusinessId]
GO
/****** Object:  ForeignKey [FK_Teams_ContactId]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[Teams]  WITH CHECK ADD  CONSTRAINT [FK_Teams_ContactId] FOREIGN KEY([ContactId])
REFERENCES [dbo].[Contacts] ([ContactId])
GO
ALTER TABLE [dbo].[Teams] CHECK CONSTRAINT [FK_Teams_ContactId]
GO
/****** Object:  ForeignKey [FK_Teams_CountryId]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[Teams]  WITH CHECK ADD  CONSTRAINT [FK_Teams_CountryId] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Countries] ([CountryId])
GO
ALTER TABLE [dbo].[Teams] CHECK CONSTRAINT [FK_Teams_CountryId]
GO
/****** Object:  ForeignKey [FK_Teams_DepartmentId]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[Teams]  WITH CHECK ADD  CONSTRAINT [FK_Teams_DepartmentId] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([DepartmentId])
GO
ALTER TABLE [dbo].[Teams] CHECK CONSTRAINT [FK_Teams_DepartmentId]
GO
/****** Object:  ForeignKey [fk_Towns_CountyId]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[Towns]  WITH CHECK ADD  CONSTRAINT [fk_Towns_CountyId] FOREIGN KEY([CountyId])
REFERENCES [dbo].[Counties] ([CountyId])
GO
ALTER TABLE [dbo].[Towns] CHECK CONSTRAINT [fk_Towns_CountyId]
GO
/****** Object:  ForeignKey [FK_TrustDistricts_TrustRegionId]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[TrustDistricts]  WITH CHECK ADD  CONSTRAINT [FK_TrustDistricts_TrustRegionId] FOREIGN KEY([TrustRegionId])
REFERENCES [dbo].[TrustRegions] ([TrustRegionId])
GO
ALTER TABLE [dbo].[TrustDistricts] CHECK CONSTRAINT [FK_TrustDistricts_TrustRegionId]
GO
/****** Object:  ForeignKey [FK_TrustRegions_CountryId]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[TrustRegions]  WITH CHECK ADD  CONSTRAINT [FK_TrustRegions_CountryId] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Countries] ([CountryId])
GO
ALTER TABLE [dbo].[TrustRegions] CHECK CONSTRAINT [FK_TrustRegions_CountryId]
GO
/****** Object:  ForeignKey [fk_Users_RoleId]    Script Date: 11/14/2012 09:21:55 ******/
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [fk_Users_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([RoleId])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [fk_Users_RoleId]
GO

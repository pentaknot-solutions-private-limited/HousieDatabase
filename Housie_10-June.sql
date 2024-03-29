USE [Housie]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 10-06-2019 18:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AdminId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](1000) NULL,
	[Email] [nvarchar](1000) NULL,
	[PasswordHash] [nvarchar](4000) NULL,
	[HostIp] [nvarchar](50) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreationDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_Admin_1] PRIMARY KEY CLUSTERED 
(
	[AdminId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ForgetPassword]    Script Date: 10-06-2019 18:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ForgetPassword](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ForgetPasswordId] [uniqueidentifier] NOT NULL,
	[PlayerId] [uniqueidentifier] NULL,
	[ForgetPasswordToken] [nvarchar](4000) NULL,
	[HostIp] [nvarchar](50) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreationDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_ForgetPassword] PRIMARY KEY CLUSTERED 
(
	[ForgetPasswordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MatchDetails]    Script Date: 10-06-2019 18:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MatchDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MatchId] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](1000) NULL,
	[Description] [nvarchar](4000) NULL,
	[MatchDateTime] [datetime] NULL,
	[MatchGeneratedNumber] [nvarchar](4000) NULL,
	[HostIp] [nvarchar](50) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreationDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_MatchDetails] PRIMARY KEY CLUSTERED 
(
	[MatchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MatchDetailsRel]    Script Date: 10-06-2019 18:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MatchDetailsRel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MatchId] [uniqueidentifier] NULL,
	[Number] [int] NULL,
	[HostIp] [nvarchar](50) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreationDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_MatchDetailsRel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MatchPlayerPointRel]    Script Date: 10-06-2019 18:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MatchPlayerPointRel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MatchId] [uniqueidentifier] NULL,
	[PlayerId] [uniqueidentifier] NULL,
	[ClaimedPrize] [int] NULL,
	[HostIp] [nvarchar](50) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreationDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[FirstLine] [bit] NULL,
	[SecondLine] [bit] NULL,
	[ThirdLine] [bit] NULL,
	[FullHousie] [bit] NULL,
 CONSTRAINT [PK_MatchPlayerPointRel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MatchPlayerRel]    Script Date: 10-06-2019 18:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MatchPlayerRel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MatchId] [uniqueidentifier] NULL,
	[PlayerId] [uniqueidentifier] NULL,
	[TokenGeneratedNumber] [nvarchar](4000) NULL,
	[HostIp] [nvarchar](50) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreationDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_MatchPlayerRel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MatchPriceRel]    Script Date: 10-06-2019 18:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MatchPriceRel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MatchId] [uniqueidentifier] NOT NULL,
	[DisplayPosition] [int] NULL,
	[FileName] [nvarchar](4000) NULL,
	[HostIp] [nvarchar](50) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreationDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_MatchPriceRel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MatchToken]    Script Date: 10-06-2019 18:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MatchToken](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MatchTokenId] [uniqueidentifier] NOT NULL,
	[MatchId] [uniqueidentifier] NULL,
	[MatchToken] [nvarchar](4000) NULL,
	[HostIp] [nvarchar](50) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreationDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_MatchToken] PRIMARY KEY CLUSTERED 
(
	[MatchTokenId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlayerDetails]    Script Date: 10-06-2019 18:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlayerDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PlayerId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](1000) NULL,
	[Email] [nvarchar](1000) NULL,
	[MobileNumber] [nvarchar](1000) NULL,
	[Address] [nvarchar](4000) NULL,
	[PasswordHash] [nvarchar](4000) NULL,
	[HostIp] [nvarchar](50) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreationDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_PlayerDetails] PRIMARY KEY CLUSTERED 
(
	[PlayerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[udp_Admin_del]    Script Date: 10-06-2019 18:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_Admin_del]
	@Id int
AS
SET NOCOUNT ON

UPDATE Admin
SET [IsDeleted] = 1 WHERE [Id] = @Id

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_Admin_lst]    Script Date: 10-06-2019 18:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_Admin_lst]
AS
SET NOCOUNT ON

SELECT [Id]
      ,[AdminId]
      ,[Name]
      ,[Email]
      ,[PasswordHash]
      ,[HostIp]
      ,[CreatedBy]
      ,[CreationDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
      ,[IsActive]
      ,[IsDeleted]
  FROM [dbo].[Admin] WHERE [IsDeleted] = 0

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_Admin_lstpage]    Script Date: 10-06-2019 18:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_Admin_lstpage]
(
@pageNum INT, @pageSize INT, @TotalRecords INT NULL OUTPUT )
AS
SET NOCOUNT ON;

WITH PagingCTE AS
	( SELECT [Id]
      ,[AdminId]
      ,[Name]
      ,[Email]
      ,[PasswordHash]
      ,[HostIp]
      ,[CreatedBy]
      ,[CreationDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
      ,[IsActive]
      ,[IsDeleted]
, ROW_NUMBER() OVER (ORDER BY [Id]) AS RowNumber FROM [Admin] WITH(NOLOCK) WHERE [IsDeleted] = 0

) SELECT PagingCTE.* FROM PagingCTE WHERE RowNumber BETWEEN (@pageNum * 1) * @pageSize * 1 AND @pageNum * @pageSize;
Select @TotalRecords = COUNT([Id]) FROM [Admin] WITH(NOLOCK)	WHERE [IsDeleted] = 0
SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_Admin_sel]    Script Date: 10-06-2019 18:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_Admin_sel]
	@Id uniqueidentifier
AS
SET NOCOUNT ON

SELECT [Id]
      ,[AdminId]
      ,[Name]
      ,[Email]
      ,[PasswordHash]
      ,[HostIp]
      ,[CreatedBy]
      ,[CreationDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
      ,[IsActive]
      ,[IsDeleted]
  FROM [dbo].[Admin]
WHERE [IsDeleted] = 0 AND [AdminId] = @Id

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_Admin_ups]    Script Date: 10-06-2019 18:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_Admin_ups]
	@Id int,
	@AdminId uniqueidentifier,
	@Name nvarchar(1000),
	@Email nvarchar(1000),
	@PasswordHash nvarchar(4000),
	@HostIp nvarchar(50),
	@CreatedBy uniqueidentifier,
	@CreationDate datetime,
	@UpdatedBy uniqueidentifier,
	@UpdatedDate datetime,
	@IsActive bit,
	@IsDeleted bit
AS
SET NOCOUNT ON

IF @Id = 0 BEGIN
	INSERT INTO [Admin] (
		Id
		,[AdminId]
		,[Name]
		,[Email]
		,[PasswordHash]
		,[HostIp]
		,[CreatedBy]
		,[CreationDate]
		,[UpdatedBy]
		,[UpdatedDate]
		,[IsActive]
		,[IsDeleted]

	)
	VALUES (

	@Id,

	@AdminId,

	@Name,

	@Email,

	@PasswordHash,

	@HostIp,

	@CreatedBy,

	@CreationDate,

	@UpdatedBy,

	@UpdatedDate,

	@IsActive,

	@IsDeleted
	 )
	 SELECT @AdminId AS InsertedID
END
ELSE BEGIN 
	UPDATE [Admin] SET 

		[AdminId] = @AdminId,

		[Name] = @Name,

		[Email] = @Email,

		[PasswordHash] = @PasswordHash,

		[HostIp] = @HostIp,

		[CreatedBy] = @CreatedBy,

		[CreationDate] = @CreationDate,

		[UpdatedBy] = @UpdatedBy,
		
		[UpdatedDate] = @UpdatedDate,
		
		[IsActive] = @IsActive,

		[IsDeleted] = @IsDeleted

	WHERE [AdminId] = @AdminId
SELECT @AdminId
END


SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_ChangePassword_ups]    Script Date: 10-06-2019 18:49:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_ChangePassword_ups]
	@ForgetPasswordId uniqueidentifier,
	@PasswordHash nvarchar(4000)

AS
SET NOCOUNT ON

Update PlayerDetails Set PasswordHash = @PasswordHash
Where PlayerId = (Select PlayerId from ForgetPassword where ForgetPasswordId = @ForgetPasswordId)

Update ForgetPassword Set IsDeleted = 1 where ForgetPasswordId = @ForgetPasswordId


SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_CheckFirstLineClaim]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_CheckFirstLineClaim]
	@MatchId uniqueidentifier
AS
SET NOCOUNT ON

--SELECT [Id]
--      ,[MatchId]
--      ,[PlayerId]
--	  ,[ClaimedPrize]
--      ,[HostIp]
--      ,[CreatedBy]
--      ,[CreationDate]
--      ,[UpdatedBy]
--      ,[UpdatedDate]
--      ,[IsActive]
--      ,[IsDeleted]
--	  ,[FirstLine]
--	  ,[SecondLine]
--	  ,[ThirdLine]
--	  ,[FullHousie]
--  FROM [dbo].[MatchPlayerPointRel]

Select Count(Id) from MatchPlayerPointRel

WHERE [IsDeleted] = 0 AND  [MatchId] = @MatchId AND FirstLine = 1

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_CheckPlayerMatch_sel]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_CheckPlayerMatch_sel]
	@PlayerId uniqueidentifier,
	@MatchId uniqueidentifier
AS
SET NOCOUNT ON

SELECT MPR.[PlayerId],
	   MPR.[IsDeleted] as 'PlayerDeleted',
	   MT.[IsDeleted] as 'MatchDeleted'
  FROM [dbo].[MatchPlayerRel] MPR
  INNER Join dbo.[MatchToken] MT
  On MPR.MatchId = MT.MatchId

WHERE 
--MPR.[IsDeleted] = 0 AND --To Check if player is not banned
--MT.[IsDeleted] = 0 AND --To Check if token is not expired
MPR.[MatchId] = @MatchId AND 
MPR.PlayerId = @PlayerId

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_CheckPlayerPoint_sel]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_CheckPlayerPoint_sel]
	@MatchId uniqueidentifier,
	@PlayerId uniqueidentifier
AS
SET NOCOUNT ON

SELECT [Id]
      ,[MatchId]
      ,[PlayerId]
	  ,[ClaimedPrize]
      ,[HostIp]
      ,[CreatedBy]
      ,[CreationDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
      ,[IsActive]
      ,[IsDeleted]
	  ,[FirstLine]
	  ,[SecondLine]
	  ,[ThirdLine]
	  ,[FullHousie]
  FROM [dbo].[MatchPlayerPointRel]

WHERE [MatchId] = @MatchId AND [PlayerId] = @PlayerId AND (FirstLine = 1 OR SecondLine = 1 OR ThirdLine = 1 OR FullHousie = 1)

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_CheckSecondLineClaim]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_CheckSecondLineClaim]
	@MatchId uniqueidentifier
AS
SET NOCOUNT ON

--SELECT [Id]
--      ,[MatchId]
--      ,[PlayerId]
--	  ,[ClaimedPrize]
--      ,[HostIp]
--      ,[CreatedBy]
--      ,[CreationDate]
--      ,[UpdatedBy]
--      ,[UpdatedDate]
--      ,[IsActive]
--      ,[IsDeleted]
--	  ,[FirstLine]
--	  ,[SecondLine]
--	  ,[ThirdLine]
--	  ,[FullHousie]
--  FROM [dbo].[MatchPlayerPointRel]

Select Count(SecondLine) from MatchPlayerPointRel

WHERE [IsDeleted] = 0 AND [MatchId] = @MatchId AND SecondLine = 1

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_CheckThirdLineClaim]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_CheckThirdLineClaim]
	@MatchId uniqueidentifier
AS
SET NOCOUNT ON

--SELECT [Id]
--      ,[MatchId]
--      ,[PlayerId]
--	  ,[ClaimedPrize]
--      ,[HostIp]
--      ,[CreatedBy]
--      ,[CreationDate]
--      ,[UpdatedBy]
--      ,[UpdatedDate]
--      ,[IsActive]
--      ,[IsDeleted]
--	  ,[FirstLine]
--	  ,[SecondLine]
--	  ,[ThirdLine]
--	  ,[FullHousie]
--  FROM [dbo].[MatchPlayerPointRel]

Select Count(ThirdLine) from MatchPlayerPointRel

WHERE [IsDeleted] = 0 AND [MatchId] = @MatchId AND ThirdLine = 1

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_CheckUpdateAddress]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_CheckUpdateAddress]
	@MatchId uniqueidentifier
AS
SET NOCOUNT ON

Select PD.PlayerId as Id,
		PD.[Name] as 'PlayerName',
	   --MPR.[FileName] as 'PrizeFile',
	   CAST(CASE WHEN MPPR.ClaimedPrize IS NOT NULL THEN MPR.[FileName] ELSE NULL END AS nvarchar(50)) as PrizeFile,
	   CAST(CASE WHEN MPPR.FirstLine = 1 THEN 1 ELSE 0 END AS bit) as FirstLine,
	   CAST(CASE WHEN MPPR.SecondLine = 1 THEN 1 ELSE 0 END AS bit) as SecondLine,
	   CAST(CASE WHEN MPPR.ThirdLine = 1 THEN 1 ELSE 0 END AS bit) as ThirdLine,
	   CAST(CASE WHEN MPPR.FullHousie = 1 THEN 1 ELSE 0 END AS bit) as FullHousie,
	   CAST(CASE WHEN MPPR.FirstLine = 0 AND MPPR.SecondLine = 0 AND MPPR.ThirdLine = 0 AND MPPR.FullHousie = 0 THEN 1 ELSE 0 END AS bit) as Lucky,
	   CAST(CASE WHEN PD.UpdatedDate > MD.MatchDateTime+5 THEN 1 ELSE 0 END AS bit) AS Expired,
	   CAST(CASE WHEN PD.UpdatedDate IS NULL THEN 1 ELSE 0 END AS bit) AS 'Empty'

	    
from MatchPlayerPointRel MPPR
Inner Join PlayerDetails PD
ON MPPR.PlayerId = PD.PlayerId
Left Join MatchPriceRel MPR
On MPPR.MatchId = MPR.MatchId
Inner Join MatchDetails MD
On MPPR.MatchId = MD.MatchId

Where MPPR.MatchId = @MatchId AND (MPR.DisplayPosition = MPPR.ClaimedPrize OR MPPR.ClaimedPrize IS NULL)

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_ClaimPrize_ups]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROC [dbo].[udp_ClaimPrize_ups]
	@MatchId uniqueidentifier,
	@ClaimedPrize int

AS
SET NOCOUNT ON


	UPDATE [MatchPriceRel] SET 

		[IsActive] = 0

	WHERE [MatchId] = @MatchId AND [DisplayPosition] = @ClaimedPrize
SELECT @MatchId


SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_ExpireMatchToken_ups]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROC [dbo].[udp_ExpireMatchToken_ups]
	@MatchId uniqueidentifier

AS
SET NOCOUNT ON


	UPDATE [MatchToken] SET 

		[IsDeleted] = 1

	WHERE [MatchId] = @MatchId
SELECT @MatchId


SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_ForgetPassword_del]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_ForgetPassword_del]
	@ForgetPasswordToken nvarchar(4000)
AS
SET NOCOUNT ON

UPDATE ForgetPassword
SET [IsDeleted] = 1 WHERE [ForgetPasswordToken] = @ForgetPasswordToken

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_ForgetPassword_sel]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_ForgetPassword_sel]
	@Id uniqueidentifier
AS
SET NOCOUNT ON

SELECT [Id],
	[ForgetPasswordId],
	[PlayerId],
	[ForgetPasswordToken],
	[HostIp],
	[CreatedBy],
	[CreationDate],
	[UpdatedBy],
	[UpdatedDate],
	[IsActive],
	[IsDeleted]
FROM ForgetPassword 
WHERE [ForgetPasswordId] = @Id

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_ForgetPassword_ups]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_ForgetPassword_ups]
	@Id int,
	@ForgetPasswordId uniqueidentifier,
	@PlayerId uniqueidentifier,
	@ForgetPasswordToken nvarchar(4000),
	@HostIp nvarchar(50),
	@CreatedBy uniqueidentifier,
	@CreationDate datetime,
	@UpdatedBy uniqueidentifier,
	@UpdatedDate datetime,
	@IsActive bit,
	@IsDeleted bit
AS
SET NOCOUNT ON

IF @Id = 0 BEGIN
	INSERT INTO ForgetPassword(


	[ForgetPasswordId],

	[PlayerId],

	[ForgetPasswordToken],

	[HostIp],

	[CreatedBy],

	[CreationDate],

	[UpdatedBy],

	[UpdatedDate],

	[IsActive],

	[IsDeleted]

	)
	VALUES (


		@ForgetPasswordId, 

		@PlayerId,

		@ForgetPasswordToken,

		@HostIp,

		@CreatedBy, 

		@CreationDate,

		@UpdatedBy,

		@UpdatedDate,

		@IsActive,

		@IsDeleted
	 )
	 SELECT @ForgetPasswordToken AS InsertedToken
END
ELSE BEGIN 
	UPDATE ForgetPassword SET 

		[ForgetPasswordId] = @ForgetPasswordId,

		[PlayerId] = @PlayerId,

		[ForgetPasswordToken] = @ForgetPasswordToken,

		[HostIp] = @HostIp,

		[CreatedBy] = @CreatedBy,

		[CreationDate] = @CreationDate,

		[UpdatedBy] = @UpdatedBy,
		
		[UpdatedDate] = @UpdatedDate,
		
		[IsActive] = @IsActive,

		[IsDeleted] = @IsDeleted

	WHERE [ForgetPasswordId] = @ForgetPasswordId
SELECT @ForgetPasswordId
END


SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_GetMatchPlayer_sel]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROC [dbo].[udp_GetMatchPlayer_sel]
	@PlayerId uniqueidentifier,
	@MatchId uniqueidentifier
AS
SET NOCOUNT ON

SELECT [Id]
      ,[MatchId]
      ,[PlayerId]
	  ,[TokenGeneratedNumber]
      ,[HostIp]
      ,[CreatedBy]
      ,[CreationDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
      ,[IsActive]
      ,[IsDeleted]
  FROM [dbo].[MatchPlayerRel]

WHERE [IsDeleted] = 0 AND [MatchId] = @MatchId AND [PlayerId] = @PlayerId

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_GetMatchPlayerRelCountByMatchId]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_GetMatchPlayerRelCountByMatchId]
@MatchId uniqueidentifier 
As
SET NOCOUNT ON

	Select COUNT(*) from MatchPlayerRel 
			Where 
			MatchId = @MatchId 
			AND IsDeleted = 0 
			AND IsActive = 1

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_GetMatchPriceRelByMatchIdAndDisplayPosition]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	CREATE PROC [dbo].[udp_GetMatchPriceRelByMatchIdAndDisplayPosition]
		@MatchId uniqueidentifier, @DisplayPosition int
		AS
		SET NOCOUNT ON
			select *
				from MatchPriceRel where 
				MatchId = @MatchId and 
				DisplayPosition = @DisplayPosition and 
				IsDeleted = 0 and IsActive = 1;
		SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_isMatchLive]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_isMatchLive]
	@Id uniqueidentifier
AS
SET NOCOUNT ON

SELECT Count([Id]) as 'Count'
  FROM [dbo].[MatchDetailsRel]

WHERE [IsDeleted] = 0 AND [MatchId] = @Id

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_MatchDetails_del]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_MatchDetails_del]
	@Id int
AS
SET NOCOUNT ON

UPDATE MatchDetails
SET [IsDeleted] = 1 WHERE [Id] = @Id

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_MatchDetails_lst]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_MatchDetails_lst]
AS
SET NOCOUNT ON

SELECT [Id],
	[MatchId],
	[Title],
	[Description],
	[MatchDateTime],
	[MatchGeneratedNumber],
	[HostIp],
	[CreatedBy],
	[CreationDate],
	[UpdatedBy],
	[UpdatedDate],
	[IsActive],
	[IsDeleted]
FROM MatchDetails WHERE[IsDeleted] = 0
Order By MatchDateTime


SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_MatchDetails_lstpage]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_MatchDetails_lstpage]
(
@pageNum INT, @pageSize INT, @TotalRecords INT NULL OUTPUT )
AS
SET NOCOUNT ON;

WITH PagingCTE AS
	( SELECT [Id],
	[MatchId],
	[Title],
	[Description],
	[MatchDateTime],
	[MatchGeneratedNumber],
	[HostIp],
	[CreatedBy],
	[CreationDate],
	[UpdatedBy],
	[UpdatedDate],
	[IsActive],
	[IsDeleted]
, ROW_NUMBER() OVER (ORDER BY [Id]) AS RowNumber FROM MatchDetails WITH(NOLOCK) WHERE [IsDeleted] = 0

) SELECT PagingCTE.* FROM PagingCTE WHERE RowNumber BETWEEN (@pageNum - 1) * @pageSize + 1 AND @pageNum * @pageSize;
Select @TotalRecords = COUNT([Id]) FROM MatchDetails WITH(NOLOCK)	WHERE [IsDeleted] = 0
SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_MatchDetails_sel]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_MatchDetails_sel]
	@Id uniqueidentifier
AS
SET NOCOUNT ON

SELECT [Id],
	[MatchId],
	[Title],
	[Description],
	[MatchDateTime],
	[MatchGeneratedNumber],
	[HostIp],
	[CreatedBy],
	[CreationDate],
	[UpdatedBy],
	[UpdatedDate],
	[IsActive],
	[IsDeleted]
FROM MatchDetails 
WHERE [IsDeleted] = 0 AND [MatchId] = @Id

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_MatchDetails_ups]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_MatchDetails_ups]
	@Id int,
	@MatchId uniqueidentifier,
	@Title nvarchar(1000),
	@Description nvarchar(4000),
	@MatchDateTime datetime,
	@MatchGeneratedNumber nvarchar(4000),
	@HostIp nvarchar(50),
	@CreatedBy uniqueidentifier,
	@CreationDate datetime,
	@UpdatedBy uniqueidentifier,
	@UpdatedDate datetime,
	@IsActive bit,
	@IsDeleted bit
AS
SET NOCOUNT ON

IF @Id = 0 BEGIN
	INSERT INTO MatchDetails (


	[MatchId],

	[Title],

	[Description],

	[MatchDateTime],

	[MatchGeneratedNumber],

	[HostIp],

	[CreatedBy],

	[CreationDate],

	[UpdatedBy],

	[UpdatedDate],

	[IsActive],

	[IsDeleted]

	)
	VALUES (


		@MatchId, 

		@Title,

		@Description,

		@MatchDateTime,

		@MatchGeneratedNumber,

		@HostIp,

		@CreatedBy, 

		@CreationDate,

		@UpdatedBy,

		@UpdatedDate,

		@IsActive,

		@IsDeleted
	 )
	 SELECT @MatchId AS InsertedID
END
ELSE BEGIN 
	UPDATE MatchDetails SET 

		[MAtchId] = @MatchId,

		[Title] = @Title,

		[Description] = @Description,

		[MatchDateTime] = @MatchDateTime,

		[MatchGeneratedNumber] = @MatchGeneratedNumber,

		[HostIp] = @HostIp,

		[CreatedBy] = @CreatedBy,

		[CreationDate] = @CreationDate,

		[UpdatedBy] = @UpdatedBy,
		
		[UpdatedDate] = @UpdatedDate,
		
		[IsActive] = @IsActive,

		[IsDeleted] = @IsDeleted

	WHERE [MatchId] = @MatchId
SELECT @MatchId
END


SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_MatchDetailsRel_del]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_MatchDetailsRel_del]
	@Id int
AS
SET NOCOUNT ON

UPDATE MatchDetailsRel
SET [IsDeleted] = 1 WHERE [Id] = @Id

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_MatchDetailsRel_lst]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_MatchDetailsRel_lst]
AS
SET NOCOUNT ON

SELECT [Id]
      ,[MatchId]
      ,[Number]
      ,[HostIp]
      ,[CreatedBy]
      ,[CreationDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
      ,[IsActive]
      ,[IsDeleted]
  FROM [dbo].MatchDetailsRel WHERE [IsDeleted] = 0

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_MatchDetailsRel_lstpage]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_MatchDetailsRel_lstpage]
(
@pageNum INT, @pageSize INT, @TotalRecords INT NULL OUTPUT )
AS
SET NOCOUNT ON;

WITH PagingCTE AS
	( SELECT [Id]
      ,[MatchId]
      ,[Number]
      ,[HostIp]
      ,[CreatedBy]
      ,[CreationDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
      ,[IsActive]
      ,[IsDeleted]
, ROW_NUMBER() OVER (ORDER BY [Id]) AS RowNumber FROM [MatchDetailsRel] WITH(NOLOCK) WHERE [IsDeleted] = 0

) SELECT PagingCTE.* FROM PagingCTE WHERE RowNumber BETWEEN (@pageNum * 1) * @pageSize * 1 AND @pageNum * @pageSize;
Select @TotalRecords = COUNT([Id]) FROM [MatchDetailsRel] WITH(NOLOCK)	WHERE [IsDeleted] = 0
SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_MatchDetailsRel_sel]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_MatchDetailsRel_sel]
	@Id int
AS
SET NOCOUNT ON

SELECT [Id]
      ,[MatchId]
      ,[Number]
      ,[HostIp]
      ,[CreatedBy]
      ,[CreationDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
      ,[IsActive]
      ,[IsDeleted]
  FROM [dbo].[MatchDetailsRel]

WHERE [IsDeleted] = 0 AND [Id] = @Id

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_MatchDetailsRel_selByMatch]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROC [dbo].[udp_MatchDetailsRel_selByMatch]
	@Id uniqueidentifier
AS
SET NOCOUNT ON

SELECT [Id]
      ,[MatchId]
      ,[Number]
      ,[HostIp]
      ,[CreatedBy]
      ,[CreationDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
      ,[IsActive]
      ,[IsDeleted]
  FROM [dbo].[MatchDetailsRel]

WHERE [IsDeleted] = 0 AND [MatchId] = @Id

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_MatchDetailsRel_ups]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_MatchDetailsRel_ups]

	@Id int,
	@MatchId uniqueidentifier,
	@Number int,
	@HostIp nvarchar(50),
	@CreatedBy uniqueidentifier,
	@CreationDate datetime,
	@UpdatedBy uniqueidentifier,
	@UpdatedDate datetime,
	@IsActive bit,
	@IsDeleted bit

AS
SET NOCOUNT ON

IF @Id = 0 BEGIN
	INSERT INTO [MatchDetailsRel] (

            [MatchId]
           ,[Number]
           ,[HostIp]
           ,[CreatedBy]
           ,[CreationDate]
           ,[UpdatedBy]
           ,[UpdatedDate]
           ,[IsActive]
           ,[IsDeleted]

	)
	VALUES (

		@MatchId,

		@Number,

		@HostIp,

		@CreatedBy,

		@CreationDate,

		@UpdatedBy,

		@UpdatedDate,

		@IsActive,

		@IsDeleted
	 )
	 SELECT SCOPE_IDENTITY() AS InsertedID
END
ELSE BEGIN 
	UPDATE [MatchDetailsRel] SET 

		[MatchId] = @MatchId,

		[Number] = @Number,

		[HostIp] = @HostIp,

		[CreatedBy] = @CreatedBy,

		[CreationDate] = @CreationDate,

		[UpdatedBy] = @UpdatedBy,
		
		[UpdatedDate] = @UpdatedDate,
		
		[IsActive] = @IsActive,

		[IsDeleted] = @IsDeleted

	WHERE [Id] = @Id
SELECT @Id
END


SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_MatchDetailsRelByMatchId]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_MatchDetailsRelByMatchId]
(
@MatchId uniqueidentifier  )
AS
SET NOCOUNT ON;

	SELECT [Number]
	FROM [MatchDetailsRel] WHERE [IsDeleted] = 0 and [MatchId] = @MatchId;

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_MatchDetailsTokenRel_lst]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROC [dbo].[udp_MatchDetailsTokenRel_lst]
AS
SET NOCOUNT ON

SELECT 
	MD.[Id],
	MD.[MatchId],
	MD.[Title],
	MD.[Description],
	MD.[MatchDateTime],
	MD.[MatchGeneratedNumber],
	MT.MatchToken,
	MD.[HostIp],
	MD.[CreatedBy],
	MD.[CreationDate],
	MD.[UpdatedBy],
	MD.[UpdatedDate],
	MD.[IsActive],
	MD.[IsDeleted]
FROM MatchDetails MD
Inner Join MatchToken MT
ON MD.MatchId = MT.MatchId
 WHERE MD.[IsDeleted] = 0

Order By MatchDateTime


SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_MatchDetailsTokenRel_lstpage]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_MatchDetailsTokenRel_lstpage]
(
@pageNum INT, @pageSize INT, @TotalRecords INT NULL OUTPUT )
AS
SET NOCOUNT ON;

WITH PagingCTE AS
	( SELECT 
	MD.[Id],
	MD.[MatchId],
	MD.[Title],
	MD.[Description],
	MD.[MatchDateTime],
	MD.[MatchGeneratedNumber],
	MT.MatchToken,
	MD.[HostIp],
	MD.[CreatedBy],
	MD.[CreationDate],
	MD.[UpdatedBy],
	MD.[UpdatedDate],
	MD.[IsActive],
	MD.[IsDeleted]
, ROW_NUMBER() OVER (ORDER BY MD.[Id]) AS RowNumber FROM MatchDetails MD
Inner Join MatchToken MT
ON MD.MatchId = MT.MatchId
 WHERE MD.[IsDeleted] = 0


) SELECT PagingCTE.* FROM PagingCTE WHERE RowNumber BETWEEN (@pageNum - 1) * @pageSize + 1 AND @pageNum * @pageSize;
Select @TotalRecords = COUNT(MD.[Id]) FROM MatchDetails MD
Inner Join MatchToken MT
ON MD.MatchId = MT.MatchId
 WHERE MD.[IsDeleted] = 0
GO
/****** Object:  StoredProcedure [dbo].[udp_MatchPlayerDetails_sel]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_MatchPlayerDetails_sel]
	@PlayerId uniqueidentifier,
	@MatchId uniqueidentifier
AS
SET NOCOUNT ON

SELECT [Id]
      ,[MatchId]
      ,[PlayerId]
	  ,[TokenGeneratedNumber]
      ,[HostIp]
      ,[CreatedBy]
      ,[CreationDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
      ,[IsActive]
      ,[IsDeleted]
  FROM [dbo].[MatchPlayerRel]

WHERE [IsDeleted] = 0 AND [PlayerId] = @PlayerId AND [MatchId] = @MatchId

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_MatchPlayerPointRel_del]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_MatchPlayerPointRel_del]
	@Id int
AS
SET NOCOUNT ON

UPDATE MatchPlayerPointRel
SET [IsDeleted] = 1 WHERE [Id] = @Id

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_MatchPlayerPointRel_lst]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_MatchPlayerPointRel_lst]
AS
SET NOCOUNT ON

SELECT [Id]
      ,[MatchId]
      ,[PlayerId]
	  ,[ClaimedPrize]
      ,[HostIp]
      ,[CreatedBy]
      ,[CreationDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
      ,[IsActive]
      ,[IsDeleted]
	  ,[FirstLine]
	  ,[SecondLine]
	  ,[ThirdLine]
	  ,[FullHousie]
  FROM [dbo].[MatchPlayerPointRel] WHERE [IsDeleted] = 0

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_MatchPlayerPointRel_lstpage]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_MatchPlayerPointRel_lstpage]
(
@pageNum INT, @pageSize INT, @TotalRecords INT NULL OUTPUT )
AS
SET NOCOUNT ON;

WITH PagingCTE AS
	( SELECT [Id]
      ,[MatchId]
      ,[PlayerId]
	  ,[MarkedNumber]
      ,[HostIp]
      ,[CreatedBy]
      ,[CreationDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
      ,[IsActive]
      ,[IsDeleted]
	  ,[FullHousie]
	  ,[FirstLine]
	  ,[SecondLine]
	  ,[ThirdLine]
, ROW_NUMBER() OVER (ORDER BY [Id]) AS RowNumber FROM [MatchPlayerPointRel] WITH(NOLOCK) WHERE [IsDeleted] = 0

) SELECT PagingCTE.* FROM PagingCTE WHERE RowNumber BETWEEN (@pageNum * 1) * @pageSize * 1 AND @pageNum * @pageSize;
Select @TotalRecords = COUNT([Id]) FROM [MatchPlayerPointRel] WITH(NOLOCK)	WHERE [IsDeleted] = 0
SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_MatchPlayerPointRel_sel]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_MatchPlayerPointRel_sel]
	@Id uniqueidentifier
AS
SET NOCOUNT ON

SELECT [Id]
      ,[MatchId]
      ,[PlayerId]
	  ,[ClaimedPrize]
      ,[HostIp]
      ,[CreatedBy]
      ,[CreationDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
      ,[IsActive]
      ,[IsDeleted]
	  ,[FirstLine]
	  ,[SecondLine]
	  ,[ThirdLine]
	  ,[FullHousie]
  FROM [dbo].[MatchPlayerPointRel]

WHERE [IsDeleted] = 0 AND [MatchId] = @Id

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_MatchPlayerPointRel_ups]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_MatchPlayerPointRel_ups]

	@Id int,
	@MatchId uniqueidentifier,
	@PlayerId uniqueidentifier,
	@ClaimedPrize int,
	@HostIp nvarchar(50),
	@CreatedBy uniqueidentifier,
	@CreationDate datetime,
	@UpdatedBy uniqueidentifier,
	@UpdatedDate datetime,
	@IsActive bit,
	@IsDeleted bit,
	@FirstLine bit,
	@SecondLine bit,
	@ThirdLine bit,
	@FullHousie bit
AS
SET NOCOUNT ON

IF @Id = 0 BEGIN
	INSERT INTO [MatchPlayerPointRel] (

            [MatchId]
           ,[PlayerId]
		   ,[ClaimedPrize]
           ,[HostIp]
           ,[CreatedBy]
           ,[CreationDate]
           ,[UpdatedBy]
           ,[UpdatedDate]
           ,[IsActive]
           ,[IsDeleted]
		   ,[FirstLine]
		   ,[SecondLine]
		   ,[ThirdLine]
		   ,[FullHousie]
	)
	VALUES (

		@MatchId,

		@PlayerId,

		@ClaimedPrize,

		@HostIp,

		@CreatedBy,

		@CreationDate,

		@UpdatedBy,

		@UpdatedDate,

		@IsActive,

		@IsDeleted,

		@FirstLine,

		@SecondLine,
		
		@ThirdLine,
		
		@FullHousie
	 )
	 SELECT [Id]
      ,[MatchId]
      ,[PlayerId]
	  ,[ClaimedPrize]
      ,[HostIp]
      ,[CreatedBy]
      ,[CreationDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
      ,[IsActive]
      ,[IsDeleted]
	  ,[FirstLine]
	  ,[SecondLine]
	  ,[ThirdLine]
	  ,[FullHousie]
	  from [MatchPlayerPointRel] Where PlayerId = @PlayerId AND MatchId = @MatchId
END
ELSE BEGIN 
	UPDATE [MatchPlayerPointRel] SET 

		[MatchId] = @MatchId,

		[PlayerId] = @PlayerId,

		[ClaimedPrize] = @ClaimedPrize,

		[HostIp] = @HostIp,

		[CreatedBy] = @CreatedBy,

		[CreationDate] = @CreationDate,

		[UpdatedBy] = @UpdatedBy,
		
		[UpdatedDate] = @UpdatedDate,
		
		[IsActive] = @IsActive,

		[IsDeleted] = @IsDeleted,

		[FirstLine] = @FirstLine,
		 
		[SecondLine] = @SecondLine,
		
		[ThirdLine] = @ThirdLine,
		
		[FullHousie]=	@FullHousie	


	WHERE [Id] = @Id
SELECT [Id]
      ,[MatchId]
      ,[PlayerId]
	  ,[ClaimedPrize]
      ,[HostIp]
      ,[CreatedBy]
      ,[CreationDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
      ,[IsActive]
      ,[IsDeleted]
	  ,[FirstLine]
	  ,[SecondLine]
	  ,[ThirdLine]
	  ,[FullHousie]
	  from [MatchPlayerPointRel] Where PlayerId = @PlayerId AND MatchId = @MatchId
END


SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_MatchPlayerRel_del]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_MatchPlayerRel_del]
	@Id int
AS
SET NOCOUNT ON

UPDATE MatchPlayerRel
SET [IsDeleted] = 1 WHERE [Id] = @Id

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_MatchPlayerRel_lstpage]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_MatchPlayerRel_lstpage]
(
@pageNum INT, @pageSize INT, @TotalRecords INT NULL OUTPUT )
AS
SET NOCOUNT ON;

WITH PagingCTE AS
	( SELECT [Id]
      ,[MatchId]
      ,[PlayerId]
      ,[HostIp]
      ,[CreatedBy]
      ,[CreationDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
      ,[IsActive]
      ,[IsDeleted]
, ROW_NUMBER() OVER (ORDER BY [Id]) AS RowNumber FROM [MatchPlayerRel] WITH(NOLOCK) WHERE [IsDeleted] = 0

) SELECT PagingCTE.* FROM PagingCTE WHERE RowNumber BETWEEN (@pageNum * 1) * @pageSize * 1 AND @pageNum * @pageSize;
Select @TotalRecords = COUNT([Id]) FROM [MatchPlayerRel] WITH(NOLOCK)	WHERE [IsDeleted] = 0
SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_MatchPlayerRel_sel]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_MatchPlayerRel_sel]
	@Id uniqueidentifier
AS
SET NOCOUNT ON

SELECT [Id]
      ,[MatchId]
      ,[PlayerId]
	  ,[TokenGeneratedNumber]
      ,[HostIp]
      ,[CreatedBy]
      ,[CreationDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
      ,[IsActive]
      ,[IsDeleted]
  FROM [dbo].[MatchPlayerRel]

WHERE [IsDeleted] = 0 AND [MatchId] = @Id

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_MatchPlayerRel_ups]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_MatchPlayerRel_ups]

	@Id int,
	@MatchId uniqueidentifier,
	@PlayerId uniqueidentifier,
	@TokenGeneratedNumber nvarchar(4000),
	@HostIp nvarchar(50),
	@CreatedBy uniqueidentifier,
	@CreationDate datetime,
	@UpdatedBy uniqueidentifier,
	@UpdatedDate datetime,
	@IsActive bit,
	@IsDeleted bit

AS
SET NOCOUNT ON

IF @Id = 0 BEGIN
	INSERT INTO [MatchPlayerRel] (

            [MatchId]
           ,[PlayerId]
		   ,[TokenGeneratedNumber]
           ,[HostIp]
           ,[CreatedBy]
           ,[CreationDate]
           ,[UpdatedBy]
           ,[UpdatedDate]
           ,[IsActive]
           ,[IsDeleted]

	)
	VALUES (

		@MatchId,

		@PlayerId,

		@TokenGeneratedNumber,

		@HostIp,

		@CreatedBy,

		@CreationDate,

		@UpdatedBy,

		@UpdatedDate,

		@IsActive,

		@IsDeleted
	 )
	 SELECT SCOPE_IDENTITY() AS InsertedID
END
ELSE BEGIN 
	UPDATE [MatchPlayerRel] SET 

		[MatchId] = @MatchId,

		[PlayerId] = @PlayerId,

		[TokenGeneratedNumber] = @TokenGeneratedNumber,

		[HostIp] = @HostIp,

		[CreatedBy] = @CreatedBy,

		[CreationDate] = @CreationDate,

		[UpdatedBy] = @UpdatedBy,
		
		[UpdatedDate] = @UpdatedDate,
		
		[IsActive] = @IsActive,

		[IsDeleted] = @IsDeleted

	WHERE [Id] = @Id
SELECT @Id
END


SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_MatchPlayertRel_lst]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_MatchPlayertRel_lst]
AS
SET NOCOUNT ON

SELECT [Id]
      ,[MatchId]
      ,[PlayerId]
      ,[HostIp]
      ,[CreatedBy]
      ,[CreationDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
      ,[IsActive]
      ,[IsDeleted]
  FROM [dbo].[MatchPlayerRel] WHERE [IsDeleted] = 0

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_MatchPriceRel_del]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_MatchPriceRel_del]
	@Id int
AS
SET NOCOUNT ON

UPDATE MatchPriceRel
SET [IsDeleted] = 1 WHERE [Id] = @Id

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_MatchPriceRel_lst]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_MatchPriceRel_lst]
AS
SET NOCOUNT ON

SELECT [Id]
     ,[MatchId]
	  ,[DisplayPosition]
	  ,[FileName]
      ,[HostIp]
      ,[CreatedBy]
      ,[CreationDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
      ,[IsActive]
      ,[IsDeleted]
  FROM [dbo].[MatchPriceRel] WHERE [IsDeleted] = 0

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_MatchPriceRel_lstpage]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_MatchPriceRel_lstpage]
(
@pageNum INT, @pageSize INT, @TotalRecords INT NULL OUTPUT )
AS
SET NOCOUNT ON;

WITH PagingCTE AS
	( SELECT [Id]
      ,[MatchId]
      ,[DisplayPosition]
	  ,[FileName]
      ,[HostIp]
      ,[CreatedBy]
      ,[CreationDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
      ,[IsActive]
      ,[IsDeleted]
, ROW_NUMBER() OVER (ORDER BY [Id]) AS RowNumber FROM [MatchPriceRel] WITH(NOLOCK) WHERE [IsDeleted] = 0

) SELECT PagingCTE.* FROM PagingCTE WHERE RowNumber BETWEEN (@pageNum - 1) * @pageSize + 1 AND @pageNum * @pageSize;
Select @TotalRecords = COUNT([Id]) FROM [MatchPriceRel] WITH(NOLOCK)	WHERE [IsDeleted] = 0
SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_MatchPriceRel_sel]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_MatchPriceRel_sel]
	@Id uniqueidentifier
AS
SET NOCOUNT ON

SELECT [Id]
      ,[MatchId]
	  ,[DisplayPosition]
	  ,[FileName]
      ,[HostIp]
      ,[CreatedBy]
      ,[CreationDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
      ,[IsActive]
      ,[IsDeleted]
  FROM [dbo].[MatchPriceRel]

WHERE [IsDeleted] = 0 AND [MatchId] = @Id
ORDER BY DisplayPosition

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_MatchPriceRel_ups]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROC [dbo].[udp_MatchPriceRel_ups]

	@Id int,
	@MatchId uniqueidentifier,
	@DisplayPosition int,
	@FileName nvarchar(4000),
	@HostIp nvarchar(50),
	@CreatedBy uniqueidentifier,
	@CreationDate datetime,
	@UpdatedBy uniqueidentifier,
	@UpdatedDate datetime,
	@IsActive bit,
	@IsDeleted bit

AS
SET NOCOUNT ON

IF @Id = 0 BEGIN
	INSERT INTO [MatchPriceRel] (

            [MatchId]
           ,[DisplayPosition]
		   ,[FileName]
           ,[HostIp]
           ,[CreatedBy]
           ,[CreationDate]
           ,[UpdatedBy]
           ,[UpdatedDate]
           ,[IsActive]
           ,[IsDeleted]

	)
	VALUES (

		@MatchId,

		@DisplayPosition,

		@FileName,

		@HostIp,

		@CreatedBy,

		@CreationDate,

		@UpdatedBy,

		@UpdatedDate,

		@IsActive,

		@IsDeleted
	 )
	 SELECT SCOPE_IDENTITY() AS InsertedID
END
ELSE BEGIN 
	UPDATE [MatchPriceRel] SET 

		[MatchId] = @MatchId,

		[DisplayPosition] = @DisplayPosition,

		[FileName] = @FileName,

		[HostIp] = @HostIp,

		[CreatedBy] = @CreatedBy,

		[CreationDate] = @CreationDate,

		[UpdatedBy] = @UpdatedBy,
		
		[UpdatedDate] = @UpdatedDate,
		
		[IsActive] = @IsActive,

		[IsDeleted] = @IsDeleted

	WHERE [Id] = @Id
SELECT @Id
END


SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_MatchToken_del]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_MatchToken_del]
	@Id int
AS
SET NOCOUNT ON

UPDATE MatchToken
SET [IsDeleted] = 1 WHERE [Id] = @Id

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_MatchToken_lst]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_MatchToken_lst]
AS
SET NOCOUNT ON

SELECT [Id]
      ,[MatchTokenId]
      ,[MatchId]
      ,[MatchToken]
      ,[HostIp]
      ,[CreatedBy]
      ,[CreationDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
      ,[IsActive]
      ,[IsDeleted]
  FROM [dbo].[MatchToken] WHERE [IsDeleted] = 0

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_MatchToken_lstpage]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_MatchToken_lstpage]
(
@pageNum INT, @pageSize INT, @TotalRecords INT NULL OUTPUT )
AS
SET NOCOUNT ON;

WITH PagingCTE AS
	( SELECT [Id]
      ,[MatchTokenId]
      ,[MatchId]
      ,[MatchToken]
      ,[HostIp]
      ,[CreatedBy]
      ,[CreationDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
      ,[IsActive]
      ,[IsDeleted]
, ROW_NUMBER() OVER (ORDER BY [Id]) AS RowNumber FROM [MatchToken] WITH(NOLOCK) WHERE [IsDeleted] = 0

) SELECT PagingCTE.* FROM PagingCTE WHERE RowNumber BETWEEN (@pageNum * 1) * @pageSize * 1 AND @pageNum * @pageSize;
Select @TotalRecords = COUNT([Id]) FROM [MatchToken] WITH(NOLOCK)	WHERE [IsDeleted] = 0
SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_MatchToken_sel]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_MatchToken_sel]
	@Id uniqueidentifier
AS
SET NOCOUNT ON

SELECT [Id]
      ,[MatchTokenId]
      ,[MatchId]
      ,[MatchToken]
      ,[HostIp]
      ,[CreatedBy]
      ,[CreationDate]
      ,[UpdatedBy]
      ,[UpdatedDate]
      ,[IsActive]
      ,[IsDeleted]
  FROM [dbo].[MatchToken]
WHERE [IsDeleted] = 0 AND [MatchTokenId] = @Id

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_MatchToken_ups]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_MatchToken_ups]

	@Id int,
	@MatchTokenId uniqueidentifier,
	@MatchId uniqueidentifier,
	@MatchToken nvarchar(4000),
	@HostIp nvarchar(50),
	@CreatedBy uniqueidentifier,
	@CreationDate datetime,
	@UpdatedBy uniqueidentifier,
	@UpdatedDate datetime,
	@IsActive bit,
	@IsDeleted bit

AS
SET NOCOUNT ON

IF @Id = 0 BEGIN
	INSERT INTO [MatchToken] (
		
		 [MatchTokenId]
		,[MatchId]
		,[MatchToken]
		,[HostIp]
		,[CreatedBy]
		,[CreationDate]
		,[UpdatedBy]
		,[UpdatedDate]
		,[IsActive]
		,[IsDeleted]

	)
	VALUES (

		@MatchTokenId,

		@MatchId,

		@MatchToken,

		@HostIp,

		@CreatedBy,

		@CreationDate,

		@UpdatedBy,

		@UpdatedDate,

		@IsActive,

		@IsDeleted
	 )
	 SELECT @MatchId AS InsertedID
END
ELSE BEGIN 
	UPDATE [MatchToken] SET 


		[MatchTokenId] = @MatchTokenId,

		[MatchId] = @MatchId,

		[MatchToken] = @MatchToken,

		[HostIp] = @HostIp,

		[CreatedBy] = @CreatedBy,

		[CreationDate] = @CreationDate,

		[UpdatedBy] = @UpdatedBy,
		
		[UpdatedDate] = @UpdatedDate,
		
		[IsActive] = @IsActive,

		[IsDeleted] = @IsDeleted

	WHERE [MatchTokenId] = @MatchTokenId
SELECT @MatchTokenId
END


SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_MatchWinner_lst]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_MatchWinner_lst]
	@Id uniqueidentifier
AS
SET NOCOUNT ON

SELECT MPPR.[Id]
      ,MPPR.[MatchId]
      ,MPPR.[PlayerId]
	  ,PD.[Name] as 'PlayerName'
	  ,MPPR.[ClaimedPrize]
      ,MPPR.[HostIp]
      ,MPPR.[CreatedBy]
      ,MPPR.[CreationDate]
      ,MPPR.[UpdatedBy]
      ,MPPR.[UpdatedDate]
      ,MPPR.[IsActive]
      ,MPPR.[IsDeleted]
	  ,MPPR.[FirstLine]
	  ,MPPR.[SecondLine]
	  ,MPPR.[ThirdLine]
	  ,MPPR.[FullHousie]
  FROM [dbo].[MatchPlayerPointRel] MPPR
  Inner Join dbo.[PlayerDetails] PD
  On MPPR.PlayerId = PD.PlayerId

WHERE MPPR.[IsDeleted] = 0 AND MPPR.[MatchId] = @Id

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_PlayerDetails_del]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_PlayerDetails_del]
	@Id int
AS
SET NOCOUNT ON

UPDATE PlayerDetails
SET [IsDeleted] = 1 WHERE [Id] = @Id

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_PlayerDetails_lst]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_PlayerDetails_lst]
AS
SET NOCOUNT ON

SELECT [Id],
	[PlayerId],
	[Name],
	[Email],
	[MobileNumber],
	[Address],
	[PasswordHash],
	[HostIp],
	[CreatedBy],
	[CreationDate],
	[UpdatedBy],
	[UpdatedDate],
	[IsActive],
	[IsDeleted]
FROM PlayerDetails WHERE [IsDeleted] = 0

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_PlayerDetails_lstpage]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_PlayerDetails_lstpage]
(
@pageNum INT, @pageSize INT, @TotalRecords INT NULL OUTPUT )
AS
SET NOCOUNT ON;

WITH PagingCTE AS
	( SELECT [Id],
	[PlayerId],
	[Name],
	[Email],
	[MobileNumber],
	[PasswordHash],
	[HostIp],
	[CreatedBy],
	[CreationDate],
	[UpdatedBy],
	[UpdatedDate],
	[IsActive],
	[IsDeleted]
, ROW_NUMBER() OVER (ORDER BY [Id]) AS RowNumber FROM PlayerDetails WITH(NOLOCK) WHERE [IsDeleted] = 0

) SELECT PagingCTE.* FROM PagingCTE WHERE RowNumber BETWEEN (@pageNum - 1) * @pageSize + 1 AND @pageNum * @pageSize;
Select @TotalRecords = COUNT([Id]) FROM PlayerDetails WITH(NOLOCK)	WHERE [IsDeleted] = 0
SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_PlayerDetails_sel]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_PlayerDetails_sel]
	@Id uniqueidentifier
AS
SET NOCOUNT ON

SELECT [Id],
	[PlayerId],
	[Name],
	[Email],
	[MobileNumber],
	[Address],
	[PasswordHash],
	[HostIp],
	[CreatedBy],
	[CreationDate],
	[UpdatedBy],
	[UpdatedDate],
	[IsActive],
	[IsDeleted]
FROM PlayerDetails 
WHERE [IsDeleted] = 0 AND [PlayerId] = @Id

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_PlayerDetails_ups]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_PlayerDetails_ups]
	@Id int,
	@PlayerId uniqueidentifier,
	@Name nvarchar(1000),
	@Email nvarchar(1000),
	@MobileNumber nvarchar(1000),
	@Address nvarchar(4000),
	@PasswordHash nvarchar(4000),
	@HostIp nvarchar(50),
	@CreatedBy uniqueidentifier,
	@CreationDate datetime,
	@UpdatedBy uniqueidentifier,
	@UpdatedDate datetime,
	@IsActive bit,
	@IsDeleted bit
AS
SET NOCOUNT ON

IF @Id = 0 BEGIN
	INSERT INTO PlayerDetails (

		[PlayerId],

		[Name],

		[Email],

		[MobileNumber],

		[Address],

		[PasswordHash],

		[HostIp],

		[CreatedBy],

		[CreationDate],

		[UpdatedBy],

		[UpdatedDate],

		[IsActive],

		[IsDeleted]

	)
	VALUES (

		@PlayerId, 

		@Name,

		@Email,

		@MobileNumber,

		@Address,

		@PasswordHash,

		@HostIp,

		@CreatedBy, 

		@CreationDate,

		@UpdatedBy,

		@UpdatedDate,

		@IsActive,

		@IsDeleted
	 )
	 SELECT @PlayerId AS InsertedID
END
ELSE BEGIN 
	UPDATE PlayerDetails SET 

		[PlayerId] = @PlayerId,

		[Name] = @Name,

		[Email] = @Email,

		[MobileNumber] = @MobileNumber,

		[Address] = @Address,

		[PasswordHash] = @PasswordHash,

		[HostIp] = @HostIp,

		[CreatedBy] = @CreatedBy,

		[CreationDate] = @CreationDate,

		[UpdatedBy] = @UpdatedBy,
		
		[UpdatedDate] = @UpdatedDate,
		
		[IsActive] = @IsActive,

		[IsDeleted] = @IsDeleted

	WHERE [PlayerId] = @PlayerId
SELECT @PlayerId
END


SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_PlayerDetailsByEmail_sel]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROC [dbo].[udp_PlayerDetailsByEmail_sel]
	@Email nvarchar(2000)
AS
SET NOCOUNT ON

SELECT [Id],
	[PlayerId],
	[Name],
	[Email],
	[MobileNumber],
	[Address],
	[PasswordHash],
	[HostIp],
	[CreatedBy],
	[CreationDate],
	[UpdatedBy],
	[UpdatedDate],
	[IsActive],
	[IsDeleted]
FROM PlayerDetails 
WHERE [IsDeleted] = 0 AND [Email] = @Email

SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_UpcomingMatchDetails_lst]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_UpcomingMatchDetails_lst]
AS
SET NOCOUNT ON

SELECT [Id],
	[MatchId],
	[Title],
	[Description],
	[MatchDateTime],
	[MatchGeneratedNumber],
	[HostIp],
	[CreatedBy],
	[CreationDate],
	[UpdatedBy],
	[UpdatedDate],
	[IsActive],
	[IsDeleted]
FROM MatchDetails WHERE
MatchDateTime > GETDATE()
AND
 [IsDeleted] = 0
Order By MatchDateTime


SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_ValidateAdmin]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_ValidateAdmin]
	@Email nvarchar(2000),
	@PasswordHash nvarchar(4000)
AS
SET NOCOUNT ON


	SELECT [Id]
      ,[AdminId]
      ,[Name]
      ,[Email]
	FROM [dbo].[Admin]
	WHERE [IsDeleted] = 0 AND 
	([Email] = @Email AND [PasswordHash] = @PasswordHash)



SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[udp_ValidatePlayer]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_ValidatePlayer] 
@EmailId nvarchar(500), @PasswordHash nvarchar(1000) 
As
BEGIN
select
PlayerId, 
Name,
Email,
MobileNumber
from 
PlayerDetails 
where Email = @EmailId 
and 
PasswordHash = @PasswordHash 
and 
IsDeleted = 0 
and 
IsActive = 1;
END
GO
/****** Object:  StoredProcedure [dbo].[udp_WrongClaim_ups]    Script Date: 10-06-2019 18:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[udp_WrongClaim_ups]
	@MatchId uniqueidentifier,
	@PlayerId uniqueidentifier

AS
SET NOCOUNT ON


	UPDATE [MatchPlayerRel] SET 

		[IsDeleted] = 1

	WHERE [PlayerId] = @PlayerId AND [MatchId] = @MatchId
SELECT @PlayerId


SET NOCOUNT OFF
GO

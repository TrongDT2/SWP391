USE [CovidSP]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 2/23/2022 9:27:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Category_id] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 2/23/2022 9:27:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[Comment_id] [int] NOT NULL,
	[Content] [nvarchar](500) NULL,
	[User_id] [int] NOT NULL,
	[Question_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Comment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 2/23/2022 9:27:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[News_id] [int] NOT NULL,
	[Content] [nvarchar](200) NULL,
	[Image] [varchar](200) NULL,
	[Date] [date] NULL,
	[Category_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[News_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 2/23/2022 9:27:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[Question_id] [int] NOT NULL,
	[Image] [varchar](200) NULL,
	[Content] [nvarchar](500) NULL,
	[Date] [date] NULL,
	[Type] [nvarchar](50) NULL,
	[Category_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Question_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 2/23/2022 9:27:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Role_id] [int] NOT NULL,
	[Role_name] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 2/23/2022 9:27:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInfo](
	[User_id] [int] NOT NULL,
	[Username] [nvarchar](20) NULL,
	[Password] [varchar](10) NULL,
	[Phone] [int] NULL,
	[Image] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Role_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[User_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Role] ([Role_id], [Role_name]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([Role_id], [Role_name]) VALUES (2, N'Creator')
INSERT [dbo].[Role] ([Role_id], [Role_name]) VALUES (3, N'Censor')
INSERT [dbo].[Role] ([Role_id], [Role_name]) VALUES (4, N'Member')
INSERT [dbo].[Role] ([Role_id], [Role_name]) VALUES (5, N'Guest')
GO
INSERT [dbo].[UserInfo] ([User_id], [Username], [Password], [Phone], [Image], [Email], [Address], [Role_id]) VALUES (1001, N'admin', N'admin', 837061614, N'abc.xyz', N'longnthe140165@gmail.com', N'ha noi', 1)
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD FOREIGN KEY([Question_id])
REFERENCES [dbo].[Question] ([Question_id])
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD FOREIGN KEY([User_id])
REFERENCES [dbo].[UserInfo] ([User_id])
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD FOREIGN KEY([Category_id])
REFERENCES [dbo].[Category] ([Category_id])
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD FOREIGN KEY([Category_id])
REFERENCES [dbo].[Category] ([Category_id])
GO
ALTER TABLE [dbo].[UserInfo]  WITH CHECK ADD FOREIGN KEY([Role_id])
REFERENCES [dbo].[Role] ([Role_id])
GO

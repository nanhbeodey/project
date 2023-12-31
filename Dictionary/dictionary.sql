USE [master]
GO
/****** Object:  Database [dictionaryAssign]    Script Date: 15/03/2023 00:39:18 ******/
CREATE DATABASE [dictionaryAssign]

GO
USE [dictionaryAssign]
GO
/****** Object:  Table [dbo].[HistorySearch]    Script Date: 15/03/2023 00:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistorySearch](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[keyword] [nvarchar](50) NULL,
	[uid] [int] NULL,
	[type] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MapWord]    Script Date: 15/03/2023 00:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MapWord](
	[EngWordId] [int] NULL,
	[VNWordId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 15/03/2023 00:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](150) NULL,
	[full_name] [nvarchar](150) NULL,
	[gender] [bit] NULL,
	[phone] [nchar](11) NULL,
	[password] [nvarchar](50) NULL,
	[dob] [date] NULL,
	[create_date] [date] NULL,
	[address] [nvarchar](150) NULL,
 CONSTRAINT [PK_Users_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WordsInEnglish]    Script Date: 15/03/2023 00:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WordsInEnglish](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[word] [nvarchar](50) NULL,
	[definition] [ntext] NULL,
	[exp] [ntext] NULL,
 CONSTRAINT [PK_WordsInEnglish] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WordsInVN]    Script Date: 15/03/2023 00:39:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WordsInVN](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[word] [nvarchar](50) NULL,
	[definition] [ntext] NULL,
	[exp] [ntext] NULL,
 CONSTRAINT [PK_WordsInVN] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[MapWord] ([EngWordId], [VNWordId]) VALUES (1, 1)
INSERT [dbo].[MapWord] ([EngWordId], [VNWordId]) VALUES (2, 2)
INSERT [dbo].[MapWord] ([EngWordId], [VNWordId]) VALUES (3, 3)
INSERT [dbo].[MapWord] ([EngWordId], [VNWordId]) VALUES (6, 5)
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id], [email], [full_name], [gender], [phone], [password], [dob], [create_date], [address]) VALUES (1, N'thientm01@gmail.com', N'thai bao11', 0, N'0378317199 ', N'123456', CAST(N'2023-03-06' AS Date), CAST(N'2023-03-11' AS Date), N'hong cho anh oi1')
INSERT [dbo].[Users] ([id], [email], [full_name], [gender], [phone], [password], [dob], [create_date], [address]) VALUES (2, N'alolacotien@gmail.com', N'Alo Là Có Tiền', 1, N'0986668888 ', N'321', CAST(N'2023-03-09' AS Date), CAST(N'2023-02-28' AS Date), N'Ha Noi')
INSERT [dbo].[Users] ([id], [email], [full_name], [gender], [phone], [password], [dob], [create_date], [address]) VALUES (4, N'vietthai@gmail.com', N'Nguyễn Việt Thái', 1, N'0859009567 ', N'050402', CAST(N'2002-04-05' AS Date), CAST(N'2023-03-12' AS Date), N'Nghe An')
INSERT [dbo].[Users] ([id], [email], [full_name], [gender], [phone], [password], [dob], [create_date], [address]) VALUES (5, N'kante@gmail.com', N'Kante', 1, N'099981934  ', N'1234', CAST(N'1997-01-01' AS Date), CAST(N'2023-03-12' AS Date), N'England')
INSERT [dbo].[Users] ([id], [email], [full_name], [gender], [phone], [password], [dob], [create_date], [address]) VALUES (7, N'ricon@richa.com', N'Rolando', 1, N'09183412   ', N'123', CAST(N'2001-02-01' AS Date), CAST(N'2023-03-12' AS Date), N'Porugal')
INSERT [dbo].[Users] ([id], [email], [full_name], [gender], [phone], [password], [dob], [create_date], [address]) VALUES (8, N'alibaba@gmail.com', N'Alibaba', 0, N'08345325   ', N'987', CAST(N'2023-03-12' AS Date), CAST(N'2023-03-12' AS Date), N'FPT')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[WordsInEnglish] ON 

INSERT [dbo].[WordsInEnglish] ([id], [word], [definition], [exp]) VALUES (1, N'helooo1111', N'helooo1111', N'helooo1111')
INSERT [dbo].[WordsInEnglish] ([id], [word], [definition], [exp]) VALUES (2, N'Thanks', N'expression(s) of gratitude', N'exxx2')
INSERT [dbo].[WordsInEnglish] ([id], [word], [definition], [exp]) VALUES (3, N'Soccer', N'football played according to certain rules', N'exx3')
INSERT [dbo].[WordsInEnglish] ([id], [word], [definition], [exp]) VALUES (4, N'anhtieng', N'anhtieng1', N'anhtieng2')
INSERT [dbo].[WordsInEnglish] ([id], [word], [definition], [exp]) VALUES (5, N'john', N'witch', N'done')
INSERT [dbo].[WordsInEnglish] ([id], [word], [definition], [exp]) VALUES (6, N'duma nhugn ting anh', N'1eng', N'anhtieng2')
SET IDENTITY_INSERT [dbo].[WordsInEnglish] OFF
GO
SET IDENTITY_INSERT [dbo].[WordsInVN] ON 

INSERT [dbo].[WordsInVN] ([id], [word], [definition], [exp]) VALUES (1, N'Xin Chào12', N'tỏ thái độ kính trọng hoặc quan tâm đối với ai bằng lời nói12', N'vd1112')
INSERT [dbo].[WordsInVN] ([id], [word], [definition], [exp]) VALUES (2, N'Cảm ơn', N'lời cảm ơn', N'vd2')
INSERT [dbo].[WordsInVN] ([id], [word], [definition], [exp]) VALUES (3, N'Bóng đá', N'môn thể thao chia thành hai đội, cầu thủ dùng chân điều khiển bóng và tìm cách dùng chân hoặc đầu đưa bóng lọt vào khung thành của đối phương', N'vd3')
INSERT [dbo].[WordsInVN] ([id], [word], [definition], [exp]) VALUES (4, N'adu123', N'adu1234', N'adu12345')
INSERT [dbo].[WordsInVN] ([id], [word], [definition], [exp]) VALUES (5, N'thiện', N'bảo', N'đinh')
SET IDENTITY_INSERT [dbo].[WordsInVN] OFF
GO
ALTER TABLE [dbo].[MapWord]  WITH CHECK ADD  CONSTRAINT [FK_MapWord_WordsInEnglish] FOREIGN KEY([EngWordId])
REFERENCES [dbo].[WordsInEnglish] ([id])
GO
ALTER TABLE [dbo].[MapWord] CHECK CONSTRAINT [FK_MapWord_WordsInEnglish]
GO
ALTER TABLE [dbo].[MapWord]  WITH CHECK ADD  CONSTRAINT [FK_MapWord_WordsInVN] FOREIGN KEY([VNWordId])
REFERENCES [dbo].[WordsInVN] ([id])
GO
ALTER TABLE [dbo].[MapWord] CHECK CONSTRAINT [FK_MapWord_WordsInVN]
GO
USE [master]
GO
ALTER DATABASE [dictionaryAssign] SET  READ_WRITE 
GO

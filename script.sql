USE [master]
GO
/****** Object:  Database [NCKH]    Script Date: 5/16/2022 4:52:38 PM ******/
CREATE DATABASE [NCKH]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NCKH', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\NCKH.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'NCKH_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\NCKH_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [NCKH] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NCKH].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NCKH] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NCKH] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NCKH] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NCKH] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NCKH] SET ARITHABORT OFF 
GO
ALTER DATABASE [NCKH] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NCKH] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NCKH] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NCKH] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NCKH] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NCKH] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NCKH] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NCKH] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NCKH] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NCKH] SET  DISABLE_BROKER 
GO
ALTER DATABASE [NCKH] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NCKH] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NCKH] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NCKH] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NCKH] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NCKH] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NCKH] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NCKH] SET RECOVERY FULL 
GO
ALTER DATABASE [NCKH] SET  MULTI_USER 
GO
ALTER DATABASE [NCKH] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NCKH] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NCKH] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NCKH] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [NCKH] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [NCKH] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'NCKH', N'ON'
GO
ALTER DATABASE [NCKH] SET QUERY_STORE = OFF
GO
USE [NCKH]
GO
/****** Object:  Table [dbo].[catergory]    Script Date: 5/16/2022 4:52:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[catergory](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [nvarchar](250) NULL,
	[DisplayOrder] [int] NULL,
	[Status] [bit] NULL,
	[CreateDate] [date] NULL,
	[IDMenu] [bigint] NULL,
 CONSTRAINT [PK_catergory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Content]    Script Date: 5/16/2022 4:52:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Content](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [ntext] NULL,
	[MetaTitle] [nvarchar](250) NULL,
	[Image] [nvarchar](250) NULL,
	[Detail] [ntext] NULL,
	[CatergoryID] [bigint] NULL,
	[CreateDate] [datetime] NULL,
	[Status] [bit] NULL,
	[TopHot] [datetime] NULL,
 CONSTRAINT [PK_Content] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HeadLine]    Script Date: 5/16/2022 4:52:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HeadLine](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Status] [bit] NULL,
	[CreateDate] [date] NULL,
	[DisplayOrder] [int] NULL,
 CONSTRAINT [PK_HeadLine] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 5/16/2022 4:52:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Metatitle] [nvarchar](max) NULL,
	[DisplayOrder] [int] NULL,
	[CreateDate] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slide]    Script Date: 5/16/2022 4:52:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slide](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](50) NULL,
	[Link] [nvarchar](50) NULL,
	[DisplayOrder] [int] NULL,
	[Status] [bit] NULL,
	[CreateDate] [date] NULL,
 CONSTRAINT [PK_Slide] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 5/16/2022 4:52:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[PassWord] [nvarchar](32) NULL,
	[Status] [bit] NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[catergory] ON 

INSERT [dbo].[catergory] ([ID], [Name], [MetaTitle], [DisplayOrder], [Status], [CreateDate], [IDMenu]) VALUES (10011, N'Thư ngỏ của hiệu trưởng', NULL, 1, 1, CAST(N'2022-04-25' AS Date), 1)
INSERT [dbo].[catergory] ([ID], [Name], [MetaTitle], [DisplayOrder], [Status], [CreateDate], [IDMenu]) VALUES (10012, N'Cơ cấu hình thành tổ chức', NULL, 1, 1, CAST(N'2022-04-25' AS Date), 1)
INSERT [dbo].[catergory] ([ID], [Name], [MetaTitle], [DisplayOrder], [Status], [CreateDate], [IDMenu]) VALUES (10013, N'Sứ mạng-tầm nhìn-giá trị cốt lõi', NULL, 1, 1, CAST(N'2022-04-25' AS Date), 1)
INSERT [dbo].[catergory] ([ID], [Name], [MetaTitle], [DisplayOrder], [Status], [CreateDate], [IDMenu]) VALUES (10014, N'Cơ cấu tổ chức', NULL, 1, 1, CAST(N'2022-04-25' AS Date), 1)
INSERT [dbo].[catergory] ([ID], [Name], [MetaTitle], [DisplayOrder], [Status], [CreateDate], [IDMenu]) VALUES (10015, N'Số điện thoại lãnh đạo đơn vị', NULL, 1, 1, CAST(N'2022-04-25' AS Date), 1)
INSERT [dbo].[catergory] ([ID], [Name], [MetaTitle], [DisplayOrder], [Status], [CreateDate], [IDMenu]) VALUES (10016, N'Liên hệ trợ lý các đơn vị', NULL, 1, 1, CAST(N'2022-04-25' AS Date), 1)
INSERT [dbo].[catergory] ([ID], [Name], [MetaTitle], [DisplayOrder], [Status], [CreateDate], [IDMenu]) VALUES (10017, N'Cựu sinh viên', NULL, 1, 1, CAST(N'2022-04-26' AS Date), 2)
INSERT [dbo].[catergory] ([ID], [Name], [MetaTitle], [DisplayOrder], [Status], [CreateDate], [IDMenu]) VALUES (10018, N'Sinh viên hiện tại', NULL, 1, 1, CAST(N'2022-04-26' AS Date), 2)
INSERT [dbo].[catergory] ([ID], [Name], [MetaTitle], [DisplayOrder], [Status], [CreateDate], [IDMenu]) VALUES (10019, N'Sinh viên tương lai', NULL, 1, 1, CAST(N'2022-04-26' AS Date), 2)
INSERT [dbo].[catergory] ([ID], [Name], [MetaTitle], [DisplayOrder], [Status], [CreateDate], [IDMenu]) VALUES (10020, N'Hỗ trợ sinh viên', NULL, 1, 1, CAST(N'2022-04-26' AS Date), 2)
INSERT [dbo].[catergory] ([ID], [Name], [MetaTitle], [DisplayOrder], [Status], [CreateDate], [IDMenu]) VALUES (10021, N'Đại học', NULL, 1, 1, CAST(N'2022-04-26' AS Date), 3)
INSERT [dbo].[catergory] ([ID], [Name], [MetaTitle], [DisplayOrder], [Status], [CreateDate], [IDMenu]) VALUES (10022, N'Sau đại học', NULL, 1, 1, CAST(N'2022-04-26' AS Date), 3)
INSERT [dbo].[catergory] ([ID], [Name], [MetaTitle], [DisplayOrder], [Status], [CreateDate], [IDMenu]) VALUES (10023, N'Vừa học vừa làm', NULL, 1, 1, CAST(N'2022-04-26' AS Date), 3)
INSERT [dbo].[catergory] ([ID], [Name], [MetaTitle], [DisplayOrder], [Status], [CreateDate], [IDMenu]) VALUES (10024, N'Các khoa', NULL, 1, 1, CAST(N'2022-04-26' AS Date), 4)
INSERT [dbo].[catergory] ([ID], [Name], [MetaTitle], [DisplayOrder], [Status], [CreateDate], [IDMenu]) VALUES (10025, N'Bộ môn', NULL, 1, 1, CAST(N'2022-04-26' AS Date), 4)
INSERT [dbo].[catergory] ([ID], [Name], [MetaTitle], [DisplayOrder], [Status], [CreateDate], [IDMenu]) VALUES (10026, N'Phòng chức năng', NULL, 1, 1, CAST(N'2022-04-26' AS Date), 4)
INSERT [dbo].[catergory] ([ID], [Name], [MetaTitle], [DisplayOrder], [Status], [CreateDate], [IDMenu]) VALUES (10027, N'Trung tâm', NULL, 1, 1, CAST(N'2022-04-26' AS Date), 4)
INSERT [dbo].[catergory] ([ID], [Name], [MetaTitle], [DisplayOrder], [Status], [CreateDate], [IDMenu]) VALUES (10028, N'Tổ chức đoàn thể', NULL, 1, 1, CAST(N'2022-04-26' AS Date), 4)
INSERT [dbo].[catergory] ([ID], [Name], [MetaTitle], [DisplayOrder], [Status], [CreateDate], [IDMenu]) VALUES (10029, N'Biểu bẫu từ phòng đào tạo', NULL, 1, 1, CAST(N'2022-04-26' AS Date), 5)
INSERT [dbo].[catergory] ([ID], [Name], [MetaTitle], [DisplayOrder], [Status], [CreateDate], [IDMenu]) VALUES (10030, N'Biểu bẫu từ phòng Khảo thí DGCLGD', NULL, 1, 1, CAST(N'2022-04-26' AS Date), 5)
INSERT [dbo].[catergory] ([ID], [Name], [MetaTitle], [DisplayOrder], [Status], [CreateDate], [IDMenu]) VALUES (10031, N'Biểu bẫu từ phòng công tác sinh viên', NULL, 1, 1, CAST(N'2022-04-26' AS Date), 5)
INSERT [dbo].[catergory] ([ID], [Name], [MetaTitle], [DisplayOrder], [Status], [CreateDate], [IDMenu]) VALUES (10032, N'Hợp tác trong nước', NULL, 1, 1, CAST(N'2022-04-26' AS Date), 6)
INSERT [dbo].[catergory] ([ID], [Name], [MetaTitle], [DisplayOrder], [Status], [CreateDate], [IDMenu]) VALUES (10033, N'Hợp tác quốc tế', NULL, 1, 1, CAST(N'2022-04-26' AS Date), 6)
INSERT [dbo].[catergory] ([ID], [Name], [MetaTitle], [DisplayOrder], [Status], [CreateDate], [IDMenu]) VALUES (10034, N'Các văn bản liên quan', NULL, 1, 1, CAST(N'2022-04-26' AS Date), 6)
INSERT [dbo].[catergory] ([ID], [Name], [MetaTitle], [DisplayOrder], [Status], [CreateDate], [IDMenu]) VALUES (10035, N'Tin tức', NULL, 1, 1, CAST(N'2022-04-26' AS Date), 7)
INSERT [dbo].[catergory] ([ID], [Name], [MetaTitle], [DisplayOrder], [Status], [CreateDate], [IDMenu]) VALUES (10036, N'Thông báo', NULL, 1, 1, CAST(N'2022-04-26' AS Date), 7)
INSERT [dbo].[catergory] ([ID], [Name], [MetaTitle], [DisplayOrder], [Status], [CreateDate], [IDMenu]) VALUES (10037, N'Sự kiện', NULL, 1, 1, CAST(N'2022-04-26' AS Date), 7)
INSERT [dbo].[catergory] ([ID], [Name], [MetaTitle], [DisplayOrder], [Status], [CreateDate], [IDMenu]) VALUES (10038, N'Nhịp đập HUNRE', NULL, 1, 1, CAST(N'2022-04-26' AS Date), 7)
INSERT [dbo].[catergory] ([ID], [Name], [MetaTitle], [DisplayOrder], [Status], [CreateDate], [IDMenu]) VALUES (10040, N'Khoa Công nghệ thông tin', NULL, 1, 1, CAST(N'2022-05-15' AS Date), 10)
INSERT [dbo].[catergory] ([ID], [Name], [MetaTitle], [DisplayOrder], [Status], [CreateDate], [IDMenu]) VALUES (10041, N'Tin khoa học', NULL, 1, 1, CAST(N'2022-05-16' AS Date), 9)
SET IDENTITY_INSERT [dbo].[catergory] OFF
GO
SET IDENTITY_INSERT [dbo].[Content] ON 

INSERT [dbo].[Content] ([ID], [Name], [MetaTitle], [Image], [Detail], [CatergoryID], [CreateDate], [Status], [TopHot]) VALUES (13, N'Tổ chức thành công tọa đàm: "Tương lai phát triển và cơ hội nghề nghiệp trong ngành khách sạn tại Việt Nam"', NULL, N'/asset/Image/images/IMG_8564-cr-522x422.JPG', N'<p style="text-align:justify"><span style="color:black"><em>S&aacute;ng ng&agrave;y 10/05, tại Hội trường lớn, Khoa kinh tế t&agrave;i nguy&ecirc;n v&agrave; M&ocirc;i trường đ&atilde; tổ chức th&agrave;nh c&ocirc;ng tọa đ&agrave;m &ldquo;Tương lai ph&aacute;t triển v&agrave; cơ hội nghề nghiệp trong ng&agrave;nh kh&aacute;ch sạn tại Việt Nam&rdquo;. Tọa đ&agrave;m c&oacute; sự tham gia của 2 diễn giả l&agrave;&nbsp;B&agrave; Vũ Thị Mai - Gi&aacute;m đốc nh&acirc;n sự Kh&aacute;ch sạn Sheraton H&agrave; Nội v&agrave; b&agrave; L&ecirc; Phương Thảo &ndash; Gi&aacute;m đốc nh&acirc;n sự Kh&aacute;ch sạn JW Marriott Hotel Hanoi.</em></span></p>

<p style="text-align:justify"><span style="color:black">Về ph&iacute;a trường ĐH TN&amp;MT HN c&oacute; sự tham gia của TS. Nguyễn Hoản &ndash; Trưởng khoa KTTN&amp;MT; TS. Ho&agrave;ng Đ&igrave;nh Hương &ndash; Ph&oacute; trưởng khoa KTTN&amp;MT;&nbsp;TS. Trần Minh Nguyệt&nbsp;&ndash; Ph&oacute; trưởng khoa KTTN&amp;MT;&nbsp;c&aacute;c thầy c&ocirc; l&agrave; trưởng, ph&oacute; c&aacute;c bộ m&ocirc;n v&agrave; hơn 200 sinh vi&ecirc;n ng&agrave;nh Quản trị kh&aacute;ch sạn, Quản trị dịch vụ du lịch v&agrave; lữ h&agrave;nh.</span></p>

<p><img src="https://hunre.edu.vn/media/data/Cac-Khoa/Khoa-Kinh-te/T%E1%BB%8Da_%C4%91am_QTKS/IMG_8564.JPG" /></p>

<p style="text-align:center"><em>C&aacute;c diễn giả chia sẻ về tương lai ph&aacute;t triển v&agrave; cơ hội nghề nghiệp của ng&agrave;nh kh&aacute;ch sạn tại buổi tọa đ&agrave;m</em></p>

<p style="text-align:justify"><span style="color:black">Nội dung buổi tọa đ&agrave;m được chia th&agrave;nh 3 phần:</span></p>

<ul style="list-style-type:disc">
	<li style="text-align:justify"><span style="color:black">Phần 1: Tương lai ph&aacute;t triển ng&agrave;nh kh&aacute;ch sạn tại Việt Nam</span></li>
	<li style="text-align:justify"><span style="color:black">Phần 2:&nbsp;Cơ hội nghề nghiệp trong ng&agrave;nh kh&aacute;ch sạn tại Việt Nam &ndash; Kh&aacute;ch sạn&nbsp;</span><span style="background-color:white; color:black">Sheraton Hanoi &amp; JW Marriott Hanoi Hotel</span></li>
	<li style="text-align:justify"><span style="color:black">Phần 3:&nbsp;Giao lưu v&agrave; trả lời c&acirc;u hỏi giữa sinh vi&ecirc;n v&agrave; kh&aacute;ch mời</span></li>
</ul>

<p><span style="color:#050505">Tại buổi toạ đ&agrave;m, Ms. Vũ Thị Mai v&agrave; Ms. L&ecirc; Phương Thảo đ&atilde; gi&uacute;p c&aacute;c bạn sinh vi&ecirc;n ng&agrave;nh Du lịch - Kh&aacute;ch sạn c&oacute; được định hướng r&otilde; r&agrave;ng về ng&agrave;nh nghề m&igrave;nh đang theo đuổi, đồng thời chia sẻ những kinh nghiệm v&agrave; tips trong qu&aacute; tr&igrave;nh tuyển dụng cũng như đi l&agrave;m sau n&agrave;y. C&aacute;c bạn sinh vi&ecirc;n đ&atilde; học hỏi th&ecirc;m được nhiều điều hay, bổ &iacute;ch v&agrave; được truyền lửa, được tiếp th&ecirc;m sức mạnh bởi sự động vi&ecirc;n, kh&iacute;ch lệ của chị Mai v&agrave; chị Thảo. C&aacute;c diễn giả cũng tận t&igrave;nh giải đ&aacute;p c&aacute;c thắc mắc của c&aacute;c bạn sinh vi&ecirc;n như mức lương, con đường thăng tiến của nghề,...</span></p>

<p><img src="https://hunre.edu.vn/media/data/Cac-Khoa/Khoa-Kinh-te/T%E1%BB%8Da_%C4%91am_QTKS/IMG_8562.JPG" /></p>

<p style="text-align:center"><span style="color:black"><em>B&agrave; Vũ Thị Mai - Gi&aacute;m đốc nh&acirc;n sự Kh&aacute;ch sạn Sheraton H&agrave; Nội v&agrave; b&agrave; L&ecirc; Phương Thảo &ndash; Gi&aacute;m đốc nh&acirc;n sự Kh&aacute;ch sạn JW Marriott Hotel Hanoi.</em></span></p>

<p><span style="color:#050505">Th&ocirc;ng qua buổi tọa đ&agrave;m, c&aacute;c bạn sinh vi&ecirc;n đ&atilde; học hỏi được rất nhiều kiến thức v&agrave; kinh nghiệm từ thế hệ đ&agrave;n anh đ&agrave;n chị đi trước, c&oacute; c&aacute;i nh&igrave;n tổng quan về lĩnh vực kh&aacute;ch sạn, lữ h&agrave;nh, qua đ&oacute; c&oacute; những quyết định đ&uacute;ng đắn trong việc lựa chọn con đường ph&aacute;t triển nghề nghiệp tương lai theo đ&uacute;ng năng lực v&agrave; sở trường của m&igrave;nh.</span></p>

<p><img src="https://hunre.edu.vn/media/data/Cac-Khoa/Khoa-Kinh-te/T%E1%BB%8Da_%C4%91am_QTKS/IMG_8550.JPG" /></p>

<p style="text-align:center"><span style="color:black"><em>TS. Nguyễn Hoản &ndash; Trưởng khoa KTTN&amp;MT ph&aacute;t biểu tại tọa đ&agrave;m</em></span></p>

<p><span style="color:#050505">Buổi tọa đ&agrave;m đ&atilde; diễn ra trong kh&ocirc;ng kh&iacute; vui vẻ, cởi mở, ấm c&uacute;ng v&agrave; kết th&uacute;c th&agrave;nh c&ocirc;ng tốt đẹp. Nh&agrave; trường xin gửi lời cảm ơn s&acirc;u sắc đến Ms. Vũ Thị Mai v&agrave; Ms. L&ecirc; Phương thảo c&ugrave;ng c&aacute;c thầy c&ocirc; giảng vi&ecirc;n, c&aacute;c bạn sinh vi&ecirc;n Khoa Kinh tế T&agrave;i nguy&ecirc;n v&agrave; m&ocirc;i trường đ&atilde; d&agrave;nh thời gian chia sẻ, lắng nghe v&agrave; đ&oacute;ng g&oacute;p &yacute; kiến để buổi tọa đ&agrave;m đạt kết quả cao.</span></p>

<p><img src="https://hunre.edu.vn/media/data/Cac-Khoa/Khoa-Kinh-te/T%E1%BB%8Da_%C4%91am_QTKS/IMG_8554.JPG" /></p>

<p style="text-align:center"><span style="color:black"><em>TS. Nguyễn Hoản &ndash; Trưởng khoa KTTN&amp;MT tặng qu&agrave; lưu niệm v&agrave; cảm ơn c&aacute;c diễn giả d&atilde; tham dự tọa đ&agrave;m</em></span></p>

<p>Một số h&igrave;nh ảnh tại tọa đ&agrave;m:</p>

<p><img src="https://hunre.edu.vn/media/data/Cac-Khoa/Khoa-Kinh-te/T%E1%BB%8Da_%C4%91am_QTKS/IMG_8551.JPG" /></p>

<p><img src="https://hunre.edu.vn/media/data/Cac-Khoa/Khoa-Kinh-te/T%E1%BB%8Da_%C4%91am_QTKS/IMG_8563.JPG" /></p>

<p><img src="https://hunre.edu.vn/media/data/Cac-Khoa/Khoa-Kinh-te/T%E1%BB%8Da_%C4%91am_QTKS/IMG_8556.JPG" /></p>

<p><img src="https://hunre.edu.vn/media/data/Cac-Khoa/Khoa-Kinh-te/T%E1%BB%8Da_%C4%91am_QTKS/IMG_8555.JPG" /></p>
', 10035, CAST(N'2022-05-15T16:10:01.033' AS DateTime), 1, NULL)
INSERT [dbo].[Content] ([ID], [Name], [MetaTitle], [Image], [Detail], [CatergoryID], [CreateDate], [Status], [TopHot]) VALUES (14, N'Tổ chức thành công tọa đàm: "Tương lai phát triển và cơ hội nghề nghiệp trong ngành khách sạn tại Việt Nam"', NULL, N'/asset/Image/images/IMG_8564-cr-522x422.JPG', NULL, 10011, CAST(N'2022-05-15T16:10:31.057' AS DateTime), 1, NULL)
INSERT [dbo].[Content] ([ID], [Name], [MetaTitle], [Image], [Detail], [CatergoryID], [CreateDate], [Status], [TopHot]) VALUES (15, N'Tổ chức thành công tọa đàm: "Tương lai phát triển và cơ hội nghề nghiệp trong ngành khách sạn tại Việt Nam"', NULL, N'/asset/Image/images/IMG_8564-cr-522x422.JPG', NULL, 10011, CAST(N'2022-05-15T16:10:43.607' AS DateTime), 1, NULL)
INSERT [dbo].[Content] ([ID], [Name], [MetaTitle], [Image], [Detail], [CatergoryID], [CreateDate], [Status], [TopHot]) VALUES (16, N'Tổ chức thành công tọa đàm: "Tương lai phát triển và cơ hội nghề nghiệp trong ngành khách sạn tại Việt Nam"', NULL, N'/asset/Image/images/IMG_8564-cr-522x422.JPG', NULL, 10011, CAST(N'2022-05-15T16:11:04.023' AS DateTime), 1, NULL)
INSERT [dbo].[Content] ([ID], [Name], [MetaTitle], [Image], [Detail], [CatergoryID], [CreateDate], [Status], [TopHot]) VALUES (17, N'Tổ chức thành công tọa đàm: "Tương lai phát triển và cơ hội nghề nghiệp trong ngành khách sạn tại Việt Nam"', NULL, N'/asset/Image/images/IMG_8564-cr-522x422.JPG', NULL, 10011, CAST(N'2022-05-15T16:11:25.563' AS DateTime), 1, NULL)
INSERT [dbo].[Content] ([ID], [Name], [MetaTitle], [Image], [Detail], [CatergoryID], [CreateDate], [Status], [TopHot]) VALUES (18, N'Tổ chức thành công tọa đàm: "Tương lai phát triển và cơ hội nghề nghiệp trong ngành khách sạn tại Việt Nam"', NULL, N'/asset/Image/images/IMG_8564-cr-522x422.JPG', NULL, 10020, CAST(N'2022-05-15T16:11:41.380' AS DateTime), 1, CAST(N'2022-05-15T16:30:15.363' AS DateTime))
INSERT [dbo].[Content] ([ID], [Name], [MetaTitle], [Image], [Detail], [CatergoryID], [CreateDate], [Status], [TopHot]) VALUES (19, N'Tổ chức thành công tọa đàm: "Tương lai phát triển và cơ hội nghề nghiệp trong ngành khách sạn tại Việt Nam"', NULL, N'/asset/Image/images/IMG_8564-cr-522x422.JPG', NULL, 10040, CAST(N'2022-05-15T20:37:34.350' AS DateTime), 1, NULL)
INSERT [dbo].[Content] ([ID], [Name], [MetaTitle], [Image], [Detail], [CatergoryID], [CreateDate], [Status], [TopHot]) VALUES (20, N'Hội nghị đối thoại giữa lãnh đạo Nhà trường với học viên, sinh viên năm học 2021 - 2022', NULL, N'/asset/Image/images/tintuc.jpg', N'<p style="text-align:justify"><span style="background-color:white; color:#040707"><em>S&aacute;ng nay (29/3), tại Hội trường tầng 7, trường Đại học T&agrave;i nguy&ecirc;n v&agrave; M&ocirc;i trường H&agrave; Nội đ&atilde; tổ chức Hội nghị đối thoại giữa L&atilde;nh đạo Trường với học vi&ecirc;n, sinh vi&ecirc;n năm học 2021-2022. Tham dự hội nghị c&oacute;&nbsp;</em></span><span style="background-color:white; color:black"><em>TS.Vũ Danh Tuy&ecirc;n - Ph&oacute; B&iacute; thư Đảng ủy, Ph&oacute; Hiệu trưởng phụ tr&aacute;ch trường; PGS.TS. L&ecirc; Thị Trinh - Ph&oacute; Hiệu trưởng Nh&agrave; trường, c&ugrave;ng c&aacute;c Thầy&nbsp;c&ocirc; trong BGH Nh&agrave; trường; c&aacute;c đ/c l&agrave; l&atilde;nh đạo c&aacute;c Ph&ograve;ng Ban chức năng, c&aacute;c Khoa, Trung t&acirc;m, Bộ m&ocirc;n trực thuộc; c&aacute;c đ/c trong BCH C&ocirc;ng đo&agrave;n, Đo&agrave;n thanh ni&ecirc;n; chủ nhiệm lớp, cố vấn học tập c&aacute;c lớp. &nbsp;Lớp trưởng, b&iacute; thư đại diện sinh vi&ecirc;n trong to&agrave;n trường tham dự v&agrave; đối thoại trực tuyến.</em></span></p>

<p style="text-align:justify">Hội nghị &quot;Đối thoại giữa Nh&agrave; trường v&agrave; học vi&ecirc;n, sinh vi&ecirc;n&quot; l&agrave; hoạt động thường ni&ecirc;n được tổ chức hằng năm nhằm tạo diễn đ&agrave;n trao đổi trực tiếp giữa đại diện học vi&ecirc;n, sinh vi&ecirc;n với Ban Gi&aacute;m hiệu v&agrave; c&aacute;c Ph&ograve;ng, Ban, Khoa chuy&ecirc;n m&ocirc;n về những vấn đề c&oacute; li&ecirc;n quan đến qu&aacute; tr&igrave;nh học tập, r&egrave;n luyện v&agrave; cuộc sống của sinh vi&ecirc;n trong thời gian học tập tại Trường Đại học T&agrave;i nguy&ecirc;n v&agrave; M&ocirc;i trường H&agrave; Nội. Đồng thời, thể hiện sự quan t&acirc;m s&acirc;u sắc của Nh&agrave; trường với sinh vi&ecirc;n v&agrave; g&oacute;p phần thực hiện tốt c&ocirc;ng t&aacute;c sinh vi&ecirc;n. Th&ocirc;ng qua Hội nghị, Nh&agrave; trường nắm bắt tư tưởng, nguyện vọng sinh vi&ecirc;n, những vướng mắc, kh&oacute; khăn v&agrave; những đề xuất của sinh vi&ecirc;n trong học tập, r&egrave;n luyện, sinh hoạt. Từ đ&oacute; c&oacute; biện ph&aacute;p th&iacute;ch hợp để giải quyết nhằm tạo điều kiện tốt hơn gi&uacute;p sinh vi&ecirc;n c&oacute; cơ hội trải nghiệm tốt nhất, g&oacute;p phần n&acirc;ng cao chất lượng đ&agrave;o tạo của Trường.</p>

<p><img src="https://hunre.edu.vn/media/data/Cac-Phong---Trung-tam/CT-HSSV/%C4%90%E1%BB%91i_tho%E1%BA%A1i_sv_2022/3966bb35fc63323d6b723.jpg" style="height:900px; width:745px" /></p>

<p style="text-align:center"><em>PGS.TS Vũ Danh Tuy&ecirc;n đại diện l&atilde;nh đạo Nh&agrave; trường trả lời đối thoại tại Hội nghị</em></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify">Tại Hội nghị lần n&agrave;y, Nh&agrave; trường đ&atilde; tiếp nhận v&agrave; giải th&iacute;ch to&agrave;n bộ c&aacute;c c&acirc;u hỏi của c&aacute;c sinh vi&ecirc;n gửi về Nh&agrave; trường qua ph&ograve;ng C&ocirc;ng t&aacute;c HSSV theo c&aacute;c nh&oacute;m c&acirc;u hỏi li&ecirc;n quan đến đ&agrave;o tạo, kế hoạch t&agrave;i ch&iacute;nh, c&ocirc;ng t&aacute;c sinh vi&ecirc;n, cơ sở vật chất, thư viện v&agrave; CNTT, vấn đề Đo&agrave;n thanh ni&ecirc;n v&agrave; Đảng bộ,&hellip;. Ngo&agrave;i ra c&ograve;n c&oacute; c&aacute;c đơn vị chức năng tham gia đối thoại, giải đ&aacute;p một số thắc mắc li&ecirc;n quan của sinh vi&ecirc;n. C&aacute;c c&acirc;u hỏi của sinh vi&ecirc;n tập trung v&agrave;o c&aacute;c vấn đề như: mở lớp học lại; quy định chuẩn đầu ra của Nh&agrave; trường về kỹ năng mềm, ngoại ngữ, tin học, học bổng; mức học ph&iacute; c&aacute;c ng&agrave;nh kh&aacute;c nhau, c&aacute;ch v&agrave;o thư viện điện tử của trường trong thời gian học online, cho thu&ecirc; s&acirc;n b&oacute;ng, m&aacute;i lợp để xe sinh vi&ecirc;n,&hellip; Hầu hết c&aacute;c c&acirc;u hỏi đều được l&atilde;nh đạo trường tra lời trực tiếp tại hội nghị, những c&acirc;u hỏi bổ sung, cần trao đổi, hướng dẫn trực tiếp nh&agrave; trường sẽ c&oacute; hướng dẫn v&agrave; trả lời cụ thể đến từng lớp sau hội nghị.</p>

<p><img src="https://hunre.edu.vn/media/data/Cac-Phong---Trung-tam/CT-HSSV/%C4%90%E1%BB%91i_tho%E1%BA%A1i_sv_2022/58848dd7ca8104df5d907.jpg" style="height:900px; width:745px" /></p>

<p style="text-align:center"><em>Th.S B&ugrave;i Thu Phương - Ph&oacute; Trưởng Ph&ograve;ng Đ&agrave;o tạo trả lời c&aacute;c vấn đề đối thoại li&ecirc;n quan đến c&ocirc;ng t&aacute;c đ&agrave;o tạo</em></p>

<p><img src="https://hunre.edu.vn/media/data/Cac-Phong---Trung-tam/CT-HSSV/%C4%90%E1%BB%91i_tho%E1%BA%A1i_sv_2022/b368793b3e6df033a97c5.jpg" style="height:900px; width:1347px" /></p>

<p style="text-align:center"><em>Th.S Nguyễn Thị Thanh T&acirc;m - Ph&oacute; Trưởng ph&ograve;ng C&ocirc;ng t&aacute;c sinh vi&ecirc;n trả lời đối thoại c&aacute;c vấn đề li&ecirc;n quan đến c&ocirc;ng t&aacute;c sinh vi&ecirc;n</em></p>

<p><img src="https://hunre.edu.vn/media/data/Cac-Phong---Trung-tam/CT-HSSV/%C4%90%E1%BB%91i_tho%E1%BA%A1i_sv_2022/4e729c21db7715294c664.jpg" style="height:900px; width:1067px" /></p>

<p style="text-align:center"><em>Th.S Nguyễn Thị Hồng Hương - GĐ Trung t&acirc;m thư viện v&agrave; CNTT trả lời đối thoại về c&ocirc;ng t&aacute;c thư viện, hỗ trợ t&agrave;i khoản trực tuyến sinh vi&ecirc;n như mail, cổng th&ocirc;ng tin sinh vi&ecirc;n, thư viện điện tử,..</em></p>

<p><img src="https://hunre.edu.vn/media/data/Cac-Phong---Trung-tam/CT-HSSV/%C4%90%E1%BB%91i_tho%E1%BA%A1i_sv_2022/664948190f4fc111985e1.jpg" style="height:900px; width:1258px" /></p>

<p style="text-align:center"><em>TS Trần Minh Nguyệt - Ph&oacute; Trưởng khoa Kinh tế T&agrave;i nguy&ecirc;n v&agrave; M&ocirc;i trường trả lời dối thoại sinh vi&ecirc;n về vấn đề thực tập tốt nghiệp</em></p>

<p style="text-align:justify">Qua đối thoại cho thấy, c&aacute;c sinh vi&ecirc;n đ&atilde; &yacute; thức được quyền lợi v&agrave; tr&aacute;ch nhiệm của m&igrave;nh, mạnh dạn trao đổi, đặt vấn đề với Nh&agrave; trường về những hoạt động c&ograve;n hạn chế đối với sinh vi&ecirc;n m&agrave; c&aacute;c ph&ograve;ng chức năng cần xem x&eacute;t, tư vấn cho l&atilde;nh đạo Nh&agrave; trường để c&ocirc;ng t&aacute;c học sinh sinh vi&ecirc;n đ&aacute;p ứng được tốt hơn. Đặc biệt c&aacute;c sinh vi&ecirc;n kho&aacute;&nbsp;ĐH11 mới nhập học trong thời gian dịch bệnh chưa được học trực tiếp tại trường nhưng đ&atilde; mạnh dạn n&ecirc;u l&ecirc;n &yacute; kiến c&aacute; nh&acirc;n trong cuộc đối thoại&nbsp;</p>

<p><img src="https://hunre.edu.vn/media/data/Cac-Phong---Trung-tam/CT-HSSV/%C4%90%E1%BB%91i_tho%E1%BA%A1i_sv_2022/ec747a273d71f32faa609.jpg" style="height:498px; width:745px" /></p>

<p style="text-align:center"><em>TS. Vũ Danh Tuy&ecirc;n - Ph&oacute; Hiệu trưởng phụ tr&aacute;ch trường ph&aacute;t biểu kết luận tại hội nghị&nbsp;</em></p>

<p style="text-align:justify">Kết luận Hội nghị TS. Vũ Danh Tuy&ecirc;n khẳng định Nh&agrave; trường lu&ocirc;n sẵn s&agrave;ng hỗ trợ sinh vi&ecirc;n về mọi mặt, cam kết tạo mọi điều kiện để sinh vi&ecirc;n hoạt động phong tr&agrave;o, học tập tốt, r&egrave;n luyện tốt. Đồng thời để n&acirc;ng cao chất lượng của c&ocirc;ng t&aacute;c dạy v&agrave; học trong năm học 2021 &ndash; 2022 v&agrave; những năm học tiếp theo, TS Vũ Danh Tuy&ecirc;n mong muốn&nbsp;sinh vi&ecirc;n cần tự gi&aacute;c r&egrave;n luyện, n&acirc;ng cao &yacute; thức c&aacute; nh&acirc;n trong vấn đề học tập nhất l&agrave; lịch học, chủ động đăng k&yacute; lịch học;&nbsp;t&iacute;ch cực nắm bắt c&aacute;c quy định của Nh&agrave; nước, nội quy, quy chế&nbsp;qua Cổng th&ocirc;ng tin điện tử của trường. Nh&agrave; trường, c&aacute;c thầy c&ocirc; gi&aacute;o, cố vấn học tập cũng phải c&oacute; tr&aacute;ch nhiệm kết nối &yacute; kiến của sinh vi&ecirc;n với nh&agrave; trường thường xuy&ecirc;n, kịp thời, đ&uacute;ng chức năng nhiệm vụ. TS Vũ Danh Tuy&ecirc;n cũng hy vọng sinh vi&ecirc;n, học vi&ecirc;n c&ugrave;ng với c&aacute;n bộ vi&ecirc;n chức v&agrave; người lao động trong Nh&agrave; trường&nbsp;x&acirc;y dựng thương hiệu trường Đại học T&agrave;i nguy&ecirc;n v&agrave; M&ocirc;i trường H&agrave; Nội.</p>

<p><img src="https://hunre.edu.vn/media/data/Cac-Phong---Trung-tam/CT-HSSV/%C4%90%E1%BB%91i_tho%E1%BA%A1i_sv_2022/0d7ced2faa7964273d688.jpg" style="height:498px; width:745px" /></p>

<p style="text-align:center"><em>To&agrave;n cảnh hội nghị tại hội trường tầng 7</em></p>
', 10035, CAST(N'2022-05-15T21:40:38.293' AS DateTime), 1, CAST(N'2022-05-15T22:28:42.907' AS DateTime))
INSERT [dbo].[Content] ([ID], [Name], [MetaTitle], [Image], [Detail], [CatergoryID], [CreateDate], [Status], [TopHot]) VALUES (21, N'Thông báo trả bằng tốt nghiệp đại học, cao đẳng chính quy (đợt 1- tháng 4 năm 2022)', NULL, N'/asset/Image/images/0aafbe5c360252ccd8c2b5a52163358d-cr-426x300.png', N'<p><img src="https://hunre.edu.vn/media/data/Cac-Phong---Trung-tam/Dao-tao/8f4842b13b3f4a9b851b64e94ea490a9-0002.jpg" /></p>
', 10035, CAST(N'2022-05-15T22:36:07.117' AS DateTime), 1, NULL)
INSERT [dbo].[Content] ([ID], [Name], [MetaTitle], [Image], [Detail], [CatergoryID], [CreateDate], [Status], [TopHot]) VALUES (22, N'Thông báo về việc tổ chức hưởng ứng Tuần lễ Quốc gia Nước sạch và vệ sinh môi trường năm 2022', NULL, N'/asset/Image/images/tbao-cr-426x300.png', N'<p><img src="https://hunre.edu.vn/media/data/Cac-Khoa/Khoa-Moi-tr%C6%B0ong/41537bb7dc4945d4a10b81a88246c27c-0001.jpg" /></p>
', 10035, CAST(N'2022-05-15T22:36:40.620' AS DateTime), 1, NULL)
INSERT [dbo].[Content] ([ID], [Name], [MetaTitle], [Image], [Detail], [CatergoryID], [CreateDate], [Status], [TopHot]) VALUES (23, N'Thông báo Kế hoạch học tập các học phần Giáo dục quốc phòng của đại học chính quy khóa 11 học kỳ 2 năm học 2021 - 2022', NULL, N'/asset/Image/images/tbao-cr-426x300.png', N'<p><img src="/asset/Image/images/image-20220515225508-1.jpeg" style="height:1920px; width:1358px" /></p>
', 10036, CAST(N'2022-05-15T22:55:15.213' AS DateTime), 1, NULL)
INSERT [dbo].[Content] ([ID], [Name], [MetaTitle], [Image], [Detail], [CatergoryID], [CreateDate], [Status], [TopHot]) VALUES (24, N'Thông báo Kế hoạch học tập các học phần Giáo dục quốc phòng của đại học chính quy khóa 11 học kỳ 2 năm học 2021 - 2022', NULL, N'/asset/Image/images/tbao-cr-426x300.png', N'<p><img src="/asset/Image/images/image-20220515225533-1.jpeg" style="height:1920px; width:1358px" /></p>
', 10036, CAST(N'2022-05-15T22:55:39.857' AS DateTime), 1, NULL)
INSERT [dbo].[Content] ([ID], [Name], [MetaTitle], [Image], [Detail], [CatergoryID], [CreateDate], [Status], [TopHot]) VALUES (25, N'Thông báo Kế hoạch học tập các học phần Giáo dục quốc phòng của đại học chính quy khóa 11 học kỳ 2 năm học 2021 - 2022', NULL, N'/asset/Image/images/tbao-cr-426x300.png', N'<p><img src="/asset/Image/images/image-20220515225551-1.jpeg" style="height:1920px; width:1358px" /></p>
', 10036, CAST(N'2022-05-15T22:55:55.380' AS DateTime), 1, NULL)
INSERT [dbo].[Content] ([ID], [Name], [MetaTitle], [Image], [Detail], [CatergoryID], [CreateDate], [Status], [TopHot]) VALUES (26, N'Trường Đại học Tài nguyên và Môi trường Hà Nội tặng quà cho thí sinh tới nhập học', NULL, N'/asset/Image/images/z2115087881676_97cc969a6d1661e8c66f98517818db88-cr-426x300.jpg', N'<p>Ng&agrave;y 08/10/2020 th&iacute; sinh&nbsp;nhập học tại HUNRE; PGS.TS. Ho&agrave;ng Anh Huy - B&iacute; thư Đảng ủy, Chủ tịch Hội đồng Trường; TS. Vũ Danh Tuy&ecirc;n - Ph&oacute; B&iacute; thư Đảng ủy, Ph&oacute; Hiệu trưởng phụ tr&aacute;ch Trường;&nbsp;PGS.TS. Phạm Qu&yacute; Nh&acirc;n - Ph&oacute; Hiệu trưởng đ&atilde;&nbsp;đại diện trường Đại học T&agrave;i nguy&ecirc;n v&agrave; M&ocirc;i trường H&agrave; Nội tặng qu&agrave; cho th&iacute; sinh may mắn tới nhập học tại trường bằng phương thức x&eacute;t tuyển điểm thi THPT.</p>

<p>Để tạo điều kiện thuận lợi nhất cho t&acirc;n sinh vi&ecirc;n v&agrave; gia đ&igrave;nh, Nh&agrave; trường đ&atilde; chuẩn bị chu đ&aacute;o từ kh&acirc;u l&ecirc;n kế hoạch, phổ biến quy tr&igrave;nh nhập học tr&ecirc;n c&aacute;c phương tiện th&ocirc;ng tin, bố tr&iacute; khu vực đăng k&yacute; th&ocirc;ng tin online, c&aacute;c bảng hướng dẫn, sơ đồ, c&ocirc;ng khai c&aacute;c khoản thu&hellip; từ trước đ&oacute; nhiều ng&agrave;y. Ban đ&oacute;n tiếp c&ugrave;ng sự hỗ trợ từ c&aacute;c khoa, viện, trung t&acirc;m, c&aacute;c sinh vi&ecirc;n t&igrave;nh nguyện đ&atilde; gi&uacute;p t&acirc;n sinh vi&ecirc;n DH10&nbsp;nhanh ch&oacute;ng ho&agrave;n th&agrave;nh c&aacute;c thủ tục cần thiết v&agrave; nhập học theo đ&uacute;ng quy tr&igrave;nh.</p>

<p>PGS.TS. Ho&agrave;ng Anh Huy - B&iacute; thư Đảng ủy, Chủ tịch Hội đồng Trường tặng qu&agrave; th&iacute; sinh nhập học thứ 3000: bạn Trần Huy Ho&agrave;ng&nbsp;một chiếc m&aacute;y t&iacute;nh x&aacute;ch tay v&agrave; qu&agrave; lưu niệm của nh&agrave; trường.</p>

<p><img alt="" src="https://hunre.edu.vn/media/data/tin-tuc/2020/z2115087881676_97cc969a6d1661e8c66f98517818db88.jpg" /></p>

<p><em>Th&iacute; sinh thứ 3000 chụp ảnh lưu niệm c&ugrave;ng với l&atilde;nh đạo nh&agrave; trường</em></p>

<p>Ngo&agrave;i ra, những bạn nhập học thứ 2998,2999,3001&nbsp;v&agrave; 3002&nbsp;cũng may mắn được&nbsp;PGS.TS. Ho&agrave;ng Anh Huy - B&iacute; thư Đảng ủy, Chủ tịch Hội đồng Trường, GS.TS. Phạm Qu&yacute; Nh&acirc;n - Ph&oacute; Hiệu trưởng; TS. Vũ Danh Tuy&ecirc;n - Ph&oacute; B&iacute; thư Đảng ủy, Ph&oacute; Hiệu trưởng phụ tr&aacute;ch Trường đại diện trường Đại học T&agrave;i nguy&ecirc;n v&agrave; M&ocirc;i trường H&agrave; Nội tặng&nbsp;phần qu&agrave; l&agrave; 1 chiếc sạc pin dự ph&ograve;ng c&ugrave;ng với qu&agrave; lưu niệm của nh&agrave; trường.</p>

<p><img alt="" src="https://hunre.edu.vn/media/data/tin-tuc/2020/z2115087923524_4478578ba5e64e3acdd09453d8587a35.jpg" /></p>

<p><em>Bốn th&iacute; sinh may mắn chụp ảnh c&ugrave;ng l&atilde;nh đạo nh&agrave; trường</em></p>

<p>Nh&agrave; trường gửi lời ch&uacute;c mừng tới c&aacute;c bạn&nbsp;t&acirc;n sinh vi&ecirc;n v&agrave; qu&yacute;&nbsp;phụ huynh nhập học v&agrave;o&nbsp;trường Đại học T&agrave;i nguy&ecirc;n v&agrave; M&ocirc;i trường H&agrave; Nội. Mong rằng c&aacute;c em sẽ c&oacute; một khoảng thời gian thanh xu&acirc;n tươi đẹp khi theo học tại trường.</p>

<p><strong>Một số h&igrave;nh ảnh lưu niệm:</strong></p>

<p><strong><img alt="" src="https://hunre.edu.vn/media/data/tin-tuc/2020/z2115084458229_d8789f82bd907a1cc585286cc9535e99_8.jpg" /></strong></p>

<p><img alt="" src="https://hunre.edu.vn/media/data/tin-tuc/2020/z2115086195662_4b33d4a6755366e9651017ac003403cc.jpg" /></p>
', 10037, CAST(N'2022-05-15T22:57:08.670' AS DateTime), 1, NULL)
INSERT [dbo].[Content] ([ID], [Name], [MetaTitle], [Image], [Detail], [CatergoryID], [CreateDate], [Status], [TopHot]) VALUES (27, N'Bế mạc khảo sát chính thức đánh giá chất lượng 3 chương trình đào tạo của Trường Đại học Tài nguyên và Môi trường Hà Nội', NULL, N'/asset/Image/images/ki%CC%81%20ke%CC%82%CC%81t%20%C4%91u%CC%9B%CC%81ng_1-cr-426x300.jpg', N'<p><strong>Sau 5 ng&agrave;y l&agrave;m việc, chiều nay (26/01/2021), <a href="http://cea.vnu.edu.vn/vi/content/be-mac-dot-khao-sat-chinh-thuc-danh-gia-chat-luong-03-chuong-trinh-dao-tao-tai-truong-dai">Trung t&acirc;m Kiểm định chất lượng gi&aacute;o dục - Đại học Quốc gia H&agrave; Nội (KĐCLGD - ĐHQGHN)</a> đ&atilde; phối hợp vớitrường Đại học T&agrave;i nguy&ecirc;n v&agrave; M&ocirc;i trường H&agrave; Nội(DH TN&amp;MT HN) tổ chức bế mạc khảo s&aacute;t ch&iacute;nh thức đ&aacute;nh gi&aacute; chất lượng 03 chương tr&igrave;nh đ&agrave;o tạo ch&iacute;nh quy tr&igrave;nh độ đại học (ng&agrave;nh Quản l&yacute; T&agrave;i nguy&ecirc;n v&agrave; M&ocirc;i trường, ng&agrave;nh Kinh tế T&agrave;i nguy&ecirc;n Thi&ecirc;n nhi&ecirc;n, ng&agrave;nh Kỹ thuật Trắc địa &ndash; Bản đồ) của Trường đại học TN&amp;MT HN.</strong></p>

<p>Tham dự bế mạc c&oacute; TS. Đinh Văn To&agrave;n, Ph&oacute; Gi&aacute;m đốc Trung t&acirc;m KĐCLGD &ndash; ĐHQGHN, chủ tịch Hội đồng kiểm định chất lượng gi&aacute;o dục; về ph&iacute;a Đo&agrave;n Chuy&ecirc;n gia đ&aacute;nh gi&aacute; ngo&agrave;i c&oacute;: GS.TS. Trần Trung &ndash; trưởng đo&agrave;n đ&aacute;nh gi&aacute; ngo&agrave;i; về ph&iacute;a Trường Đại học TN&amp;MT HN c&oacute; PGS.TS. Ho&agrave;ng Anh Huy - B&iacute; thư Đảng uỷ, Chủ tịch Hội đồng Trường; TS. Vũ Danh Tuy&ecirc;n &ndash; Ph&oacute; B&iacute; thư Đảng ủy, Ph&oacute; Hiệu trưởng phụ tr&aacute;ch trường; PGS. TS. Nguyễn Ngọc Thanh &ndash; nguy&ecirc;n B&iacute; thư Đảng ủy, Nguy&ecirc;n Hiệu trưởng Nh&agrave; trường, Cố vấn về ĐCLGD của Nh&agrave; trường v&agrave; c&aacute;c th&agrave;nh vi&ecirc;n trong ban gi&aacute;m hiệu v&agrave; l&atilde;nh đạo c&aacute;c đơn vị c&ugrave;ng giảng vi&ecirc;n v&agrave; sinh vi&ecirc;n 3 chương tr&igrave;nh đ&aacute;nh gi&aacute;.</p>

<p><img alt="" src="https://hunre.edu.vn/media/data/tin-tuc/2021/đanh-gia-ngoai/toàn cảnh hội trg.jpg" /></p>

<p><em>To&agrave;n cảnh Hội trường</em></p>

<p>B&aacute;o c&aacute;o tại phi&ecirc;n bế mạc, GS.TS. Trần Trung - Trưởng đo&agrave;n chuy&ecirc;n gia đ&aacute;nh gi&aacute; ngo&agrave;i đ&atilde; tr&igrave;nh b&agrave;y c&aacute;c nguy&ecirc;n tắc, quan điểm đ&aacute;nh gi&aacute; chất lượng chương tr&igrave;nh đ&agrave;o tạo v&agrave; c&aacute;c nội dung chủ yếu li&ecirc;n quan đến kết quả đ&aacute;nh gi&aacute; 03&nbsp;chương tr&igrave;nh đ&agrave;o tạo như: chương tr&igrave;nh đ&agrave;o tạo, hoạt động dạy - học, đội ngũ giảng vi&ecirc;n v&agrave; nh&acirc;n vi&ecirc;n, người học, cơ sở vật chất, việc n&acirc;ng cao chất lượng v&agrave; quản trị kết quả đầu ra v.v. Đo&agrave;n Chuy&ecirc;n gia đ&aacute;nh gi&aacute; ngo&agrave;i đ&atilde; đưa ra c&aacute;c khuyến nghị hữu &iacute;ch đối với c&aacute;c chương tr&igrave;nh đ&agrave;o tạo để L&atilde;nh đạo Nh&agrave; trường c&oacute; những giải ph&aacute;p mang t&iacute;nh chiến lược cải tiến chất lượng đ&agrave;o tạo v&agrave; x&acirc;y dựng định hướng ph&aacute;t triển của Nh&agrave; trường trong tương lai.</p>

<p><img alt="" src="https://hunre.edu.vn/media/data/tin-tuc/2021/đanh-gia-ngoai/th trung đổi.jpg" /></p>

<p><em>GS.TS. Trần Trung b&aacute;o c&aacute;o sơ bộ kết quả khảo s&aacute;t ch&iacute;nh thức</em></p>

<p>Đại diện Đo&agrave;n PGS.TS. Nguyễn Mạnh Khải; TS. Đinh Văn To&agrave;n; GS.TS. Trần Trung đ&atilde; b&aacute;o c&aacute;o sơ bộ kết quả khảo s&aacute;t ch&iacute;nh thức ở 3 CTĐT ng&agrave;nhQuản l&yacute; T&agrave;i nguy&ecirc;n v&agrave; M&ocirc;i trường, ng&agrave;nh Kinh tế T&agrave;i nguy&ecirc;n Thi&ecirc;n nhi&ecirc;n, ng&agrave;nh Kỹ thuật Trắc địa &ndash; Bản đồ qua 11 ti&ecirc;u chuẩn. B&aacute;o c&aacute;o đ&atilde; n&ecirc;u kh&aacute;i qu&aacute;t qu&aacute; tr&igrave;nh, nội dung thực hiện của Đo&agrave;n khảo s&aacute;t, tr&igrave;nh b&agrave;y cụ thể những điểm mạnh, hạn chế v&agrave; đưa ra khuyến nghị để Khoa M&ocirc;i trường, Khoa Kinh tế T&agrave;i nguy&ecirc;n &amp; M&ocirc;i trường, Khoa Trắc địa, Bản đồ v&agrave; TTĐL n&oacute;i ri&ecirc;ng v&agrave; Trường ĐH TN&amp;MT HN n&oacute;i chung c&oacute; kế hoạch cải tiến chất lượng đ&agrave;o tạo của nh&agrave; trường trong thời gian tới, phục vụ tốt hơn nhu cầu của người học, g&oacute;p phần khẳng định chất lượng, uy t&iacute;n của Trường ĐH TN&amp;MT HN.</p>

<p><img alt="" src="https://hunre.edu.vn/media/data/tin-tuc/2021/đanh-gia-ngoai/báo cáo tiêu chuẩn.jpg" /></p>

<p><em>PGS.TS. Nguyễn Mạnh Khải b&aacute;o c&aacute;o về ti&ecirc;u chuẩn 1 đến ti&ecirc;u chuẩn 5</em></p>

<p><em><img alt="" src="https://hunre.edu.vn/media/data/tin-tuc/2021/đanh-gia-ngoai/DSC07369.JPG" /></em></p>

<p><em>TS. Đinh Văn To&agrave;n b&aacute;o c&aacute;o từ ti&ecirc;u chuẩn 5&nbsp;đến ti&ecirc;u chuẩn 10</em></p>

<p><em><img alt="" src="https://hunre.edu.vn/media/data/tin-tuc/2021/đanh-gia-ngoai/thầy trung tiêu chuẩn 11.jpg" /></em></p>

<p><em>GS.TS. Trần Trung b&aacute;o c&aacute;o về ti&ecirc;u chuẩn 11</em></p>

<p>Thay mặt Trung t&acirc;m KĐCLGD - ĐHQGHN, TS. Đinh Văn To&agrave;n đ&aacute;nh gi&aacute; cao qu&aacute; tr&igrave;nh l&agrave;m việc đ&uacute;ng quy tr&igrave;nh, nghi&ecirc;m t&uacute;c, kh&aacute;ch quan của Trường Đại học TN&amp;MT HN v&agrave; Đo&agrave;n Chuy&ecirc;n gia đ&aacute;nh gi&aacute; ngo&agrave;i trong thời gian l&agrave;m việc trực tiếp tại Nh&agrave; trường. Tinh thần l&agrave;m việc của Đo&agrave;n Chuy&ecirc;n gia đ&aacute;nh gi&aacute; ngo&agrave;i v&agrave; sự phối hợp của Nh&agrave; trường v&agrave; c&aacute;c Khoa, c&aacute;c đơn vị trong việc cung cấp c&aacute;c th&ocirc;ng tin, minh chứng g&oacute;p phần quan trọng cho th&agrave;nh c&ocirc;ng của đợt khảo s&aacute;t. Trong b&agrave;i ph&aacute;t biểu bế mạc, Ph&oacute; Gi&aacute;m đốc b&agrave;y tỏ mong muốn tiếp tục th&uacute;c đẩy quan hệ hợp t&aacute;c hiệu quả giữa hai b&ecirc;n trong lĩnh vực đảm bảo chất lượng, kiểm định chất lượng trong thời gian tới, g&oacute;p phần đưa Trường ĐH TN&amp;MT HN ph&aacute;t triển mạnh mẽ hơn nữa, xứng tầm với bề d&agrave;y truyền thống 60 năm v&agrave; tiềm năng của Nh&agrave; trường.</p>

<p>Trong b&agrave;i ph&aacute;t biểu, PGS.TS. Ho&agrave;ng Anh Huy &ndash; B&iacute; thư Đảng ủy, Chủ tịch Hội đồng trường đ&atilde; b&agrave;y tỏ sự cảm ơn ch&acirc;n th&agrave;nh đối với Đo&agrave;n Chuy&ecirc;n gia đ&aacute;nh gi&aacute; ngo&agrave;i với tinh thần l&agrave;m việc nghi&ecirc;m t&uacute;c, tận t&acirc;m, kh&aacute;ch quan v&agrave; đặc biệt cảm ơn những th&ocirc;ng tin x&aacute;c đ&aacute;ng trong b&aacute;o c&aacute;o v&agrave; những khuyến nghị c&oacute; chất lượng của Đo&agrave;n. Chủ tịch HĐT khẳng định những nhận định, đ&aacute;nh gi&aacute; của Đo&agrave;n chuy&ecirc;n gia đ&aacute;nh gi&aacute; ngo&agrave;i lần n&agrave;y đ&atilde; gi&uacute;p Nh&agrave; trường nh&igrave;n nhận r&otilde; hơn những điểm mạnh, những gi&aacute; trị v&agrave; những điểm tồn tại của m&igrave;nh, từ đ&oacute; c&oacute; kế hoạch, giải ph&aacute;p n&acirc;ng cao năng lực quản trị v&agrave; lan tỏa văn h&oacute;a chất lượng trong to&agrave;n Trường. Đồng thời, Nh&agrave; trường tin tưởng tuyệt đối v&agrave;o t&iacute;nh c&ocirc;ng minh v&agrave; phương ph&aacute;p l&agrave;m việc chuy&ecirc;n nghiệp của c&aacute;c chuy&ecirc;n gia. PGS.TS. Ho&agrave;ng Anh Huy nhấn mạnh những điểm mạnh v&agrave; điểm tồn tại ở ti&ecirc;u chuẩn 5 của đo&agrave;n ĐGN về&nbsp;Nh&agrave; trường l&agrave; rất x&aacute;c đ&aacute;ng v&agrave; cũng l&agrave; điều l&agrave;m cho L&atilde;nh đạo Nh&agrave; trường hết sức trăn trở. Việc đ&aacute;nh gi&aacute; 3 CTĐT lần n&agrave;y l&agrave; một b&agrave;i học kinh nghiệm rất lớn, rất qu&yacute; b&aacute;u kh&ocirc;ng chỉ của 3 khoa m&agrave; c&ograve;n đối với cả Nh&agrave; trường.</p>

<p><img alt="" src="https://hunre.edu.vn/media/data/tin-tuc/2021/đanh-gia-ngoai/th Huy phát biểu.jpg" /></p>

<p><em>PGS.TS. Ho&agrave;ng Anh Huy ph&aacute;t biểu tại buổi bế mạc</em></p>

<p>Ph&aacute;t biểu tại lễ bế mạc, TS Nguyễn Hoản &ndash; Trưởng khoa Kinh Tế t&agrave;i nguy&ecirc;n v&agrave; M&ocirc;i trường đại diện l&atilde;nh đạo 3 khoa c&oacute; chương tr&igrave;nh đ&agrave;o tạo tham gia đ&aacute;nh gi&aacute; gửi lờich&uacute;c mừng v&agrave; cảm ơn Đo&agrave;n ĐGN đ&atilde; ho&agrave;n th&agrave;nh đợt khảo s&aacute;t ch&iacute;nh thức tạiTrường đại họcT&agrave;i nguy&ecirc;n v&agrave; M&ocirc;i trường H&agrave; Nộitheo đ&uacute;ng kế hoạch, đ&uacute;ng thời gian với một tinh thần hết sức nghi&ecirc;m t&uacute;c, tr&aacute;ch nhiệm, kh&aacute;ch quan v&agrave; nh&acirc;n văn s&acirc;u sắc.​ Trong suốt qu&aacute; tr&igrave;nh đ&aacute;nh gi&aacute;, đo&agrave;n đ&atilde;chỉ ra những mặt tồn tại, hạn chế của 3 chương tr&igrave;nh đ&agrave;o tạo gi&uacute;p 3 khoa c&oacute; c&aacute;i nh&igrave;n r&otilde; hơn, rộng hơn. Từ đ&oacute; x&acirc;y dựng kế hoạch h&agrave;nh động để khắc phục những tồn tại, hạn chế v&agrave; cam kết với Nh&agrave; trường v&agrave; Đo&agrave;n đ&aacute;nh gi&aacute; ngo&agrave;i kh&ocirc;ng ngừng cải tiến những mặt tồn tại, đảm bảo chất lượng c&aacute;c chương tr&igrave;nh đ&agrave;o tạo của Nh&agrave; trường ng&agrave;y c&agrave;ng tốt hơn nhằm đ&aacute;p ứng nhu cầu nguồn nh&acirc;n lực chất lượng cao của Ng&agrave;nh t&agrave;i nguy&ecirc;n m&ocirc;i trường v&agrave; của x&atilde; hội.</p>

<p><img alt="" src="https://hunre.edu.vn/media/data/tin-tuc/2021/đanh-gia-ngoai/a hoản phát biểu đẹp.jpg" /></p>

<p><em>TS. Nguyễn Hoản ph&aacute;t biểu tại buổi bế mạc</em></p>

<p>Kết th&uacute;c phi&ecirc;n bế mạc, TS. Đinh Văn To&agrave;n - Ph&oacute; Gi&aacute;m đốc phụ tr&aacute;ch Trung t&acirc;m, GS.TS. Trần Trung - Trưởng đo&agrave;n Chuy&ecirc;n gia đ&aacute;nh gi&aacute; ngo&agrave;i v&agrave;&nbsp;TS. Vũ Danh Tuy&ecirc;n - Ph&oacute; Hiệu trưởng Nh&agrave; trường đ&atilde; k&yacute; kết Bi&ecirc;n bản ho&agrave;n th&agrave;nh đợt khảo s&aacute;t ch&iacute;nh thức đ&aacute;nh gi&aacute; chất lượng 03 chương tr&igrave;nh đ&agrave;o tạo của Trường Đại học TN&amp;MT HN.</p>

<p><img alt="" src="https://hunre.edu.vn/media/data/tin-tuc/2021/đanh-gia-ngoai/kí kết ngồi máy 1.jpg" /></p>

<p><em>Đại diện Đo&agrave;n ĐGN v&agrave; l&atilde;nh đạo Nh&agrave; trường k&iacute; kết bi&ecirc;n bản ho&agrave;n th&agrave;nh đợt khảo s&aacute;t</em></p>

<p>Kết quả đ&aacute;nh gi&aacute; ngo&agrave;i ba chương tr&igrave;nh đ&agrave;o tạo c&aacute;c ng&agrave;nhQuản l&yacute; T&agrave;i nguy&ecirc;n v&agrave; M&ocirc;i trường, ng&agrave;nh Kinh tế T&agrave;i nguy&ecirc;n Thi&ecirc;n nhi&ecirc;n, ng&agrave;nh Kỹ thuật Trắc địa &ndash; Bản đồ theo ti&ecirc;u chuẩn đ&aacute;nh gi&aacute; chất lượng chương tr&igrave;nh đ&agrave;o tạo của Bộ Gi&aacute;o dục v&agrave; Đ&agrave;o tạo ch&iacute;nh thức sẽ được c&ocirc;ng bố sau khi c&aacute;c bước tiếp theo được ho&agrave;n tất.</p>

<p><strong>Một số h&igrave;nh ảnh tại buổi bế mạc:</strong></p>

<p><img alt="" src="https://hunre.edu.vn/media/data/tin-tuc/2021/đanh-gia-ngoai/kí kết_1.jpg" /></p>

<p><img alt="" src="https://hunre.edu.vn/media/data/tin-tuc/2021/đanh-gia-ngoai/kí kết đứng_1.jpg" /></p>

<p><img alt="" src="https://hunre.edu.vn/media/data/tin-tuc/2021/đanh-gia-ngoai/DSC07473.JPG" /></p>

<p><img alt="" src="https://hunre.edu.vn/media/data/tin-tuc/2021/đanh-gia-ngoai/tập thể1.jpg" /></p>

<p><em><strong>B&agrave;i v&agrave; ảnh: Ph&ograve;ng truyền th&ocirc;ng v&agrave; tuyển sinh</strong></em></p>
', 10037, CAST(N'2022-05-15T22:58:01.983' AS DateTime), 1, NULL)
INSERT [dbo].[Content] ([ID], [Name], [MetaTitle], [Image], [Detail], [CatergoryID], [CreateDate], [Status], [TopHot]) VALUES (28, N'Bế mạc khảo sát chính thức đánh giá chất lượng 3 chương trình đào tạo của Trường Đại học Tài nguyên và Môi trường Hà Nội', NULL, N'/asset/Image/images/ki%CC%81%20ke%CC%82%CC%81t%20%C4%91u%CC%9B%CC%81ng_1-cr-426x300.jpg', N'<p><strong>Sau 5 ng&agrave;y l&agrave;m việc, chiều nay (26/01/2021), <a href="http://cea.vnu.edu.vn/vi/content/be-mac-dot-khao-sat-chinh-thuc-danh-gia-chat-luong-03-chuong-trinh-dao-tao-tai-truong-dai">Trung t&acirc;m Kiểm định chất lượng gi&aacute;o dục - Đại học Quốc gia H&agrave; Nội (KĐCLGD - ĐHQGHN)</a> đ&atilde; phối hợp vớitrường Đại học T&agrave;i nguy&ecirc;n v&agrave; M&ocirc;i trường H&agrave; Nội(DH TN&amp;MT HN) tổ chức bế mạc khảo s&aacute;t ch&iacute;nh thức đ&aacute;nh gi&aacute; chất lượng 03 chương tr&igrave;nh đ&agrave;o tạo ch&iacute;nh quy tr&igrave;nh độ đại học (ng&agrave;nh Quản l&yacute; T&agrave;i nguy&ecirc;n v&agrave; M&ocirc;i trường, ng&agrave;nh Kinh tế T&agrave;i nguy&ecirc;n Thi&ecirc;n nhi&ecirc;n, ng&agrave;nh Kỹ thuật Trắc địa &ndash; Bản đồ) của Trường đại học TN&amp;MT HN.</strong></p>

<p>Tham dự bế mạc c&oacute; TS. Đinh Văn To&agrave;n, Ph&oacute; Gi&aacute;m đốc Trung t&acirc;m KĐCLGD &ndash; ĐHQGHN, chủ tịch Hội đồng kiểm định chất lượng gi&aacute;o dục; về ph&iacute;a Đo&agrave;n Chuy&ecirc;n gia đ&aacute;nh gi&aacute; ngo&agrave;i c&oacute;: GS.TS. Trần Trung &ndash; trưởng đo&agrave;n đ&aacute;nh gi&aacute; ngo&agrave;i; về ph&iacute;a Trường Đại học TN&amp;MT HN c&oacute; PGS.TS. Ho&agrave;ng Anh Huy - B&iacute; thư Đảng uỷ, Chủ tịch Hội đồng Trường; TS. Vũ Danh Tuy&ecirc;n &ndash; Ph&oacute; B&iacute; thư Đảng ủy, Ph&oacute; Hiệu trưởng phụ tr&aacute;ch trường; PGS. TS. Nguyễn Ngọc Thanh &ndash; nguy&ecirc;n B&iacute; thư Đảng ủy, Nguy&ecirc;n Hiệu trưởng Nh&agrave; trường, Cố vấn về ĐCLGD của Nh&agrave; trường v&agrave; c&aacute;c th&agrave;nh vi&ecirc;n trong ban gi&aacute;m hiệu v&agrave; l&atilde;nh đạo c&aacute;c đơn vị c&ugrave;ng giảng vi&ecirc;n v&agrave; sinh vi&ecirc;n 3 chương tr&igrave;nh đ&aacute;nh gi&aacute;.</p>

<p><img alt="" src="https://hunre.edu.vn/media/data/tin-tuc/2021/đanh-gia-ngoai/toàn cảnh hội trg.jpg" /></p>

<p><em>To&agrave;n cảnh Hội trường</em></p>

<p>B&aacute;o c&aacute;o tại phi&ecirc;n bế mạc, GS.TS. Trần Trung - Trưởng đo&agrave;n chuy&ecirc;n gia đ&aacute;nh gi&aacute; ngo&agrave;i đ&atilde; tr&igrave;nh b&agrave;y c&aacute;c nguy&ecirc;n tắc, quan điểm đ&aacute;nh gi&aacute; chất lượng chương tr&igrave;nh đ&agrave;o tạo v&agrave; c&aacute;c nội dung chủ yếu li&ecirc;n quan đến kết quả đ&aacute;nh gi&aacute; 03&nbsp;chương tr&igrave;nh đ&agrave;o tạo như: chương tr&igrave;nh đ&agrave;o tạo, hoạt động dạy - học, đội ngũ giảng vi&ecirc;n v&agrave; nh&acirc;n vi&ecirc;n, người học, cơ sở vật chất, việc n&acirc;ng cao chất lượng v&agrave; quản trị kết quả đầu ra v.v. Đo&agrave;n Chuy&ecirc;n gia đ&aacute;nh gi&aacute; ngo&agrave;i đ&atilde; đưa ra c&aacute;c khuyến nghị hữu &iacute;ch đối với c&aacute;c chương tr&igrave;nh đ&agrave;o tạo để L&atilde;nh đạo Nh&agrave; trường c&oacute; những giải ph&aacute;p mang t&iacute;nh chiến lược cải tiến chất lượng đ&agrave;o tạo v&agrave; x&acirc;y dựng định hướng ph&aacute;t triển của Nh&agrave; trường trong tương lai.</p>

<p><img alt="" src="https://hunre.edu.vn/media/data/tin-tuc/2021/đanh-gia-ngoai/th trung đổi.jpg" /></p>

<p><em>GS.TS. Trần Trung b&aacute;o c&aacute;o sơ bộ kết quả khảo s&aacute;t ch&iacute;nh thức</em></p>

<p>Đại diện Đo&agrave;n PGS.TS. Nguyễn Mạnh Khải; TS. Đinh Văn To&agrave;n; GS.TS. Trần Trung đ&atilde; b&aacute;o c&aacute;o sơ bộ kết quả khảo s&aacute;t ch&iacute;nh thức ở 3 CTĐT ng&agrave;nhQuản l&yacute; T&agrave;i nguy&ecirc;n v&agrave; M&ocirc;i trường, ng&agrave;nh Kinh tế T&agrave;i nguy&ecirc;n Thi&ecirc;n nhi&ecirc;n, ng&agrave;nh Kỹ thuật Trắc địa &ndash; Bản đồ qua 11 ti&ecirc;u chuẩn. B&aacute;o c&aacute;o đ&atilde; n&ecirc;u kh&aacute;i qu&aacute;t qu&aacute; tr&igrave;nh, nội dung thực hiện của Đo&agrave;n khảo s&aacute;t, tr&igrave;nh b&agrave;y cụ thể những điểm mạnh, hạn chế v&agrave; đưa ra khuyến nghị để Khoa M&ocirc;i trường, Khoa Kinh tế T&agrave;i nguy&ecirc;n &amp; M&ocirc;i trường, Khoa Trắc địa, Bản đồ v&agrave; TTĐL n&oacute;i ri&ecirc;ng v&agrave; Trường ĐH TN&amp;MT HN n&oacute;i chung c&oacute; kế hoạch cải tiến chất lượng đ&agrave;o tạo của nh&agrave; trường trong thời gian tới, phục vụ tốt hơn nhu cầu của người học, g&oacute;p phần khẳng định chất lượng, uy t&iacute;n của Trường ĐH TN&amp;MT HN.</p>

<p><img alt="" src="https://hunre.edu.vn/media/data/tin-tuc/2021/đanh-gia-ngoai/báo cáo tiêu chuẩn.jpg" /></p>

<p><em>PGS.TS. Nguyễn Mạnh Khải b&aacute;o c&aacute;o về ti&ecirc;u chuẩn 1 đến ti&ecirc;u chuẩn 5</em></p>

<p><em><img alt="" src="https://hunre.edu.vn/media/data/tin-tuc/2021/đanh-gia-ngoai/DSC07369.JPG" /></em></p>

<p><em>TS. Đinh Văn To&agrave;n b&aacute;o c&aacute;o từ ti&ecirc;u chuẩn 5&nbsp;đến ti&ecirc;u chuẩn 10</em></p>

<p><em><img alt="" src="https://hunre.edu.vn/media/data/tin-tuc/2021/đanh-gia-ngoai/thầy trung tiêu chuẩn 11.jpg" /></em></p>

<p><em>GS.TS. Trần Trung b&aacute;o c&aacute;o về ti&ecirc;u chuẩn 11</em></p>

<p>Thay mặt Trung t&acirc;m KĐCLGD - ĐHQGHN, TS. Đinh Văn To&agrave;n đ&aacute;nh gi&aacute; cao qu&aacute; tr&igrave;nh l&agrave;m việc đ&uacute;ng quy tr&igrave;nh, nghi&ecirc;m t&uacute;c, kh&aacute;ch quan của Trường Đại học TN&amp;MT HN v&agrave; Đo&agrave;n Chuy&ecirc;n gia đ&aacute;nh gi&aacute; ngo&agrave;i trong thời gian l&agrave;m việc trực tiếp tại Nh&agrave; trường. Tinh thần l&agrave;m việc của Đo&agrave;n Chuy&ecirc;n gia đ&aacute;nh gi&aacute; ngo&agrave;i v&agrave; sự phối hợp của Nh&agrave; trường v&agrave; c&aacute;c Khoa, c&aacute;c đơn vị trong việc cung cấp c&aacute;c th&ocirc;ng tin, minh chứng g&oacute;p phần quan trọng cho th&agrave;nh c&ocirc;ng của đợt khảo s&aacute;t. Trong b&agrave;i ph&aacute;t biểu bế mạc, Ph&oacute; Gi&aacute;m đốc b&agrave;y tỏ mong muốn tiếp tục th&uacute;c đẩy quan hệ hợp t&aacute;c hiệu quả giữa hai b&ecirc;n trong lĩnh vực đảm bảo chất lượng, kiểm định chất lượng trong thời gian tới, g&oacute;p phần đưa Trường ĐH TN&amp;MT HN ph&aacute;t triển mạnh mẽ hơn nữa, xứng tầm với bề d&agrave;y truyền thống 60 năm v&agrave; tiềm năng của Nh&agrave; trường.</p>

<p>Trong b&agrave;i ph&aacute;t biểu, PGS.TS. Ho&agrave;ng Anh Huy &ndash; B&iacute; thư Đảng ủy, Chủ tịch Hội đồng trường đ&atilde; b&agrave;y tỏ sự cảm ơn ch&acirc;n th&agrave;nh đối với Đo&agrave;n Chuy&ecirc;n gia đ&aacute;nh gi&aacute; ngo&agrave;i với tinh thần l&agrave;m việc nghi&ecirc;m t&uacute;c, tận t&acirc;m, kh&aacute;ch quan v&agrave; đặc biệt cảm ơn những th&ocirc;ng tin x&aacute;c đ&aacute;ng trong b&aacute;o c&aacute;o v&agrave; những khuyến nghị c&oacute; chất lượng của Đo&agrave;n. Chủ tịch HĐT khẳng định những nhận định, đ&aacute;nh gi&aacute; của Đo&agrave;n chuy&ecirc;n gia đ&aacute;nh gi&aacute; ngo&agrave;i lần n&agrave;y đ&atilde; gi&uacute;p Nh&agrave; trường nh&igrave;n nhận r&otilde; hơn những điểm mạnh, những gi&aacute; trị v&agrave; những điểm tồn tại của m&igrave;nh, từ đ&oacute; c&oacute; kế hoạch, giải ph&aacute;p n&acirc;ng cao năng lực quản trị v&agrave; lan tỏa văn h&oacute;a chất lượng trong to&agrave;n Trường. Đồng thời, Nh&agrave; trường tin tưởng tuyệt đối v&agrave;o t&iacute;nh c&ocirc;ng minh v&agrave; phương ph&aacute;p l&agrave;m việc chuy&ecirc;n nghiệp của c&aacute;c chuy&ecirc;n gia. PGS.TS. Ho&agrave;ng Anh Huy nhấn mạnh những điểm mạnh v&agrave; điểm tồn tại ở ti&ecirc;u chuẩn 5 của đo&agrave;n ĐGN về&nbsp;Nh&agrave; trường l&agrave; rất x&aacute;c đ&aacute;ng v&agrave; cũng l&agrave; điều l&agrave;m cho L&atilde;nh đạo Nh&agrave; trường hết sức trăn trở. Việc đ&aacute;nh gi&aacute; 3 CTĐT lần n&agrave;y l&agrave; một b&agrave;i học kinh nghiệm rất lớn, rất qu&yacute; b&aacute;u kh&ocirc;ng chỉ của 3 khoa m&agrave; c&ograve;n đối với cả Nh&agrave; trường.</p>

<p><img alt="" src="https://hunre.edu.vn/media/data/tin-tuc/2021/đanh-gia-ngoai/th Huy phát biểu.jpg" /></p>

<p><em>PGS.TS. Ho&agrave;ng Anh Huy ph&aacute;t biểu tại buổi bế mạc</em></p>

<p>Ph&aacute;t biểu tại lễ bế mạc, TS Nguyễn Hoản &ndash; Trưởng khoa Kinh Tế t&agrave;i nguy&ecirc;n v&agrave; M&ocirc;i trường đại diện l&atilde;nh đạo 3 khoa c&oacute; chương tr&igrave;nh đ&agrave;o tạo tham gia đ&aacute;nh gi&aacute; gửi lờich&uacute;c mừng v&agrave; cảm ơn Đo&agrave;n ĐGN đ&atilde; ho&agrave;n th&agrave;nh đợt khảo s&aacute;t ch&iacute;nh thức tạiTrường đại họcT&agrave;i nguy&ecirc;n v&agrave; M&ocirc;i trường H&agrave; Nộitheo đ&uacute;ng kế hoạch, đ&uacute;ng thời gian với một tinh thần hết sức nghi&ecirc;m t&uacute;c, tr&aacute;ch nhiệm, kh&aacute;ch quan v&agrave; nh&acirc;n văn s&acirc;u sắc.​ Trong suốt qu&aacute; tr&igrave;nh đ&aacute;nh gi&aacute;, đo&agrave;n đ&atilde;chỉ ra những mặt tồn tại, hạn chế của 3 chương tr&igrave;nh đ&agrave;o tạo gi&uacute;p 3 khoa c&oacute; c&aacute;i nh&igrave;n r&otilde; hơn, rộng hơn. Từ đ&oacute; x&acirc;y dựng kế hoạch h&agrave;nh động để khắc phục những tồn tại, hạn chế v&agrave; cam kết với Nh&agrave; trường v&agrave; Đo&agrave;n đ&aacute;nh gi&aacute; ngo&agrave;i kh&ocirc;ng ngừng cải tiến những mặt tồn tại, đảm bảo chất lượng c&aacute;c chương tr&igrave;nh đ&agrave;o tạo của Nh&agrave; trường ng&agrave;y c&agrave;ng tốt hơn nhằm đ&aacute;p ứng nhu cầu nguồn nh&acirc;n lực chất lượng cao của Ng&agrave;nh t&agrave;i nguy&ecirc;n m&ocirc;i trường v&agrave; của x&atilde; hội.</p>

<p><img alt="" src="https://hunre.edu.vn/media/data/tin-tuc/2021/đanh-gia-ngoai/a hoản phát biểu đẹp.jpg" /></p>

<p><em>TS. Nguyễn Hoản ph&aacute;t biểu tại buổi bế mạc</em></p>

<p>Kết th&uacute;c phi&ecirc;n bế mạc, TS. Đinh Văn To&agrave;n - Ph&oacute; Gi&aacute;m đốc phụ tr&aacute;ch Trung t&acirc;m, GS.TS. Trần Trung - Trưởng đo&agrave;n Chuy&ecirc;n gia đ&aacute;nh gi&aacute; ngo&agrave;i v&agrave;&nbsp;TS. Vũ Danh Tuy&ecirc;n - Ph&oacute; Hiệu trưởng Nh&agrave; trường đ&atilde; k&yacute; kết Bi&ecirc;n bản ho&agrave;n th&agrave;nh đợt khảo s&aacute;t ch&iacute;nh thức đ&aacute;nh gi&aacute; chất lượng 03 chương tr&igrave;nh đ&agrave;o tạo của Trường Đại học TN&amp;MT HN.</p>

<p><img alt="" src="https://hunre.edu.vn/media/data/tin-tuc/2021/đanh-gia-ngoai/kí kết ngồi máy 1.jpg" /></p>

<p><em>Đại diện Đo&agrave;n ĐGN v&agrave; l&atilde;nh đạo Nh&agrave; trường k&iacute; kết bi&ecirc;n bản ho&agrave;n th&agrave;nh đợt khảo s&aacute;t</em></p>

<p>Kết quả đ&aacute;nh gi&aacute; ngo&agrave;i ba chương tr&igrave;nh đ&agrave;o tạo c&aacute;c ng&agrave;nhQuản l&yacute; T&agrave;i nguy&ecirc;n v&agrave; M&ocirc;i trường, ng&agrave;nh Kinh tế T&agrave;i nguy&ecirc;n Thi&ecirc;n nhi&ecirc;n, ng&agrave;nh Kỹ thuật Trắc địa &ndash; Bản đồ theo ti&ecirc;u chuẩn đ&aacute;nh gi&aacute; chất lượng chương tr&igrave;nh đ&agrave;o tạo của Bộ Gi&aacute;o dục v&agrave; Đ&agrave;o tạo ch&iacute;nh thức sẽ được c&ocirc;ng bố sau khi c&aacute;c bước tiếp theo được ho&agrave;n tất.</p>

<p><strong>Một số h&igrave;nh ảnh tại buổi bế mạc:</strong></p>

<p><img alt="" src="https://hunre.edu.vn/media/data/tin-tuc/2021/đanh-gia-ngoai/kí kết_1.jpg" /></p>

<p><img alt="" src="https://hunre.edu.vn/media/data/tin-tuc/2021/đanh-gia-ngoai/kí kết đứng_1.jpg" /></p>

<p><img alt="" src="https://hunre.edu.vn/media/data/tin-tuc/2021/đanh-gia-ngoai/DSC07473.JPG" /></p>

<p><img alt="" src="https://hunre.edu.vn/media/data/tin-tuc/2021/đanh-gia-ngoai/tập thể1.jpg" /></p>

<p><em><strong>B&agrave;i v&agrave; ảnh: Ph&ograve;ng truyền th&ocirc;ng v&agrave; tuyển sinh</strong></em></p>
', 10037, CAST(N'2022-05-15T22:58:26.327' AS DateTime), 1, NULL)
INSERT [dbo].[Content] ([ID], [Name], [MetaTitle], [Image], [Detail], [CatergoryID], [CreateDate], [Status], [TopHot]) VALUES (29, N'Giấy chứng nhận kiểm định chất lượng giáo dục Đại học chính quy ngành Công nghệ thông tin', NULL, N'/asset/Image/images/CL-cr-80x80.PNG', N'<p><img src="/asset/Image/images/image-20220516143406-1.png" style="height:862px; width:605px" /></p>
', 10040, CAST(N'2022-05-16T14:34:34.783' AS DateTime), 1, NULL)
INSERT [dbo].[Content] ([ID], [Name], [MetaTitle], [Image], [Detail], [CatergoryID], [CreateDate], [Status], [TopHot]) VALUES (30, N'Công ty cổ phần phần mềm quản trị doanh nghiệp (CYBERSOFT) tuyển dụng', NULL, N'/asset/Image/images/tbao-cr-426x300.png', N'<p><strong>TH&Ocirc;NG B&Aacute;O TUYỂN DỤNG&nbsp;</strong></p>

<p>C&ocirc;ng ty cổ phần phần mềm quản trị doanh nghiệp (CYBERSOFT) l&agrave; doanh nghiệp chuy&ecirc;n s&acirc;u về lĩnh vực sản xuất, cung cấp sản phẩm v&agrave; dịch vụ phần mềm quản trị tổng thể doanh nghiệp <strong>ERP</strong>. Với gần 18 năm th&agrave;nh lập v&agrave; ph&aacute;t triển, hiện tại ch&uacute;ng t&ocirc;i c&oacute; tr&ecirc;n 2 000 kh&aacute;ch h&agrave;ng tr&ecirc;n cả nước với loại h&igrave;nh kinh doanh đa dạng v&agrave; quy m&ocirc; hoạt động cũng như h&igrave;nh thức sở hữu kh&aacute;c nhau đang sử dụng sản phẩm v&agrave; dịch vụ của ch&uacute;ng t&ocirc;i.</p>

<p>Do nhu cầu mở rộng kinh doanh trong năm 2021, ch&uacute;ng t&ocirc;i tr&acirc;n trọng ch&agrave;o đ&oacute;n ứng vi&ecirc;n c&oacute; năng lực ứng tuyển v&agrave;o c&aacute;c vị tr&iacute; l&agrave;m việc như sau.</p>

<ol>
	<li><strong>VỊ TR&Iacute; ỨNG TUYỂN</strong></li>
</ol>

<table>
	<tbody>
		<tr>
			<td>
			<p>&nbsp;</p>

			<p><strong>STT</strong></p>
			</td>
			<td>
			<p>&nbsp;</p>

			<p><strong>VỊ TR&Iacute; ỨNG TUYỂN</strong></p>
			</td>
		</tr>
		<tr>
			<td>
			<p>&nbsp;</p>

			<p><strong>I</strong></p>
			</td>
			<td>
			<p>&nbsp;</p>

			<p><strong>NH&Acirc;N VI&Ecirc;N LẬP TR&Igrave;NH &ndash; VP H&agrave; Nội</strong></p>

			<ol>
				<li><strong><u>Số lượng nh&acirc;n vi&ecirc;n:</u></strong></li>
				<li><strong><u>M&ocirc; tả c&ocirc;ng việc</u></strong></li>
			</ol>

			<p>- Ng&ocirc;n ngữ: C# Or VB.Net Or ASP.Net, customize bằng C# Or VB.Net Or ASP.Net - Ph&aacute;t triển sản phẩm theo bản thiết kế.<br />
			- Hiểu biết v&agrave; c&oacute; khả năng quản trị, Develop tr&ecirc;n nền cơ sở dữ liệu SQL SERVER</p>

			<p>- Viết t&agrave;i liệu khi c&oacute; y&ecirc;u cầu</p>

			<p>- Chuẩn bị c&aacute;c c&ocirc;ng cụ cần thiết cho việc lập tr&igrave;nh<br />
			- Lập tr&igrave;nh v&agrave; t&iacute;ch hợp (API)<br />
			- Xem x&eacute;t code v&agrave; thực hiện Unit test<br />
			- Hỗ trợ c&aacute;c vấn đề li&ecirc;n quan đến lập tr&igrave;nh<br />
			- Thực hiện c&aacute;c c&ocirc;ng việc li&ecirc;n quan kh&aacute;c theo y&ecirc;u cầu của c&ocirc;ng ty<br />
			- Trao đổi, thảo luận với kh&aacute;ch h&agrave;ng c&aacute;c vấn đề li&ecirc;n quan.</p>

			<ol>
				<li><strong><u>Y&ecirc;u cầu c&ocirc;ng việc</u></strong></li>
			</ol>

			<p><strong>- Kiến thức:</strong><br />
			+ Nắm vững v&agrave; chuy&ecirc;n s&acirc;u về c&aacute;c ng&ocirc;n ngữ lập tr&igrave;nh<br />
			+ C&oacute; khả năng design, lập tr&igrave;nh&nbsp;<br />
			+ Khả năng t&igrave;m kiếm th&ocirc;ng tin, giải ph&aacute;p tr&ecirc;n mạng tốt<br />
			<strong>- Kỹ năng:</strong><br />
			+ C&oacute; hiểu biết về m&ocirc;i trường ph&aacute;t triển được sử dụng trong dự &aacute;n<br />
			+ C&oacute; tư duy lập tr&igrave;nh tốt, khả năng tự nghi&ecirc;n cứu v&agrave; giải quyết vấn đề độc lập hoặc theo nh&oacute;m<br />
			<strong>- Phẩm chất/ th&aacute;i độ:</strong><br />
			+ Tự tin, năng động, s&aacute;ng tạo, chủ động trong c&ocirc;ng việc, c&oacute; khả năng t&igrave;m kiếm v&agrave; l&agrave;m việc độc lập tốt. &Yacute; thức l&agrave;m việc nh&oacute;m v&agrave; phối hợp c&ocirc;ng việc trong nh&oacute;m tốt khi c&oacute; l&agrave;m việc nh&oacute;m.<br />
			+ Tinh thần tr&aacute;ch nhiệm cao trong c&ocirc;ng việc<br />
			+ C&oacute; t&iacute;nh kỉ luật cao</p>

			<p><strong>+&nbsp;</strong>Chủ động nghi&ecirc;n cứu t&agrave;i liệu chuy&ecirc;n ng&agrave;nh</p>

			<ol>
				<li><strong><u>Tốt nghiệp</u></strong>: Tốt nghiệp đại&nbsp; học, tr&ecirc;n đại học chuy&ecirc;n ng&agrave;nh C&ocirc;ng nghệ th&ocirc;ng tin</li>
				<li><strong><u>Thu nhập:</u></strong> Theo năng lực v&agrave; theo thỏa thuận, thấp nhất 12 triệu</li>
			</ol>
			</td>
		</tr>
		<tr>
			<td>
			<p>&nbsp;</p>

			<p><strong>II</strong></p>
			</td>
			<td>
			<p>&nbsp;</p>

			<p><strong>NH&Acirc;N VI&Ecirc;N LẬP TR&Igrave;NH &ndash; MOBILE &ndash; VP H&agrave; Nội</strong></p>

			<ol>
				<li><strong><u>Số lượng nh&acirc;n vi&ecirc;n:</u></strong></li>
				<li><strong><u>M&ocirc; tả c&ocirc;ng việc</u></strong></li>
			</ol>

			<p>- C&oacute; kinh nghiệm l&agrave;m Mobile developer (Android or IOS Native ), trong đ&oacute; ưu ti&ecirc;n l&agrave;m xamarin, C&oacute; hiểu biết v&agrave; Develop databases SQL Server. C&oacute; khả Dev API t&iacute;ch hợp với c&aacute;c hệ thống kh&aacute;c.</p>

			<p>- C&oacute; kinh nghiệm l&agrave;m việc với Back-end Restful API.</p>

			<p>- C&oacute; khả năng customize, ph&aacute;t triển sản phẩm theo bản thiết kế.<br />
			- Viết t&agrave;i liệu khi c&oacute; y&ecirc;u cầu</p>

			<p>- Chuẩn bị c&aacute;c c&ocirc;ng cụ cần thiết cho việc lập tr&igrave;nh<br />
			- Xem x&eacute;t code v&agrave; thực hiện Unit test<br />
			- Hỗ trợ c&aacute;c vấn đề li&ecirc;n quan đến lập tr&igrave;nh<br />
			- Thực hiện c&aacute;c c&ocirc;ng việc li&ecirc;n quan kh&aacute;c theo y&ecirc;u cầu của c&ocirc;ng ty<br />
			- Trao đổi, thảo luận với kh&aacute;ch h&agrave;ng c&aacute;c vấn đề li&ecirc;n quan.</p>

			<ol>
				<li><strong><u>Y&ecirc;u cầu c&ocirc;ng việc</u></strong></li>
			</ol>

			<p><strong>-Kiến thức:</strong><br />
			+ Nắm vững v&agrave; chuy&ecirc;n s&acirc;u về c&aacute;c ng&ocirc;n ngữ lập tr&igrave;nh<br />
			+ C&oacute; khả năng design, lập tr&igrave;nh&nbsp;<br />
			+ Khả năng t&igrave;m kiếm th&ocirc;ng tin, giải ph&aacute;p tr&ecirc;n mạng tốt<br />
			+ C&oacute; sản phẩm chạy thực tế tr&ecirc;n Apple Store v&agrave; Google Play.</p>

			<p><strong>- Kỹ năng:</strong><br />
			+ C&oacute; hiểu biết về m&ocirc;i trường ph&aacute;t triển được sử dụng trong dự &aacute;n<br />
			+ C&oacute; tư duy lập tr&igrave;nh tốt, khả năng tự nghi&ecirc;n cứu v&agrave; giải quyết vấn đề độc lập hoặc theo nh&oacute;m<br />
			<strong>- Phẩm chất/ th&aacute;i độ:</strong><br />
			+ Tự tin, năng động, s&aacute;ng tạo, chủ động trong c&ocirc;ng việc, c&oacute; khả năng t&igrave;m kiếm v&agrave; l&agrave;m việc độc lập tốt. &Yacute; thức l&agrave;m việc nh&oacute;m v&agrave; phối hợp c&ocirc;ng việc trong nh&oacute;m tốt khi c&oacute; l&agrave;m việc nh&oacute;m.<br />
			+ Tinh thần tr&aacute;ch nhiệm cao trong c&ocirc;ng việc<br />
			+ C&oacute; t&iacute;nh kỉ luật cao</p>

			<p>+ Chủ động th&ecirc;m giờ ho&agrave;n th&agrave;nh c&ocirc;ng việc hoặc nghi&ecirc;n cứu t&agrave;i liệu</p>

			<ol>
				<li><strong><u>Tốt nghiệp</u></strong>: Tốt nghiệp đại&nbsp; học, tr&ecirc;n đại học chuy&ecirc;n ng&agrave;nh C&ocirc;ng nghệ th&ocirc;ng tin</li>
				<li><strong><u>Thu nhập:</u></strong> Theo năng lực v&agrave; theo thỏa thuận, nhưng thấp nhất 15 triệu</li>
			</ol>
			</td>
		</tr>
		<tr>
			<td>
			<p>&nbsp;</p>

			<p><strong>III</strong></p>
			</td>
			<td>
			<p>&nbsp;</p>

			<p><strong>CHUY&Ecirc;N VI&Ecirc;N TRIỂN KHAI ERP</strong></p>

			<ol>
				<li><strong><u>Số lượng nh&acirc;n vi&ecirc;n:</u></strong></li>
				<li><strong><u>M&ocirc; tả c&ocirc;ng việc</u></strong></li>
			</ol>

			<p>-&nbsp;Nắm vững kiến thức lập tr&igrave;nh cơ sở dữ liệu SQL SERVER</p>

			<p>- C&oacute; khả năng về lập tr&igrave;nh .Net</p>

			<p>- C&oacute; khả năng customize sản phẩm theo bản y&ecirc;u cầu.<br />
			- Viết t&agrave;i liệu khảo s&aacute;t, hướng dẫn sử dụng, đạo tạo kh&aacute;ch h&agrave;ng sử dụng giải ph&aacute;p</p>

			<p>- Chuẩn bị c&aacute;c c&ocirc;ng cụ cần thiết cho việc triển khai giải ph&aacute;p<br />
			- Hỗ trợ c&aacute;c vấn đề li&ecirc;n quan đến triển khai<br />
			- Thực hiện c&aacute;c c&ocirc;ng việc li&ecirc;n quan kh&aacute;c theo y&ecirc;u cầu của c&ocirc;ng ty<br />
			- Trao đổi, thảo luận với kh&aacute;ch h&agrave;ng c&aacute;c vấn đề li&ecirc;n quan.</p>

			<p>- C&oacute; khả năng tư vấn giải ph&aacute;p cho kh&aacute;ch h&agrave;ng</p>

			<ol>
				<li><strong><u>Y&ecirc;u cầu c&ocirc;ng việc</u></strong></li>
			</ol>

			<p><strong>-Kiến thức:</strong><br />
			+ Nắm vững v&agrave; chuy&ecirc;n s&acirc;u về c&aacute;c ng&ocirc;n ngữ lập tr&igrave;nh (Net + SQL), Kiến thức kế to&aacute;n l&agrave; một lợi thế<br />
			+ C&oacute; khả lắng nghe v&agrave; thuyết phục, tư vấn cho kh&aacute;ch h&agrave;ng</p>

			<p>+ Khả năng t&igrave;m kiếm th&ocirc;ng tin, giải ph&aacute;p tr&ecirc;n mạng tốt<br />
			<strong>- Kỹ năng:</strong><br />
			+ C&oacute; hiểu biết về phương ph&aacute;p tổ chức triển khai giải ph&aacute;p ERP cho c&aacute;c doanh nghiệp<br />
			+ C&oacute; tư duy lập tr&igrave;nh tốt, khả năng tự nghi&ecirc;n cứu v&agrave; giải quyết vấn đề độc lập hoặc theo nh&oacute;m<br />
			<strong>- Phẩm chất/ th&aacute;i độ:</strong><br />
			+ Tự tin, năng động, s&aacute;ng tạo, chủ động trong c&ocirc;ng việc, c&oacute; khả năng t&igrave;m kiếm v&agrave; l&agrave;m việc độc lập tốt. &Yacute; thức l&agrave;m việc nh&oacute;m v&agrave; phối hợp c&ocirc;ng việc trong nh&oacute;m tốt khi c&oacute; l&agrave;m việc nh&oacute;m.<br />
			+ Tinh thần tr&aacute;ch nhiệm cao trong c&ocirc;ng việc<br />
			+ C&oacute; t&iacute;nh kỉ luật cao</p>

			<p>+ Chủ động c&ocirc;ng việc v&agrave; sẵn s&agrave;ng l&agrave;m ngo&agrave;i giờ khi kh&aacute;ch h&agrave;ng c&oacute; y&ecirc;u cầu</p>

			<p>+ Sẵn s&agrave;ng đi c&ocirc;ng t&aacute;c v&agrave; c&oacute; t&iacute;nh chủ động lập kế hoạch c&ocirc;ng việc khi khi triển trực tiếp Onsite triển khai tại kh&aacute;ch h&agrave;ng.</p>

			<ol>
				<li><strong><u>Tốt nghiệp</u></strong>: Tốt nghiệp đại&nbsp; học, tr&ecirc;n đại học chuy&ecirc;n ng&agrave;nh C&ocirc;ng nghệ th&ocirc;ng tin, hệ thống th&ocirc;ng tin, kế to&aacute;n (Đối với tốt nghiệp chuy&ecirc;n ng&agrave;nh T&agrave;i ch&iacute;nh kế to&aacute;n y&ecirc;u cầu c&oacute; y&ecirc;u th&iacute;ch v&agrave; đam m&ecirc; CNTT).</li>
				<li><strong><u>Thu nhập:</u></strong></li>
			</ol>

			<p>+ Đối với chuy&ecirc;n vi&ecirc;n triển khai: Theo năng lực v&agrave; theo thỏa thuận, thấp nhất 8 triệu &nbsp;</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>&nbsp;</p>

			<p><strong>IV</strong></p>
			</td>
			<td rowspan="2">
			<p>&nbsp;</p>

			<p><strong>CHUY&Ecirc;N VI&Ecirc;N BẢO H&Agrave;NH PHẦN MỀM</strong></p>

			<ol>
				<li><strong><u>Số lượng nh&acirc;n vi&ecirc;n:</u></strong></li>
				<li><strong><u>M&ocirc; tả c&ocirc;ng việc</u></strong></li>
			</ol>

			<p>- Nắm vững kiến thức lập tr&igrave;nh cơ sở dữ liệu SQL SERVER,</p>

			<p>- C&oacute; khả năng về lập tr&igrave;nh .Net</p>

			<p>- C&oacute; hiểu biết về nghiệp vụ kế to&aacute;n t&agrave;i ch&iacute;nh (Hoặc tốt nghiệp c&aacute;c trường tin học kinh tế)</p>

			<p>- C&oacute; khả năng customize sản phẩm theo bản y&ecirc;u cầu.<br />
			- Chuẩn bị c&aacute;c c&ocirc;ng cụ cần thiết cho việc bảo h&agrave;nh<br />
			- Trả lời điện thoại v&agrave; hỗ trợ c&aacute;c vấn đề li&ecirc;n quan đến bảo h&agrave;nh phần mềm cho kh&aacute;ch h&agrave;ng<br />
			- Thực hiện c&aacute;c c&ocirc;ng việc li&ecirc;n quan kh&aacute;c theo y&ecirc;u cầu của c&ocirc;ng ty<br />
			- Trao đổi, thảo luận với kh&aacute;ch h&agrave;ng c&aacute;c vấn đề li&ecirc;n quan.</p>

			<p>- C&oacute; khả năng tư vấn giải đ&aacute;p thắc mắc cho kh&aacute;ch h&agrave;ng</p>

			<ol>
				<li><strong><u>Y&ecirc;u cầu c&ocirc;ng việc</u></strong></li>
			</ol>

			<p><strong>- Kiến thức:</strong><br />
			+ Nắm vững v&agrave; chuy&ecirc;n s&acirc;u về c&aacute;c ng&ocirc;n ngữ lập tr&igrave;nh (Net + SQL), Kiến thức t&agrave;i ch&iacute;nh kế to&aacute;n</p>

			<p>+ C&oacute; khả lắng nghe v&agrave; thuyết phục, tư vấn cho kh&aacute;ch h&agrave;ng</p>

			<p>+ Khả năng t&igrave;m kiếm th&ocirc;ng tin, giải ph&aacute;p tr&ecirc;n mạng tốt<br />
			<strong>- Kỹ năng:</strong><br />
			+ C&oacute; khả năng lắng nghe, giải đ&aacute;p thắc mắc, tư vấn cho kh&aacute;ch h&agrave;ng qua điện thoại, Email,..<br />
			+ C&oacute; tư duy tốt, khả năng tự nghi&ecirc;n cứu v&agrave; giải quyết vấn đề độc lập hoặc theo nh&oacute;m<br />
			<strong>- Phẩm chất/ th&aacute;i độ:</strong><br />
			+ Tự tin, năng động, s&aacute;ng tạo, chủ động trong c&ocirc;ng việc, c&oacute; khả năng t&igrave;m kiếm v&agrave; l&agrave;m việc độc lập tốt. &Yacute; thức l&agrave;m việc nh&oacute;m v&agrave; phối hợp c&ocirc;ng việc trong nh&oacute;m tốt khi c&oacute; l&agrave;m việc nh&oacute;m.<br />
			+ Tinh thần tr&aacute;ch nhiệm cao trong c&ocirc;ng việc<br />
			+ C&oacute; t&iacute;nh kỉ luật cao</p>

			<p>+ Chủ động c&ocirc;ng việc v&agrave; sẵn s&agrave;ng l&agrave;m ngo&agrave;i giờ khi kh&aacute;ch h&agrave;ng c&oacute; y&ecirc;u cầu</p>

			<ol>
				<li><strong><u>Tốt nghiệp</u></strong>: Tốt nghiệp đại&nbsp; học, tr&ecirc;n đại học chuy&ecirc;n ng&agrave;nh C&ocirc;ng nghệ th&ocirc;ng tin, hệ thống th&ocirc;ng tin.</li>
				<li><strong><u>Thu nhập:</u></strong></li>
			</ol>

			<p>+ Đối với chuy&ecirc;n vi&ecirc;n bảo h&agrave;nh: Theo năng lực v&agrave; theo thỏa thuận, thấp nhất 7 triệu&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>&nbsp;</p>
			</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>

<ol>
	<li><strong>Y&Ecirc;U CẦU CHUNG</strong></li>
</ol>

<ul>
	<li>Tốt nghiệp đại học, tr&ecirc;n đại học chuy&ecirc;n ng&agrave;nh C&ocirc;ng nghệ th&ocirc;ng tin, hệ thống th&ocirc;ng tin, kế to&aacute;n</li>
	<li>Nắm vững kiến thức lập tr&igrave;nh cơ sở dữ liệu SQL SERVER, .Net</li>
	<li>C&oacute; khả năng tư vấn giải đ&aacute;p thắc mắc cho kh&aacute;ch h&agrave;ng</li>
	<li>Tự tin, năng động, s&aacute;ng tạo, chủ động trong c&ocirc;ng việc. C&oacute; t&iacute;nh kỉ luật cao. Tinh thần tr&aacute;ch nhiệm cao.</li>
</ul>

<ol>
	<li><strong>QUYỀN LỢI CHUNG</strong></li>
</ol>

<ul>
	<li>Mức lương thỏa thuận +&nbsp; Phụ cấp thỏa thuận theo năng lực</li>
	<li>Phụ cấp ca trưa 650,000 VNĐ/ người/ th&aacute;ng</li>
	<li>Được tham gia đ&oacute;ng BHXH, BHYT, BHTN theo quy định ph&aacute;p luật.</li>
	<li>Được hưởng đầy đủ c&aacute;c chế độ: thưởng c&ocirc;ng việc, ng&agrave;y lễ, Tết, li&ecirc;n hoan, sinh nhật, teambuilding, nghỉ m&aacute;t, gala ,&hellip;.</li>
	<li>Được đ&agrave;o tạo tại c&ocirc;ng ty hoặc tham gia c&aacute;c kh&oacute;a học b&ecirc;n ngo&agrave;i.</li>
	<li>C&oacute; cơ hội mở rộng kiến thức</li>
	<li>Tăng thu nhập &iacute;t nhất 10% năm (Trong 3 năm đầu ti&ecirc;n)</li>
	<li>Thời gian l&agrave;m việc từ T2 đến s&aacute;ng T7, 8h &ndash; 12H đến 13H30- 17h30.</li>
	<li>C&aacute;c ng&agrave;y lễ được nghỉ theo quy định ph&aacute;p luật, Thưởng theo quy định c&ocirc;ng ty, thưởng th&aacute;ng lương 13 b&igrave;nh qu&acirc;n trong năm đối với tết &acirc;m lịch.</li>
</ul>

<p><strong>D. H&Igrave;NH THỨC NỘP HỒ SƠ</strong></p>

<ul>
	<li>Hồ sơ gồm c&oacute;: Sơ yếu l&yacute; lịch, CV, chứng minh thư photo, bằng cấp li&ecirc;n quan (photo)</li>
	<li>Nộp hồ sơ trực tiếp tại văn ph&ograve;ng Cybersoft &ndash; Tầng 5, T&ograve;a nh&agrave; Viện c&ocirc;ng nghệ, Số 25 Vũ Ngọc Phan, L&aacute;ng Hạ, Đống Đa, H&agrave; Nội.</li>
	<li>Nộp hồ sơ qua Email:&nbsp;<a href="mailto:admin@cybersoft.com.vn">admin@cybersoft.com.vn</a> &ndash; ghi r&otilde; nội dung Họ v&agrave; t&ecirc;n_ vị tr&iacute; ứng tuyển</li>
	<li>Nộp hồ sơ qua website:&nbsp;<a href="http://www.cybersoft.com.vn">www.cybersoft.com.vn</a>.</li>
	<li>Địa điểm l&agrave;m việc:</li>
</ul>

<p><strong>+ H&agrave; Nội:&nbsp;</strong>Tầng 5, t&ograve;a nh&agrave; Viện C&ocirc;ng Nghệ - số 25 Vũ Ngọc Phan, Đống Đa, H&agrave; Nội</p>

<p><strong>+ Hồ Ch&iacute; Minh:&nbsp;</strong>Tầng 2, t&ograve;a nh&agrave; Galaxy 9 Residences, số 9 Nguyễn Kho&aacute;i, P1, Q4, TP HCM</p>

<ul>
	<li>Li&ecirc;n hệ trực tiếp: Ms Oanh 0393.659.640 &ndash; Ph&ograve;ng h&agrave;nh ch&iacute;nh nh&acirc;n sự</li>
</ul>

<p><em><strong>H&acirc;n hạnh ch&agrave;o đ&oacute;n c&aacute;c ứng vi&ecirc;n ứng tuyển!</strong></em></p>
', 10040, CAST(N'2022-05-16T14:35:44.883' AS DateTime), 1, NULL)
INSERT [dbo].[Content] ([ID], [Name], [MetaTitle], [Image], [Detail], [CatergoryID], [CreateDate], [Status], [TopHot]) VALUES (31, N'Bản tin số 1', NULL, N'/asset/Image/images/hot-news-banner.jpg', NULL, 10038, CAST(N'2022-05-16T14:37:52.433' AS DateTime), 1, CAST(N'2022-05-16T14:44:12.897' AS DateTime))
INSERT [dbo].[Content] ([ID], [Name], [MetaTitle], [Image], [Detail], [CatergoryID], [CreateDate], [Status], [TopHot]) VALUES (32, N'Bản tin số 2', NULL, N'/asset/Image/images/hot-news-banner.jpg', NULL, 10038, CAST(N'2022-05-16T14:38:06.887' AS DateTime), 1, CAST(N'2022-05-16T14:44:05.807' AS DateTime))
INSERT [dbo].[Content] ([ID], [Name], [MetaTitle], [Image], [Detail], [CatergoryID], [CreateDate], [Status], [TopHot]) VALUES (33, N'Bản tin số 3', N'/ban-tin-so-3', N'/asset/Image/images/hot-news-banner.jpg', NULL, 10038, CAST(N'2022-05-16T14:38:25.907' AS DateTime), 1, CAST(N'2022-05-16T14:43:58.240' AS DateTime))
SET IDENTITY_INSERT [dbo].[Content] OFF
GO
SET IDENTITY_INSERT [dbo].[HeadLine] ON 

INSERT [dbo].[HeadLine] ([ID], [Name], [Status], [CreateDate], [DisplayOrder]) VALUES (1, N'Thông báo kế hoạch trở lại trường học', 1, CAST(N'2022-05-14' AS Date), 1)
INSERT [dbo].[HeadLine] ([ID], [Name], [Status], [CreateDate], [DisplayOrder]) VALUES (2, N'Khai báo y tế Covid', 1, CAST(N'2022-05-14' AS Date), 2)
SET IDENTITY_INSERT [dbo].[HeadLine] OFF
GO
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([ID], [Name], [Metatitle], [DisplayOrder], [CreateDate], [Status]) VALUES (1, N'Giới thiệu', N'/gioi-thieu', 1, CAST(N'2022-04-09T16:22:10.727' AS DateTime), 1)
INSERT [dbo].[Menu] ([ID], [Name], [Metatitle], [DisplayOrder], [CreateDate], [Status]) VALUES (2, N'Sinh viên', N'/sinh-vien', 2, CAST(N'2022-04-09T16:22:51.520' AS DateTime), 1)
INSERT [dbo].[Menu] ([ID], [Name], [Metatitle], [DisplayOrder], [CreateDate], [Status]) VALUES (3, N'Thông tin đào tạo', N'/thong-tin-dao-tạo', 3, CAST(N'2022-04-09T16:23:15.100' AS DateTime), 1)
INSERT [dbo].[Menu] ([ID], [Name], [Metatitle], [DisplayOrder], [CreateDate], [Status]) VALUES (4, N'Đơn vị trực thuộc', N'/don-vi-truc-thuoc', 4, CAST(N'2022-04-09T16:23:43.730' AS DateTime), 1)
INSERT [dbo].[Menu] ([ID], [Name], [Metatitle], [DisplayOrder], [CreateDate], [Status]) VALUES (5, N'Biểu mẫu sinh viên', N'/bieu-mau-sinh-vien', 5, CAST(N'2022-04-09T16:24:04.240' AS DateTime), 1)
INSERT [dbo].[Menu] ([ID], [Name], [Metatitle], [DisplayOrder], [CreateDate], [Status]) VALUES (7, N'Thông báo và tin tức', N'/thong-bao-va-tin-tuc', 7, CAST(N'2022-04-09T17:21:19.693' AS DateTime), 1)
INSERT [dbo].[Menu] ([ID], [Name], [Metatitle], [DisplayOrder], [CreateDate], [Status]) VALUES (9, N'Khoa học công nghệ', N'/khoa-hoc-cong-nghe', 6, CAST(N'2022-05-14T23:10:19.287' AS DateTime), 1)
INSERT [dbo].[Menu] ([ID], [Name], [Metatitle], [DisplayOrder], [CreateDate], [Status]) VALUES (10, N'Các khoa', NULL, 9, CAST(N'2022-05-15T20:36:34.977' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Menu] OFF
GO
SET IDENTITY_INSERT [dbo].[Slide] ON 

INSERT [dbo].[Slide] ([ID], [Image], [Link], [DisplayOrder], [Status], [CreateDate]) VALUES (3, N'/asset/Image/images/tuyensinh-banner.png', N'http://tuyensinh.hunre.edu.vn/', 0, 1, CAST(N'2022-05-15' AS Date))
INSERT [dbo].[Slide] ([ID], [Image], [Link], [DisplayOrder], [Status], [CreateDate]) VALUES (4, N'/asset/Image/images/slidehoteline.gif', NULL, 1, 1, CAST(N'2022-05-15' AS Date))
INSERT [dbo].[Slide] ([ID], [Image], [Link], [DisplayOrder], [Status], [CreateDate]) VALUES (5, N'/asset/Image/images/giay-chung-nhan.jpg', NULL, 2, 1, CAST(N'2022-05-15' AS Date))
INSERT [dbo].[Slide] ([ID], [Image], [Link], [DisplayOrder], [Status], [CreateDate]) VALUES (6, N'/asset/Image/images/su%20menh%20va%20dao%20to.jpg', NULL, 3, 1, CAST(N'2022-05-15' AS Date))
INSERT [dbo].[Slide] ([ID], [Image], [Link], [DisplayOrder], [Status], [CreateDate]) VALUES (7, N'/asset/Image/images/standee1_filein-1.jpg', NULL, 4, 1, CAST(N'2022-05-15' AS Date))
INSERT [dbo].[Slide] ([ID], [Image], [Link], [DisplayOrder], [Status], [CreateDate]) VALUES (8, N'/asset/Image/images/standee2_filein_page-0001.jpg', NULL, 5, 1, CAST(N'2022-05-15' AS Date))
SET IDENTITY_INSERT [dbo].[Slide] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [UserName], [PassWord], [Status], [CreateDate]) VALUES (1, N'admin', N'admin', 1, CAST(N'2022-03-26T06:26:15.420' AS DateTime))
INSERT [dbo].[User] ([ID], [UserName], [PassWord], [Status], [CreateDate]) VALUES (10, N'khoinguyen', N'3108', 1, NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[catergory] ADD  CONSTRAINT [DF_catergory_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Content] ADD  CONSTRAINT [DF_Content_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Content] ADD  CONSTRAINT [DF_Content_TopHot]  DEFAULT (getdate()) FOR [TopHot]
GO
ALTER TABLE [dbo].[HeadLine] ADD  CONSTRAINT [DF_HeadLine_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
USE [master]
GO
ALTER DATABASE [NCKH] SET  READ_WRITE 
GO

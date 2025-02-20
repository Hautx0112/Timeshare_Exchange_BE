USE [master]
GO
/****** Object:  Database [TimeshareAPI]    Script Date: 3/3/2024 10:41:23 PM ******/
CREATE DATABASE [TimeshareAPI]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TimeshareAPI', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\TimeshareAPI.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TimeshareAPI_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\TimeshareAPI_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [TimeshareAPI] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TimeshareAPI].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TimeshareAPI] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TimeshareAPI] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TimeshareAPI] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TimeshareAPI] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TimeshareAPI] SET ARITHABORT OFF 
GO
ALTER DATABASE [TimeshareAPI] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [TimeshareAPI] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TimeshareAPI] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TimeshareAPI] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TimeshareAPI] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TimeshareAPI] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TimeshareAPI] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TimeshareAPI] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TimeshareAPI] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TimeshareAPI] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TimeshareAPI] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TimeshareAPI] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TimeshareAPI] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TimeshareAPI] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TimeshareAPI] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TimeshareAPI] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TimeshareAPI] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TimeshareAPI] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TimeshareAPI] SET  MULTI_USER 
GO
ALTER DATABASE [TimeshareAPI] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TimeshareAPI] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TimeshareAPI] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TimeshareAPI] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TimeshareAPI] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TimeshareAPI] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [TimeshareAPI] SET QUERY_STORE = ON
GO
ALTER DATABASE [TimeshareAPI] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [TimeshareAPI]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 3/3/2024 10:41:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Id] [nvarchar](50) NOT NULL,
	[fullName] [nvarchar](50) NULL,
	[sex] [bit] NULL,
	[address] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[status] [bit] NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 3/3/2024 10:41:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[id] [nvarchar](50) NOT NULL,
	[timeshareID] [nvarchar](50) NULL,
	[start_day] [datetime] NULL,
	[end_day] [datetime] NULL,
	[memberID] [nvarchar](50) NULL,
	[amount] [int] NULL,
	[adult] [int] NULL,
	[children] [int] NULL,
	[room] [int] NULL,
	[status] [nvarchar](50) NULL,
	[create_day] [datetime] NULL,
	[phone] [nvarchar](50) NULL,
	[fullName] [nvarchar](50) NULL,
	[paymentID] [nvarchar](50) NULL,
 CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exchange]    Script Date: 3/3/2024 10:41:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exchange](
	[Id] [nvarchar](50) NOT NULL,
	[memberID1] [nvarchar](50) NULL,
	[memberID2] [nvarchar](50) NULL,
	[timeshareID1] [nvarchar](50) NULL,
	[timeshareID2] [nvarchar](50) NULL,
	[start_day] [datetime] NULL,
	[end_day] [datetime] NULL,
	[exchange_day] [datetime] NULL,
	[status] [nvarchar](50) NULL,
 CONSTRAINT [PK_Exchange] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 3/3/2024 10:41:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[memberID] [nvarchar](50) NULL,
	[id] [nvarchar](50) NOT NULL,
	[text] [nvarchar](50) NULL,
	[rate] [int] NULL,
	[realestateID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 3/3/2024 10:41:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[PaymentId] [nvarchar](50) NOT NULL,
	[Amount] [decimal](20, 2) NULL,
	[PaymentDate] [datetime] NULL,
	[Status] [nvarchar](50) NULL,
	[MemberId] [nvarchar](50) NULL,
	[BookingId] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Realestate]    Script Date: 3/3/2024 10:41:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Realestate](
	[id] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NULL,
	[location] [nvarchar](50) NULL,
	[facility] [nvarchar](50) NULL,
	[feedbackId] [nvarchar](50) NULL,
	[photo] [nvarchar](500) NULL,
	[status] [nvarchar](50) NULL,
	[price] [decimal](18, 0) NULL,
	[description] [nvarchar](50) NULL,
	[memberId] [nvarchar](50) NULL,
	[create_day] [datetime] NULL,
 CONSTRAINT [PK_Realestate] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Timeshare]    Script Date: 3/3/2024 10:41:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Timeshare](
	[ID] [nvarchar](50) NOT NULL,
	[realestateID] [nvarchar](50) NULL,
	[memberID] [nvarchar](50) NULL,
	[start_day] [datetime] NULL,
	[end_day] [datetime] NULL,
	[status] [nvarchar](50) NULL,
	[create_day] [datetime] NULL,
	[price] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Timeshare] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voucher]    Script Date: 3/3/2024 10:41:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voucher](
	[id] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NULL,
	[amount] [int] NULL,
	[type] [nvarchar](50) NULL,
	[end_day] [datetime] NULL,
	[start_day] [datetime] NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Voucher] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([Id], [fullName], [sex], [address], [phone], [status], [username], [password]) VALUES (N'2a4e05de-e62e-4298-ba89-a8e4082ee861', N'Tong Truong Thanh', 1, N'Long Thanh My, Thu Duc, TP HCM', N'0967992202', 1, N'truongthanh002', N'123')
INSERT [dbo].[Account] ([Id], [fullName], [sex], [address], [phone], [status], [username], [password]) VALUES (N'd6203f64-1384-4345-9b6c-f49cc0a8df8e', N'Huu Phuoc', 1, N'Q9, Thành Phố Thủ Đức', N'0123456789', 1, N'user22', N'123')
INSERT [dbo].[Account] ([Id], [fullName], [sex], [address], [phone], [status], [username], [password]) VALUES (N'ecc56a9d-feff-47dd-9e87-61b86f5bdebb', N'Trương Sỹ Quảng', 1, N'Hồ Chí Minh', N'0888509299', 1, N'meokool', N'123')
GO
INSERT [dbo].[Booking] ([id], [timeshareID], [start_day], [end_day], [memberID], [amount], [adult], [children], [room], [status], [create_day], [phone], [fullName], [paymentID]) VALUES (N'05068556-8eb7-496d-8cda-5e30f6249650', N'f75f035e-6fe2-4693-9a9d-252becf43d28', CAST(N'2024-03-02T00:00:00.000' AS DateTime), CAST(N'2024-03-23T00:00:00.000' AS DateTime), N'ecc56a9d-feff-47dd-9e87-61b86f5bdebb', 500000, 4, 1, NULL, N'1', CAST(N'2024-03-02T01:45:48.483' AS DateTime), N'0888509298', N'Thanh113', NULL)
INSERT [dbo].[Booking] ([id], [timeshareID], [start_day], [end_day], [memberID], [amount], [adult], [children], [room], [status], [create_day], [phone], [fullName], [paymentID]) VALUES (N'0dc9bb3f-142c-4ceb-9e93-b5818297ae5b', N'f75f035e-6fe2-4693-9a9d-252becf43d28', CAST(N'2024-03-02T00:00:00.000' AS DateTime), CAST(N'2024-03-30T00:00:00.000' AS DateTime), N'ecc56a9d-feff-47dd-9e87-61b86f5bdebb', 450000, 2, 1, NULL, N'1', CAST(N'2024-03-02T00:47:15.017' AS DateTime), N'', N'Trương Sỹ Quảng', NULL)
INSERT [dbo].[Booking] ([id], [timeshareID], [start_day], [end_day], [memberID], [amount], [adult], [children], [room], [status], [create_day], [phone], [fullName], [paymentID]) VALUES (N'0ddd8c0d-c453-4ed2-b293-2f9ace7cf57a', N'f75f035e-6fe2-4693-9a9d-252becf43d28', CAST(N'2024-03-02T00:00:00.000' AS DateTime), CAST(N'2024-03-16T00:00:00.000' AS DateTime), N'ecc56a9d-feff-47dd-9e87-61b86f5bdebb', 500000, 4, 2, NULL, N'1', CAST(N'2024-03-02T01:34:43.387' AS DateTime), N'0889509142', N'Trương Sỹ Quảng', NULL)
INSERT [dbo].[Booking] ([id], [timeshareID], [start_day], [end_day], [memberID], [amount], [adult], [children], [room], [status], [create_day], [phone], [fullName], [paymentID]) VALUES (N'16af19ea-26e3-44c0-be7e-cb7d3d1adef1', N'f75f035e-6fe2-4693-9a9d-252becf43d28', CAST(N'2024-03-02T00:00:00.000' AS DateTime), CAST(N'2024-03-08T00:00:00.000' AS DateTime), N'ecc56a9d-feff-47dd-9e87-61b86f5bdebb', 500000, 3, 2, NULL, N'1', CAST(N'2024-03-02T02:30:39.460' AS DateTime), N'0888509298', N'Trương Sỹ Quảng', NULL)
INSERT [dbo].[Booking] ([id], [timeshareID], [start_day], [end_day], [memberID], [amount], [adult], [children], [room], [status], [create_day], [phone], [fullName], [paymentID]) VALUES (N'1ea56839-219b-46cb-9577-840528d28890', N'f75f035e-6fe2-4693-9a9d-252becf43d28', CAST(N'2024-03-02T00:00:00.000' AS DateTime), CAST(N'2024-03-17T00:00:00.000' AS DateTime), N'ecc56a9d-feff-47dd-9e87-61b86f5bdebb', 500000, 4, 0, NULL, N'1', CAST(N'2024-03-02T00:54:46.253' AS DateTime), N'0888509298', N'Trương Sỹ Quảng', NULL)
INSERT [dbo].[Booking] ([id], [timeshareID], [start_day], [end_day], [memberID], [amount], [adult], [children], [room], [status], [create_day], [phone], [fullName], [paymentID]) VALUES (N'20bc9d44-74cd-42d5-9f41-acbbfa49d288', N'f75f035e-6fe2-4693-9a9d-252becf43d28', CAST(N'2024-03-16T00:00:00.000' AS DateTime), CAST(N'2024-03-24T00:00:00.000' AS DateTime), N'ecc56a9d-feff-47dd-9e87-61b86f5bdebb', 500000, 3, 2, NULL, N'1', CAST(N'2024-03-02T02:30:22.963' AS DateTime), N'0888509298', N'Trương Sỹ Quảng', NULL)
INSERT [dbo].[Booking] ([id], [timeshareID], [start_day], [end_day], [memberID], [amount], [adult], [children], [room], [status], [create_day], [phone], [fullName], [paymentID]) VALUES (N'22c37152-09e7-483a-8aa8-3397f8556f11', N'f75f035e-6fe2-4693-9a9d-252becf43d28', CAST(N'2024-03-02T00:00:00.000' AS DateTime), CAST(N'2024-03-23T00:00:00.000' AS DateTime), N'ecc56a9d-feff-47dd-9e87-61b86f5bdebb', 500000, 4, 1, NULL, N'1', CAST(N'2024-03-02T01:46:35.633' AS DateTime), N'0888509298', N'Thanh113', NULL)
INSERT [dbo].[Booking] ([id], [timeshareID], [start_day], [end_day], [memberID], [amount], [adult], [children], [room], [status], [create_day], [phone], [fullName], [paymentID]) VALUES (N'28aabd44-802e-49bb-a88c-b699d5ed6224', N'f75f035e-6fe2-4693-9a9d-252becf43d28', CAST(N'2024-03-01T00:00:00.000' AS DateTime), CAST(N'2024-03-29T00:00:00.000' AS DateTime), N'ecc56a9d-feff-47dd-9e87-61b86f5bdebb', 500000, 3, 1, NULL, N'1', CAST(N'2024-03-02T02:22:22.747' AS DateTime), N'0889509142', N'Trương Sỹ Quảng', NULL)
INSERT [dbo].[Booking] ([id], [timeshareID], [start_day], [end_day], [memberID], [amount], [adult], [children], [room], [status], [create_day], [phone], [fullName], [paymentID]) VALUES (N'2ae5bb6d-6750-45ca-ab4d-a0769efa6c40', N'f75f035e-6fe2-4693-9a9d-252becf43d28', CAST(N'2024-03-01T00:00:00.000' AS DateTime), CAST(N'2024-03-15T00:00:00.000' AS DateTime), N'ecc56a9d-feff-47dd-9e87-61b86f5bdebb', 500000, 3, 2, NULL, N'1', CAST(N'2024-03-02T02:27:56.527' AS DateTime), N'0888509298', N'Trương Sỹ Quảng', NULL)
INSERT [dbo].[Booking] ([id], [timeshareID], [start_day], [end_day], [memberID], [amount], [adult], [children], [room], [status], [create_day], [phone], [fullName], [paymentID]) VALUES (N'2af76da3-1367-477e-a5bb-c4e1e77bd05d', N'f75f035e-6fe2-4693-9a9d-252becf43d28', CAST(N'2024-03-07T00:00:00.000' AS DateTime), CAST(N'2024-03-22T00:00:00.000' AS DateTime), N'ecc56a9d-feff-47dd-9e87-61b86f5bdebb', 500000, 3, 0, NULL, N'1', CAST(N'2024-03-02T01:49:28.807' AS DateTime), N'0888509298', N'2', NULL)
INSERT [dbo].[Booking] ([id], [timeshareID], [start_day], [end_day], [memberID], [amount], [adult], [children], [room], [status], [create_day], [phone], [fullName], [paymentID]) VALUES (N'2ca708e8-846c-4b89-95f0-dd669915bb61', N'f75f035e-6fe2-4693-9a9d-252becf43d28', CAST(N'2024-03-01T00:00:00.000' AS DateTime), CAST(N'2024-03-15T00:00:00.000' AS DateTime), N'ecc56a9d-feff-47dd-9e87-61b86f5bdebb', 500000, 2, 1, NULL, N'1', CAST(N'2024-03-02T02:21:54.380' AS DateTime), N'0888509298', N'Trương Sỹ Quảng', NULL)
INSERT [dbo].[Booking] ([id], [timeshareID], [start_day], [end_day], [memberID], [amount], [adult], [children], [room], [status], [create_day], [phone], [fullName], [paymentID]) VALUES (N'2e91f83a-946c-448d-a305-140fe7d6ccda', N'f75f035e-6fe2-4693-9a9d-252becf43d28', CAST(N'2024-03-02T00:00:00.000' AS DateTime), CAST(N'2024-03-17T00:00:00.000' AS DateTime), N'ecc56a9d-feff-47dd-9e87-61b86f5bdebb', 500000, 4, 0, NULL, N'1', CAST(N'2024-03-02T00:54:33.420' AS DateTime), N'0888509298', N'Trương Sỹ Quảng', NULL)
INSERT [dbo].[Booking] ([id], [timeshareID], [start_day], [end_day], [memberID], [amount], [adult], [children], [room], [status], [create_day], [phone], [fullName], [paymentID]) VALUES (N'313a4f5f-6fd1-45f3-8c80-bd408a29a831', N'f75f035e-6fe2-4693-9a9d-252becf43d28', CAST(N'2024-03-02T00:00:00.000' AS DateTime), CAST(N'2024-03-30T00:00:00.000' AS DateTime), N'ecc56a9d-feff-47dd-9e87-61b86f5bdebb', 450000, 2, 1, NULL, N'1', CAST(N'2024-03-02T01:22:15.097' AS DateTime), N'', N'Trương Sỹ Quảng', NULL)
INSERT [dbo].[Booking] ([id], [timeshareID], [start_day], [end_day], [memberID], [amount], [adult], [children], [room], [status], [create_day], [phone], [fullName], [paymentID]) VALUES (N'36aa0d46-a021-401e-9cdb-5c543afcae0a', N'f75f035e-6fe2-4693-9a9d-252becf43d28', CAST(N'2024-03-02T00:00:00.000' AS DateTime), CAST(N'2024-03-23T00:00:00.000' AS DateTime), N'ecc56a9d-feff-47dd-9e87-61b86f5bdebb', 500000, 4, 1, NULL, N'1', CAST(N'2024-03-02T01:42:42.183' AS DateTime), N'0888509298', N'Thanh113', NULL)
INSERT [dbo].[Booking] ([id], [timeshareID], [start_day], [end_day], [memberID], [amount], [adult], [children], [room], [status], [create_day], [phone], [fullName], [paymentID]) VALUES (N'3f428a7a-8f4b-4bf4-88bc-252c7f86ac0f', N'f75f035e-6fe2-4693-9a9d-252becf43d28', CAST(N'2024-03-02T00:00:00.000' AS DateTime), CAST(N'2024-03-30T00:00:00.000' AS DateTime), N'ecc56a9d-feff-47dd-9e87-61b86f5bdebb', 450000, 2, 1, NULL, N'1', CAST(N'2024-03-02T00:52:49.787' AS DateTime), N'', N'Trương Sỹ Quảng', NULL)
INSERT [dbo].[Booking] ([id], [timeshareID], [start_day], [end_day], [memberID], [amount], [adult], [children], [room], [status], [create_day], [phone], [fullName], [paymentID]) VALUES (N'3f90d11a-c854-483a-827d-3bc4a8820d24', N'f75f035e-6fe2-4693-9a9d-252becf43d28', CAST(N'2024-03-01T00:00:00.000' AS DateTime), CAST(N'2024-03-15T00:00:00.000' AS DateTime), N'ecc56a9d-feff-47dd-9e87-61b86f5bdebb', 500000, 3, 0, NULL, N'1', CAST(N'2024-03-02T02:27:38.590' AS DateTime), N'0889509142', N'Trương Sỹ Quảng', NULL)
INSERT [dbo].[Booking] ([id], [timeshareID], [start_day], [end_day], [memberID], [amount], [adult], [children], [room], [status], [create_day], [phone], [fullName], [paymentID]) VALUES (N'4f4b829b-dcb9-4404-a724-aeb1a71c8f56', N'f75f035e-6fe2-4693-9a9d-252becf43d28', CAST(N'2024-03-01T00:00:00.000' AS DateTime), CAST(N'2024-03-16T00:00:00.000' AS DateTime), N'ecc56a9d-feff-47dd-9e87-61b86f5bdebb', 500000, 4, 2, NULL, N'1', CAST(N'2024-03-02T02:10:59.877' AS DateTime), N'0889509142', N'Trương Sỹ Quảng', NULL)
INSERT [dbo].[Booking] ([id], [timeshareID], [start_day], [end_day], [memberID], [amount], [adult], [children], [room], [status], [create_day], [phone], [fullName], [paymentID]) VALUES (N'6ae7253d-f459-4bac-9771-b6fdd5e35619', N'f75f035e-6fe2-4693-9a9d-252becf43d28', CAST(N'2024-03-16T00:00:00.000' AS DateTime), CAST(N'2024-03-24T00:00:00.000' AS DateTime), N'ecc56a9d-feff-47dd-9e87-61b86f5bdebb', 450000, 2, 0, NULL, N'1', CAST(N'2024-03-02T02:11:52.730' AS DateTime), N'0888509298', N'Thanh1111', NULL)
INSERT [dbo].[Booking] ([id], [timeshareID], [start_day], [end_day], [memberID], [amount], [adult], [children], [room], [status], [create_day], [phone], [fullName], [paymentID]) VALUES (N'6b9d3cc5-c7ad-4832-887b-c0c68e9963d8', N'f75f035e-6fe2-4693-9a9d-252becf43d28', CAST(N'2024-03-02T00:00:00.000' AS DateTime), CAST(N'2024-03-23T00:00:00.000' AS DateTime), N'ecc56a9d-feff-47dd-9e87-61b86f5bdebb', 500000, 4, 1, NULL, N'1', CAST(N'2024-03-02T01:40:41.390' AS DateTime), N'0888509298', N'Thanh1111', NULL)
INSERT [dbo].[Booking] ([id], [timeshareID], [start_day], [end_day], [memberID], [amount], [adult], [children], [room], [status], [create_day], [phone], [fullName], [paymentID]) VALUES (N'6f11f143-998e-4ef1-853e-ddb4d5e38705', N'f75f035e-6fe2-4693-9a9d-252becf43d28', CAST(N'2024-03-02T00:00:00.000' AS DateTime), CAST(N'2024-03-09T00:00:00.000' AS DateTime), N'ecc56a9d-feff-47dd-9e87-61b86f5bdebb', 500000, 4, 1, NULL, N'1', CAST(N'2024-03-02T01:24:30.127' AS DateTime), N'0888509298', N'Quảng Thanh', NULL)
INSERT [dbo].[Booking] ([id], [timeshareID], [start_day], [end_day], [memberID], [amount], [adult], [children], [room], [status], [create_day], [phone], [fullName], [paymentID]) VALUES (N'75298017-299d-4cfa-8d84-2853455dfec8', N'f75f035e-6fe2-4693-9a9d-252becf43d28', CAST(N'2024-03-02T00:00:00.000' AS DateTime), CAST(N'2024-03-17T00:00:00.000' AS DateTime), N'ecc56a9d-feff-47dd-9e87-61b86f5bdebb', 500000, 4, 0, NULL, N'1', CAST(N'2024-03-02T00:54:56.977' AS DateTime), N'0888509298', N'Trương Sỹ Quảng', NULL)
INSERT [dbo].[Booking] ([id], [timeshareID], [start_day], [end_day], [memberID], [amount], [adult], [children], [room], [status], [create_day], [phone], [fullName], [paymentID]) VALUES (N'7bd5fe81-9ed4-4419-ab20-92632d990d94', N'f75f035e-6fe2-4693-9a9d-252becf43d28', CAST(N'2024-03-02T00:00:00.000' AS DateTime), CAST(N'2024-03-17T00:00:00.000' AS DateTime), N'ecc56a9d-feff-47dd-9e87-61b86f5bdebb', 500000, 4, 0, NULL, N'1', CAST(N'2024-03-02T00:52:46.317' AS DateTime), N'0888509298', N'Trương Sỹ Quảng', NULL)
INSERT [dbo].[Booking] ([id], [timeshareID], [start_day], [end_day], [memberID], [amount], [adult], [children], [room], [status], [create_day], [phone], [fullName], [paymentID]) VALUES (N'7f67631b-ab45-43db-bdf6-82decee29a6e', N'f75f035e-6fe2-4693-9a9d-252becf43d28', CAST(N'2024-03-02T00:00:00.000' AS DateTime), CAST(N'2024-03-16T00:00:00.000' AS DateTime), N'ecc56a9d-feff-47dd-9e87-61b86f5bdebb', 500000, 4, 2, NULL, N'1', CAST(N'2024-03-02T01:33:22.610' AS DateTime), N'0889509142', N'Trương Sỹ Quảng', NULL)
INSERT [dbo].[Booking] ([id], [timeshareID], [start_day], [end_day], [memberID], [amount], [adult], [children], [room], [status], [create_day], [phone], [fullName], [paymentID]) VALUES (N'806e85ec-dfe7-4d44-aa08-450a0028fb17', N'f75f035e-6fe2-4693-9a9d-252becf43d28', CAST(N'2024-03-02T00:00:00.000' AS DateTime), CAST(N'2024-03-23T00:00:00.000' AS DateTime), N'ecc56a9d-feff-47dd-9e87-61b86f5bdebb', 500000, 4, 1, NULL, N'1', CAST(N'2024-03-02T01:43:46.577' AS DateTime), N'0888509298', N'Thanh113', NULL)
INSERT [dbo].[Booking] ([id], [timeshareID], [start_day], [end_day], [memberID], [amount], [adult], [children], [room], [status], [create_day], [phone], [fullName], [paymentID]) VALUES (N'8cd47ac7-abf7-46f0-9350-3cc3eb0b27dd', N'f75f035e-6fe2-4693-9a9d-252becf43d28', CAST(N'2024-03-02T00:00:00.000' AS DateTime), CAST(N'2024-03-23T00:00:00.000' AS DateTime), N'ecc56a9d-feff-47dd-9e87-61b86f5bdebb', 500000, 4, 1, NULL, N'1', CAST(N'2024-03-02T01:46:28.070' AS DateTime), N'0888509298', N'Thanh113', NULL)
INSERT [dbo].[Booking] ([id], [timeshareID], [start_day], [end_day], [memberID], [amount], [adult], [children], [room], [status], [create_day], [phone], [fullName], [paymentID]) VALUES (N'8e966820-be42-4d35-abe3-490841c4844d', N'f75f035e-6fe2-4693-9a9d-252becf43d28', CAST(N'2024-03-01T00:00:00.000' AS DateTime), CAST(N'2024-03-16T00:00:00.000' AS DateTime), N'ecc56a9d-feff-47dd-9e87-61b86f5bdebb', 500000, 4, 1, NULL, N'1', CAST(N'2024-03-02T01:53:14.810' AS DateTime), N'0888509298', N'Trương Sỹ Quảng', NULL)
INSERT [dbo].[Booking] ([id], [timeshareID], [start_day], [end_day], [memberID], [amount], [adult], [children], [room], [status], [create_day], [phone], [fullName], [paymentID]) VALUES (N'90822624-c798-4dbe-984f-6508de2b39d8', N'f75f035e-6fe2-4693-9a9d-252becf43d28', CAST(N'2024-03-02T00:00:00.000' AS DateTime), CAST(N'2024-03-09T00:00:00.000' AS DateTime), N'ecc56a9d-feff-47dd-9e87-61b86f5bdebb', 500000, 4, 1, NULL, N'1', CAST(N'2024-03-02T01:25:08.203' AS DateTime), N'0888509298', N'Quảng Thanh', NULL)
INSERT [dbo].[Booking] ([id], [timeshareID], [start_day], [end_day], [memberID], [amount], [adult], [children], [room], [status], [create_day], [phone], [fullName], [paymentID]) VALUES (N'9301e69e-e083-4da2-9fae-fb9638f9507a', N'f75f035e-6fe2-4693-9a9d-252becf43d28', CAST(N'2024-03-02T00:00:00.000' AS DateTime), CAST(N'2024-03-09T00:00:00.000' AS DateTime), N'ecc56a9d-feff-47dd-9e87-61b86f5bdebb', 500000, 4, 1, NULL, N'1', CAST(N'2024-03-02T01:19:05.887' AS DateTime), N'0888509298', N'Trương Sỹ Thanh', NULL)
INSERT [dbo].[Booking] ([id], [timeshareID], [start_day], [end_day], [memberID], [amount], [adult], [children], [room], [status], [create_day], [phone], [fullName], [paymentID]) VALUES (N'9c7361d2-4184-4dc7-a62b-a74b0d665223', N'f75f035e-6fe2-4693-9a9d-252becf43d28', CAST(N'2024-03-16T00:00:00.000' AS DateTime), CAST(N'2024-03-24T00:00:00.000' AS DateTime), N'ecc56a9d-feff-47dd-9e87-61b86f5bdebb', 500000, 3, 2, NULL, N'1', CAST(N'2024-03-02T02:28:52.153' AS DateTime), N'0888509298', N'Trương Sỹ Quảng', NULL)
INSERT [dbo].[Booking] ([id], [timeshareID], [start_day], [end_day], [memberID], [amount], [adult], [children], [room], [status], [create_day], [phone], [fullName], [paymentID]) VALUES (N'a2f18823-2d22-4bdc-b309-6ed94fed1bbe', N'f75f035e-6fe2-4693-9a9d-252becf43d28', CAST(N'2024-03-02T00:00:00.000' AS DateTime), CAST(N'2024-03-09T00:00:00.000' AS DateTime), N'ecc56a9d-feff-47dd-9e87-61b86f5bdebb', 500000, 4, 1, NULL, N'1', CAST(N'2024-03-02T01:24:08.117' AS DateTime), N'0888509298', N'Trương Sỹ Thanh', NULL)
INSERT [dbo].[Booking] ([id], [timeshareID], [start_day], [end_day], [memberID], [amount], [adult], [children], [room], [status], [create_day], [phone], [fullName], [paymentID]) VALUES (N'a3d94346-c137-4e96-9b15-455fa0d88847', N'f75f035e-6fe2-4693-9a9d-252becf43d28', CAST(N'2024-03-08T00:00:00.000' AS DateTime), CAST(N'2024-03-09T00:00:00.000' AS DateTime), N'ecc56a9d-feff-47dd-9e87-61b86f5bdebb', 500000, 2, 1, NULL, N'1', CAST(N'2024-03-02T01:40:13.457' AS DateTime), N'0888509298', N'Trương Sỹ dsadsada', NULL)
INSERT [dbo].[Booking] ([id], [timeshareID], [start_day], [end_day], [memberID], [amount], [adult], [children], [room], [status], [create_day], [phone], [fullName], [paymentID]) VALUES (N'b8674d8c-e306-4883-9a9a-8b591a9f47e0', N'f75f035e-6fe2-4693-9a9d-252becf43d28', CAST(N'2024-03-02T00:00:00.000' AS DateTime), CAST(N'2024-03-23T00:00:00.000' AS DateTime), N'ecc56a9d-feff-47dd-9e87-61b86f5bdebb', 500000, 4, 1, NULL, N'1', CAST(N'2024-03-02T01:44:15.120' AS DateTime), N'0888509298', N'Thanh113', NULL)
INSERT [dbo].[Booking] ([id], [timeshareID], [start_day], [end_day], [memberID], [amount], [adult], [children], [room], [status], [create_day], [phone], [fullName], [paymentID]) VALUES (N'b8eb5007-efd8-4c2f-b410-6d199b280f5e', N'f75f035e-6fe2-4693-9a9d-252becf43d28', CAST(N'2024-03-02T00:00:00.000' AS DateTime), CAST(N'2024-03-16T00:00:00.000' AS DateTime), N'ecc56a9d-feff-47dd-9e87-61b86f5bdebb', 450000, 4, 2, NULL, N'1', CAST(N'2024-03-02T00:59:24.297' AS DateTime), N'0888509298', N'Trương Sỹ Quảng', NULL)
INSERT [dbo].[Booking] ([id], [timeshareID], [start_day], [end_day], [memberID], [amount], [adult], [children], [room], [status], [create_day], [phone], [fullName], [paymentID]) VALUES (N'bd4a23bc-18fe-4f90-8ae9-643b5b42d1fc', N'f75f035e-6fe2-4693-9a9d-252becf43d28', CAST(N'2024-03-02T00:00:00.000' AS DateTime), CAST(N'2024-03-09T00:00:00.000' AS DateTime), N'ecc56a9d-feff-47dd-9e87-61b86f5bdebb', 500000, 4, 1, NULL, N'1', CAST(N'2024-03-02T01:18:03.510' AS DateTime), N'0888509298', N'Trương Sỹ Quảng', NULL)
INSERT [dbo].[Booking] ([id], [timeshareID], [start_day], [end_day], [memberID], [amount], [adult], [children], [room], [status], [create_day], [phone], [fullName], [paymentID]) VALUES (N'f7f1341e-9c9b-4aca-9196-541b5c4d0436', N'f75f035e-6fe2-4693-9a9d-252becf43d28', CAST(N'2024-03-02T00:00:00.000' AS DateTime), CAST(N'2024-03-23T00:00:00.000' AS DateTime), N'ecc56a9d-feff-47dd-9e87-61b86f5bdebb', 500000, 4, 1, NULL, N'1', CAST(N'2024-03-02T01:43:18.907' AS DateTime), N'0888509298', N'Thanh113', NULL)
INSERT [dbo].[Booking] ([id], [timeshareID], [start_day], [end_day], [memberID], [amount], [adult], [children], [room], [status], [create_day], [phone], [fullName], [paymentID]) VALUES (N'ffe42974-22dd-41e5-af42-f8df13d20ec8', N'f75f035e-6fe2-4693-9a9d-252becf43d28', CAST(N'2024-03-02T00:00:00.000' AS DateTime), CAST(N'2024-03-23T00:00:00.000' AS DateTime), N'ecc56a9d-feff-47dd-9e87-61b86f5bdebb', 500000, 4, 1, NULL, N'1', CAST(N'2024-03-02T01:45:04.707' AS DateTime), N'0888509298', N'Thanh113', NULL)
GO
INSERT [dbo].[Payments] ([PaymentId], [Amount], [PaymentDate], [Status], [MemberId], [BookingId]) VALUES (N'72497243-941c-40fb-8c97-d064763e3f72', CAST(1000.00 AS Decimal(20, 2)), CAST(N'2014-12-02T00:00:00.000' AS DateTime), N'completed', N'2a4e05de-e62e-4298-ba89-a8e4082ee861', N'20bc9d44-74cd-42d5-9f41-acbbfa49d288')
INSERT [dbo].[Payments] ([PaymentId], [Amount], [PaymentDate], [Status], [MemberId], [BookingId]) VALUES (N'cc22f9e7-e7e6-4e8f-b0da-f197c581729a', CAST(3000.00 AS Decimal(20, 2)), CAST(N'2024-03-03T00:00:00.000' AS DateTime), N'completed', N'ecc56a9d-feff-47dd-9e87-61b86f5bdebb', N'2ca708e8-846c-4b89-95f0-dd669915bb61')
INSERT [dbo].[Payments] ([PaymentId], [Amount], [PaymentDate], [Status], [MemberId], [BookingId]) VALUES (N'f9fcb6ea-a8a1-414b-a8c4-734acb01c9b7', CAST(5000.00 AS Decimal(20, 2)), CAST(N'2024-11-11T00:00:00.000' AS DateTime), N'waiting', N'd6203f64-1384-4345-9b6c-f49cc0a8df8e', N'806e85ec-dfe7-4d44-aa08-450a0028fb17')
GO
INSERT [dbo].[Realestate] ([id], [name], [location], [facility], [feedbackId], [photo], [status], [price], [description], [memberId], [create_day]) VALUES (N'6d2ce909-9d91-4c97-a09c-0385b59f04a2', N'FPTU_1', N'Hồ Chí Minh', N'Ok', NULL, N'Uploads\6d2ce909-9d91-4c97-a09c-0385b59f04a2.jpg,Uploads\6d2ce909-9d91-4c97-a09c-0385b59f04a2.jpeg,Uploads\6d2ce909-9d91-4c97-a09c-0385b59f04a2_1.jpeg', N'2', CAST(900000 AS Decimal(18, 0)), N'Ok', N'ecc56a9d-feff-47dd-9e87-61b86f5bdebb', CAST(N'2024-03-01T23:42:58.390' AS DateTime))
INSERT [dbo].[Realestate] ([id], [name], [location], [facility], [feedbackId], [photo], [status], [price], [description], [memberId], [create_day]) VALUES (N'a8ea4125-a781-4b30-9bc3-7684248a05da', N'Cen Hotel', N'Vũng Tàu', N'1000', NULL, N'Uploads\a8ea4125-a781-4b30-9bc3-7684248a05da.jpg,Uploads\a8ea4125-a781-4b30-9bc3-7684248a05da_1.jpg,Uploads\a8ea4125-a781-4b30-9bc3-7684248a05da_2.jpg,Uploads\a8ea4125-a781-4b30-9bc3-7684248a05da_3.jpg,Uploads\a8ea4125-a781-4b30-9bc3-7684248a05da_4.jpg,Uploads\a8ea4125-a781-4b30-9bc3-7684248a05da_5.jpg', N'2', CAST(500000 AS Decimal(18, 0)), N'Vũng Tàu trip', N'ecc56a9d-feff-47dd-9e87-61b86f5bdebb', CAST(N'2024-03-01T23:43:40.943' AS DateTime))
INSERT [dbo].[Realestate] ([id], [name], [location], [facility], [feedbackId], [photo], [status], [price], [description], [memberId], [create_day]) VALUES (N'd7934dab-5fcb-41eb-8089-da734a6f52bb', N'FPTU', N'Hồ Chí Minh', N'111', NULL, N'Uploads\d7934dab-5fcb-41eb-8089-da734a6f52bb.jpg,Uploads\d7934dab-5fcb-41eb-8089-da734a6f52bb.jpeg,Uploads\d7934dab-5fcb-41eb-8089-da734a6f52bb_1.jpeg', N'2', CAST(100000 AS Decimal(18, 0)), N'1111', N'ecc56a9d-feff-47dd-9e87-61b86f5bdebb', CAST(N'2024-03-01T10:24:06.220' AS DateTime))
GO
INSERT [dbo].[Timeshare] ([ID], [realestateID], [memberID], [start_day], [end_day], [status], [create_day], [price]) VALUES (N'1bfa10a3-69af-4d2c-ab37-cae0df25be8b', N'd7934dab-5fcb-41eb-8089-da734a6f52bb', N'ecc56a9d-feff-47dd-9e87-61b86f5bdebb', CAST(N'2024-03-02T00:00:00.000' AS DateTime), CAST(N'2024-03-30T00:00:00.000' AS DateTime), N'true', CAST(N'2024-03-01T10:24:36.223' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Timeshare] ([ID], [realestateID], [memberID], [start_day], [end_day], [status], [create_day], [price]) VALUES (N'6ef612d5-7c81-4b42-b0b0-d450c001a311', N'd7934dab-5fcb-41eb-8089-da734a6f52bb', N'ecc56a9d-feff-47dd-9e87-61b86f5bdebb', CAST(N'2024-03-02T00:00:00.000' AS DateTime), CAST(N'2024-03-30T00:00:00.000' AS DateTime), N'true', CAST(N'2024-03-01T10:46:38.807' AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Timeshare] ([ID], [realestateID], [memberID], [start_day], [end_day], [status], [create_day], [price]) VALUES (N'f75f035e-6fe2-4693-9a9d-252becf43d28', N'a8ea4125-a781-4b30-9bc3-7684248a05da', N'ecc56a9d-feff-47dd-9e87-61b86f5bdebb', CAST(N'2024-03-02T00:00:00.000' AS DateTime), CAST(N'2024-03-31T00:00:00.000' AS DateTime), N'true', CAST(N'2024-03-02T00:24:51.257' AS DateTime), CAST(30000 AS Decimal(18, 0)))
GO
INSERT [dbo].[Voucher] ([id], [name], [amount], [type], [end_day], [start_day], [status]) VALUES (N'45c6edca-c6cb-4d8a-8709-ad9ed1f17098', N'FPT', 10, N'discount', CAST(N'2024-03-28T00:00:00.000' AS DateTime), CAST(N'2024-03-02T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Voucher] ([id], [name], [amount], [type], [end_day], [start_day], [status]) VALUES (N'8ce9d5ae-f7dd-4f9c-9909-adf7976dd576', N'FPT', 20, N'discount', CAST(N'2024-03-24T00:00:00.000' AS DateTime), CAST(N'2024-03-02T00:00:00.000' AS DateTime), 1)
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Account] FOREIGN KEY([memberID])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_Account]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Timeshare] FOREIGN KEY([timeshareID])
REFERENCES [dbo].[Timeshare] ([ID])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_Timeshare]
GO
ALTER TABLE [dbo].[Exchange]  WITH CHECK ADD  CONSTRAINT [FK_Exchange_Account] FOREIGN KEY([memberID1])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Exchange] CHECK CONSTRAINT [FK_Exchange_Account]
GO
ALTER TABLE [dbo].[Exchange]  WITH CHECK ADD  CONSTRAINT [FK_Exchange_Account1] FOREIGN KEY([memberID2])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Exchange] CHECK CONSTRAINT [FK_Exchange_Account1]
GO
ALTER TABLE [dbo].[Exchange]  WITH CHECK ADD  CONSTRAINT [FK_Exchange_Timeshare] FOREIGN KEY([timeshareID1])
REFERENCES [dbo].[Timeshare] ([ID])
GO
ALTER TABLE [dbo].[Exchange] CHECK CONSTRAINT [FK_Exchange_Timeshare]
GO
ALTER TABLE [dbo].[Exchange]  WITH CHECK ADD  CONSTRAINT [FK_Exchange_Timeshare1] FOREIGN KEY([timeshareID2])
REFERENCES [dbo].[Timeshare] ([ID])
GO
ALTER TABLE [dbo].[Exchange] CHECK CONSTRAINT [FK_Exchange_Timeshare1]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Realestate] FOREIGN KEY([realestateID])
REFERENCES [dbo].[Realestate] ([id])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Realestate]
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_Payments_Account] FOREIGN KEY([MemberId])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_Payments_Account]
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_Payments_Booking] FOREIGN KEY([BookingId])
REFERENCES [dbo].[Booking] ([id])
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_Payments_Booking]
GO
ALTER TABLE [dbo].[Realestate]  WITH CHECK ADD  CONSTRAINT [FK_Realestate_Feedback] FOREIGN KEY([feedbackId])
REFERENCES [dbo].[Feedback] ([id])
GO
ALTER TABLE [dbo].[Realestate] CHECK CONSTRAINT [FK_Realestate_Feedback]
GO
ALTER TABLE [dbo].[Timeshare]  WITH CHECK ADD  CONSTRAINT [FK_Timeshare_Account] FOREIGN KEY([memberID])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Timeshare] CHECK CONSTRAINT [FK_Timeshare_Account]
GO
ALTER TABLE [dbo].[Timeshare]  WITH CHECK ADD  CONSTRAINT [FK_Timeshare_Realestate] FOREIGN KEY([realestateID])
REFERENCES [dbo].[Realestate] ([id])
GO
ALTER TABLE [dbo].[Timeshare] CHECK CONSTRAINT [FK_Timeshare_Realestate]
GO
USE [master]
GO
ALTER DATABASE [TimeshareAPI] SET  READ_WRITE 
GO

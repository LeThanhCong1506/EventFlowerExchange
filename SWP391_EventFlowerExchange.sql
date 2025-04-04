USE [master]
GO
/****** Object:  Database [SWP391EventFlowerExchangePlatform]    Script Date: 11/18/2024 3:31:58 PM ******/
CREATE DATABASE [SWP391EventFlowerExchangePlatform]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SWP391EventFlowerExchangePlatform', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER01\MSSQL\DATA\SWP391EventFlowerExchangePlatform.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SWP391EventFlowerExchangePlatform_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER01\MSSQL\DATA\SWP391EventFlowerExchangePlatform_log.ldf' , SIZE = 139264KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [SWP391EventFlowerExchangePlatform] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SWP391EventFlowerExchangePlatform].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SWP391EventFlowerExchangePlatform] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SWP391EventFlowerExchangePlatform] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SWP391EventFlowerExchangePlatform] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SWP391EventFlowerExchangePlatform] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SWP391EventFlowerExchangePlatform] SET ARITHABORT OFF 
GO
ALTER DATABASE [SWP391EventFlowerExchangePlatform] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SWP391EventFlowerExchangePlatform] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SWP391EventFlowerExchangePlatform] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SWP391EventFlowerExchangePlatform] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SWP391EventFlowerExchangePlatform] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SWP391EventFlowerExchangePlatform] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SWP391EventFlowerExchangePlatform] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SWP391EventFlowerExchangePlatform] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SWP391EventFlowerExchangePlatform] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SWP391EventFlowerExchangePlatform] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SWP391EventFlowerExchangePlatform] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SWP391EventFlowerExchangePlatform] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SWP391EventFlowerExchangePlatform] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SWP391EventFlowerExchangePlatform] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SWP391EventFlowerExchangePlatform] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SWP391EventFlowerExchangePlatform] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SWP391EventFlowerExchangePlatform] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SWP391EventFlowerExchangePlatform] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SWP391EventFlowerExchangePlatform] SET  MULTI_USER 
GO
ALTER DATABASE [SWP391EventFlowerExchangePlatform] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SWP391EventFlowerExchangePlatform] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SWP391EventFlowerExchangePlatform] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SWP391EventFlowerExchangePlatform] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SWP391EventFlowerExchangePlatform] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SWP391EventFlowerExchangePlatform] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [SWP391EventFlowerExchangePlatform] SET QUERY_STORE = ON
GO
ALTER DATABASE [SWP391EventFlowerExchangePlatform] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [SWP391EventFlowerExchangePlatform]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 11/18/2024 3:31:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 11/18/2024 3:31:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Salary] [float] NULL,
	[Balance] [decimal](18, 2) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[Status] [bit] NULL,
	[UserName] [nvarchar](max) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](max) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Address] [nvarchar](max) NULL,
	[OtpExpiration] [datetime2](7) NULL,
	[OtpCode] [nvarchar](50) NULL,
	[Picture] [nvarchar](max) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 11/18/2024 3:31:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[cart_id] [int] IDENTITY(1,1) NOT NULL,
	[buyer_id] [nvarchar](450) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cart_id] ASC,
	[buyer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart_Item]    Script Date: 11/18/2024 3:31:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart_Item](
	[cart_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[buyer_id] [nvarchar](450) NOT NULL,
	[quantity] [int] NULL,
	[price] [decimal](18, 2) NULL,
	[created_at] [datetime] NULL,
	[productImage] [nvarchar](450) NULL,
PRIMARY KEY CLUSTERED 
(
	[cart_id] ASC,
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Delivery_Log]    Script Date: 11/18/2024 3:31:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Delivery_Log](
	[log_id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[delivery_person_id] [nvarchar](450) NULL,
	[status] [nvarchar](50) NULL,
	[reason] [nvarchar](255) NULL,
	[photo_url] [nvarchar](255) NULL,
	[created_at] [datetime] NULL,
	[delivery_at] [datetime] NULL,
	[takeover_at] [datetime] NULL,
 CONSTRAINT [PK__Delivery__9E2397E06F1B411E] PRIMARY KEY CLUSTERED 
(
	[log_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Follow]    Script Date: 11/18/2024 3:31:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Follow](
	[follow_id] [int] IDENTITY(1,1) NOT NULL,
	[follower_id] [nvarchar](450) NOT NULL,
	[seller_id] [nvarchar](450) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[follow_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImageProduct]    Script Date: 11/18/2024 3:31:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImageProduct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NOT NULL,
	[LinkImage] [nvarchar](450) NULL,
 CONSTRAINT [PK__ImagePro__3213E83FBC8D53A3] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 11/18/2024 3:31:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[message_id] [int] IDENTITY(1,1) NOT NULL,
	[sender_id] [nvarchar](450) NOT NULL,
	[receiver_id] [nvarchar](450) NOT NULL,
	[contents] [text] NULL,
	[created_at] [datetime] NULL,
	[notification_id] [int] NOT NULL,
 CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED 
(
	[message_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notification]    Script Date: 11/18/2024 3:31:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification](
	[notification_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [nvarchar](450) NULL,
	[content] [text] NULL,
	[status] [nvarchar](50) NULL,
	[created_at] [datetime] NULL,
 CONSTRAINT [PK__Notifica__E059842FE7EA1D64] PRIMARY KEY CLUSTERED 
(
	[notification_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 11/18/2024 3:31:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[buyer_id] [nvarchar](450) NULL,
	[seller_id] [nvarchar](450) NULL,
	[delivery_person_id] [nvarchar](450) NULL,
	[total_price] [decimal](18, 2) NULL,
	[status] [nvarchar](50) NULL,
	[created_at] [datetime] NULL,
	[issue_report] [nvarchar](max) NULL,
	[voucher_id] [int] NULL,
	[phoneNumber] [nvarchar](max) NULL,
	[delivered_at] [nvarchar](max) NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [PK__Order__465962296172C64F] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Item]    Script Date: 11/18/2024 3:31:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Item](
	[order_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[quantity] [int] NULL,
	[price] [decimal](18, 2) NULL,
 CONSTRAINT [PK__Order_It__022945F65230A002] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC,
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 11/18/2024 3:31:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[payment_id] [int] IDENTITY(1,1) NOT NULL,
	[amount] [decimal](18, 2) NULL,
	[created_at] [datetime] NULL,
	[status] [bit] NULL,
	[payment_code] [varchar](255) NULL,
	[payment_content] [varchar](255) NULL,
	[payment_type] [int] NULL,
	[user_id] [nvarchar](450) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[payment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11/18/2024 3:31:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[seller_id] [nvarchar](450) NULL,
	[product_name] [nvarchar](255) NULL,
	[freshness_duration] [int] NULL,
	[combo_type] [nvarchar](50) NULL,
	[quantity] [int] NULL,
	[price] [decimal](18, 2) NULL,
	[status] [nvarchar](50) NULL,
	[created_at] [datetime] NULL,
	[category] [nvarchar](50) NULL,
	[description] [nvarchar](max) NULL,
	[expired_at] [datetime] NULL,
 CONSTRAINT [PK__Product__47027DF52E9F0063] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Request]    Script Date: 11/18/2024 3:31:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request](
	[request_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [nvarchar](450) NULL,
	[request_type] [varchar](50) NULL,
	[payment_id] [int] NULL,
	[amount] [decimal](18, 2) NULL,
	[product_id] [int] NULL,
	[status] [nvarchar](50) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[reason] [nvarchar](450) NULL,
 CONSTRAINT [PK__Request__18D3B90FFFABB483] PRIMARY KEY CLUSTERED 
(
	[request_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Review]    Script Date: 11/18/2024 3:31:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Review](
	[review_id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[buyer_id] [nvarchar](450) NULL,
	[rating] [int] NULL,
	[comment] [nvarchar](max) NULL,
	[created_at] [datetime] NULL,
 CONSTRAINT [PK__Review__60883D90CCF8528A] PRIMARY KEY CLUSTERED 
(
	[review_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleClaims]    Script Date: 11/18/2024 3:31:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_RoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 11/18/2024 3:31:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shop_Notification]    Script Date: 11/18/2024 3:31:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shop_Notification](
	[shop_notification_id] [int] IDENTITY(1,1) NOT NULL,
	[follower_id] [nvarchar](450) NULL,
	[seller_id] [nvarchar](450) NULL,
	[product_id] [int] NULL,
	[content] [text] NULL,
	[status] [nvarchar](50) NULL,
	[created_at] [datetime] NULL,
 CONSTRAINT [PK__Shop_Not__F695E7D5C0040F56] PRIMARY KEY CLUSTERED 
(
	[shop_notification_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transaction]    Script Date: 11/18/2024 3:31:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transaction](
	[transaction_id] [int] IDENTITY(1,1) NOT NULL,
	[transaction_code] [varchar](255) NULL,
	[order_id] [int] NULL,
	[user_id] [nvarchar](450) NULL,
	[transaction_type] [int] NULL,
	[transaction_content] [varchar](255) NULL,
	[amount] [decimal](18, 2) NULL,
	[status] [bit] NULL,
	[created_at] [datetime] NULL,
 CONSTRAINT [PK__Transact__85C600AF55D6A98C] PRIMARY KEY CLUSTERED 
(
	[transaction_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserClaims]    Script Date: 11/18/2024 3:31:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLogins]    Script Date: 11/18/2024 3:31:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_UserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 11/18/2024 3:31:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTokens]    Script Date: 11/18/2024 3:31:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voucher]    Script Date: 11/18/2024 3:31:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voucher](
	[voucher_id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](50) NOT NULL,
	[description] [nvarchar](max) NULL,
	[min_order_value] [decimal](18, 2) NULL,
	[start_date] [datetime] NULL,
	[expiry_date] [datetime] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[discount_value] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Voucher] PRIMARY KEY CLUSTERED 
(
	[voucher_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240928034105_AddIdentityAuthentication', N'8.0.8')
GO
INSERT [dbo].[Account] ([Id], [Name], [Salary], [Balance], [CreatedAt], [Status], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [OtpExpiration], [OtpCode], [Picture]) VALUES (N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'Tạ Quý Minh', NULL, CAST(1820000.00 AS Decimal(18, 2)), CAST(N'2024-11-08T08:32:02.9471202' AS DateTime2), 1, N'taquyminh0702@gmail.com', N'TAQUYMINH0702@GMAIL.COM', N'taquyminh0702@gmail.com', N'TAQUYMINH0702@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEIH5Vg1vdHVVy8EaqibyKLdMtsNyFtudvJFOYv82RPZdEouyTQk46ZjFHZX2qi+C1A==', N'O3IFXZ75DRW63W3N4VCOZG7TYYGNH57M', N'09f78692-aa05-4343-a682-6304550f30ea', N'0812535573', 0, 0, NULL, 1, 0, N'12 Phạm Huy Thông phường 7', NULL, NULL, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2F6207.png_860_preview_rev_1.png?alt=media&token=af7e73d9-1275-4f1e-9aab-993bfc0e430a')
INSERT [dbo].[Account] ([Id], [Name], [Salary], [Balance], [CreatedAt], [Status], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [OtpExpiration], [OtpCode], [Picture]) VALUES (N'14605c5b-0d53-4807-980d-ecb84c47b25a', N'Tạ Quý Minh', NULL, NULL, CAST(N'2024-11-08T08:57:35.4352949' AS DateTime2), 1, N'seller2@gmail.com', N'SELLER2@GMAIL.COM', N'seller2@gmail.com', N'SELLER2@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEKfe5SSEmHQE+FuXt5xQjXqhp3JnzC8fH/2qA/V6Z0PGlUZUinKuzX+J2Rr1P7GGnA==', N'D3FPW2MJOTV4LUTFPVW6D74T5I7P42J2', N'd1bbcce3-a1ff-44ae-9f74-499e91c832f4', N'0812535573', 0, 0, NULL, 1, 0, N'12 Phạm Huy Thông phường 7', NULL, NULL, NULL)
INSERT [dbo].[Account] ([Id], [Name], [Salary], [Balance], [CreatedAt], [Status], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [OtpExpiration], [OtpCode], [Picture]) VALUES (N'25ad7ca2-e6cd-4b23-b9d8-cda09fefebf6', N'Nguyen Van A', NULL, CAST(900000.00 AS Decimal(18, 2)), CAST(N'2024-10-20T16:05:47.0353414' AS DateTime2), 1, N'nguyenvana@gmail.com', N'NGUYENVANA@GMAIL.COM', N'nguyenvana@gmail.com', N'NGUYENVANA@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEMkVQsnWFvw4usre8z/lLM2oQRLPApkN5aXncGhyrHDlmdySSaAXzR1PYiXP8P3lHg==', N'ENZ23GKSBWB3MQ2SUN7FXFLUYMMVIJYI', N'dad69700-e1a7-44a6-b40d-a8e91d22aa1e', N'0123456789', 0, 0, NULL, 1, 0, N'123 Nguyen Trai', NULL, NULL, NULL)
INSERT [dbo].[Account] ([Id], [Name], [Salary], [Balance], [CreatedAt], [Status], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [OtpExpiration], [OtpCode], [Picture]) VALUES (N'38802e65-f6fb-41c8-8832-d977f4cadd10', N'Manager', 0, CAST(349895000.00 AS Decimal(18, 2)), CAST(N'2024-10-15T07:50:55.1488825' AS DateTime2), 1, N'ManagerEVESystem@gmail.com', N'MANAGEREVESYSTEM@GMAIL.COM', N'ManagerEVESystem@gmail.com', N'MANAGEREVESYSTEM@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEFw/4YQwBlGWez6S/kqq6FHk+TZvVc4nY1U6o4+jRLFdxp79CIPXqjtOWXQvDFW0qA==', N'3HAVWMGJANKYG7Y3MNNF7F27FMAGI36I', N'b2b95f43-4647-40fe-93b8-09e453262963', N'0968686868', 0, 0, NULL, 1, 0, N'District 1, Ho Chi Minh City', NULL, NULL, NULL)
INSERT [dbo].[Account] ([Id], [Name], [Salary], [Balance], [CreatedAt], [Status], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [OtpExpiration], [OtpCode], [Picture]) VALUES (N'49037ec9-2427-4fa0-8cb8-39b0c519ad84', N'Nguyen Van A', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2024-10-23T15:18:33.8912007' AS DateTime2), 0, N'nguyenvanb@gmail.com', N'NGUYENVANB@GMAIL.COM', N'nguyenvanb@gmail.com', N'NGUYENVANB@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEKSGaJAK1PHjWPMQ1WXx/BQ5sO9Mmj1OkeLYmWge3q9+HL3xQZ9JUYvRfJlyQxlqJw==', N'UIZ77AAYJRSB5DWC6TQG776AFBZ4Y7N5', N'9cf80ba9-8903-4190-8196-ef9d5b01d9ee', N'0123456789', 0, 0, NULL, 1, 0, N'123 Nguyen Trai', NULL, NULL, NULL)
INSERT [dbo].[Account] ([Id], [Name], [Salary], [Balance], [CreatedAt], [Status], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [OtpExpiration], [OtpCode], [Picture]) VALUES (N'5548ea17-b441-483b-995f-0bdc34672c28', N'Seller1', NULL, NULL, CAST(N'2024-11-08T08:35:44.7321327' AS DateTime2), 1, N'seller1@gmail.com', N'SELLER1@GMAIL.COM', N'seller1@gmail.com', N'SELLER1@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAENqH6oLGpH02EEpLZ+RGCbMFqR3p/vE/PB+uN6bXI7HFnqzoLJXYspxM56isVKKUtw==', N'2KXXJW3TCCLYAMNGTQMMZKMTIOEIALL2', N'f31ccca3-f244-4aa5-a63e-8d5eaa06d2f9', N'0812535573', 0, 0, NULL, 1, 0, N'12 Phạm Huy Thông phường 7', NULL, NULL, NULL)
INSERT [dbo].[Account] ([Id], [Name], [Salary], [Balance], [CreatedAt], [Status], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [OtpExpiration], [OtpCode], [Picture]) VALUES (N'5bdc31ce-237c-4274-8a4b-566f9eb8a344', N'Shipper', 5000000, NULL, CAST(N'2024-11-13T10:26:07.5432348' AS DateTime2), 1, N'shipper1@gmail.com', N'SHIPPER1@GMAIL.COM', N'shipper1@gmail.com', N'SHIPPER1@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEE7dykyr6XGgaiSiMLcTjXR73Oj54c5RRz+UDL9q/qTotGmH0W6b8IA5107K3I5AVw==', N'3OFTCUMQSLCSRC73CU4XH35V46XCMY7P', N'6caa14a2-2601-4b03-9505-6d5d4f67e918', N'0939378', 0, 0, NULL, 1, 0, N'Binh Chanh District, Ho Chi Minh City', NULL, NULL, NULL)
INSERT [dbo].[Account] ([Id], [Name], [Salary], [Balance], [CreatedAt], [Status], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [OtpExpiration], [OtpCode], [Picture]) VALUES (N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Huynh Nhat Huy', NULL, CAST(86260000.00 AS Decimal(18, 2)), CAST(N'2024-10-04T09:54:08.9830049' AS DateTime2), 1, N'huy260704@gmail.com', N'HUY260704@GMAIL.COM', N'huy260704@gmail.com', N'HUY260704@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEFehX6vv2a5KWleWfu0CJcA+HXzriE376WE716Tv8DvQ30v/oAtkPHcEIiJR9pRRyg==', N'M2TX4PXEIMT6MYJWKYW6CNGYNTA4RD33', N'26e9a959-7ebf-4463-8901-4c031c35dcfb', N'0939378310', 0, 0, NULL, 1, 0, N'Binh Chanh District, Ho Chi Minh City', NULL, NULL, N'djhjfhdsjhfkjsdhkfjs')
INSERT [dbo].[Account] ([Id], [Name], [Salary], [Balance], [CreatedAt], [Status], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [OtpExpiration], [OtpCode], [Picture]) VALUES (N'8c708aa0-48fb-4ef6-b388-285ad2b7412e', N'Nguyen Van A', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2024-10-23T15:20:53.1505929' AS DateTime2), 1, N'nguyenvanc@gmail.com', N'NGUYENVANC@GMAIL.COM', N'nguyenvanc@gmail.com', N'NGUYENVANC@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEP/X7zoBt4CjKURshvyFIhH6lFP/aliTXwyKCX7YdVBXJQKXjzRlOHl70jyTmhrLRg==', N'SSPCLUI7FUTHWALRNRJHPNXPZFKA2TGC', N'c1b6a94f-5d08-4570-9a5a-69801604b22b', N'0123456789', 0, 0, NULL, 1, 0, N'123 Nguyen Trai', NULL, NULL, NULL)
INSERT [dbo].[Account] ([Id], [Name], [Salary], [Balance], [CreatedAt], [Status], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [OtpExpiration], [OtpCode], [Picture]) VALUES (N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Quy Minh', NULL, CAST(67375000.00 AS Decimal(18, 2)), CAST(N'2024-10-09T09:03:30.3394945' AS DateTime2), 1, N'shin@gmail.com', N'SHIN@GMAIL.COM', N'shin@gmail.com', N'SHIN@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEHPIplvQUDR7rc8Tq0ApYK+S1vY/p+M7YLFO0lM4xz5Y9GxJ9q1RUdZST91dRXXIbA==', N'EUKZZWF65NQY2VTX2MNSZ4SYLMUQTDPC', N'd18accc2-777a-4d65-8f0e-28c7d11301cb', N'0900123456', 0, 0, NULL, 1, 0, N'Go Vap District, Ho Chi Minh City', NULL, NULL, NULL)
INSERT [dbo].[Account] ([Id], [Name], [Salary], [Balance], [CreatedAt], [Status], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [OtpExpiration], [OtpCode], [Picture]) VALUES (N'a05e7e7c-0e87-452a-a278-350c18a704ca', N'Anh Thi', 1000000, NULL, CAST(N'2024-10-01T16:15:40.8703696' AS DateTime2), 1, N'thi123@gmail.com', N'THI123@GMAIL.COM', N'thi123@gmail.com', N'THI123@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEP9p+cHFK1fmJuf8FKBbFwdEWejvl+JimSK8oMp97QqSm3jwvVRBD7nr/P6jsIkbyA==', N'5KSYEVD7YNCT2CNLBWJMEZNG6TLDLN2X', N'b487ed51-7284-44ae-a597-218b8a900470', N'0123456789', 0, 0, NULL, 1, 0, N'District 6, Ho Chi Minh City', NULL, NULL, NULL)
INSERT [dbo].[Account] ([Id], [Name], [Salary], [Balance], [CreatedAt], [Status], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [OtpExpiration], [OtpCode], [Picture]) VALUES (N'a3fee471-4879-49e1-abcd-2ea8112d00f7', N'Staff', 10000, NULL, CAST(N'2024-11-08T08:31:36.0373973' AS DateTime2), 1, N'staff@gmail.com', N'STAFF@GMAIL.COM', N'staff@gmail.com', N'STAFF@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEBnSftzO30qnoh+xsODul2XB/gwrjGgcL+ZrBAus+hGl9nGXUBhrAQ8jufWMK0g6Xg==', N'ICQTYUDZRP22HRLHTUXQ66YW4Q4VNFFN', N'17a7c671-c4f9-4041-9ede-3c45b04fe10c', N'123456789', 0, 0, NULL, 1, 0, N'123', NULL, NULL, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2Fnhung-loai-hoa-dep-nhat-hoa-cam-tu-cau_55ff3687eeb64e92bd678735ef94a48b.png?alt=media&token=245c8bd1-b21a-4367-90f1-4c7b3dbad4a9')
INSERT [dbo].[Account] ([Id], [Name], [Salary], [Balance], [CreatedAt], [Status], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [OtpExpiration], [OtpCode], [Picture]) VALUES (N'ad66a05c-8a90-4730-aa69-91b7a81f5f44', N'Test User', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2024-10-23T15:48:00.7800329' AS DateTime2), 1, N'testuser@example.com', N'TESTUSER@EXAMPLE.COM', N'testuser@example.com', N'TESTUSER@EXAMPLE.COM', 0, N'AQAAAAIAAYagAAAAEMSudptID2QqynocM/nS+W/bLjRD8Uc1AHtK4tj58/dRDtXTkq8KDANYYjiIOv6imw==', N'S5HIJ7R7HVITON6WW7VNE3ERCQCENKKJ', N'a99f2119-721a-4ada-9141-67ecde091222', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([Id], [Name], [Salary], [Balance], [CreatedAt], [Status], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [OtpExpiration], [OtpCode], [Picture]) VALUES (N'bf0474a2-b616-48ae-bead-6a7d5fc33970', N'Tạ Quý Minh', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2024-10-23T15:54:52.7956911' AS DateTime2), 1, N'taquyminh07022004@gmail.com', N'TAQUYMINH07022004@GMAIL.COM', N'taquyminh07022004@gmail.com', N'TAQUYMINH07022004@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEAYwRBw6VyTOh7jxhwVJDrK67enc7mqvILmUNQv4ve56mCGWrfCuOlQJXdftYGi06A==', N'KX6CWVA4LRZFZPERQ6X34Q4I2F3OZBIL', N'a38212ae-28ed-4610-b33f-1320edaeb216', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([Id], [Name], [Salary], [Balance], [CreatedAt], [Status], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [OtpExpiration], [OtpCode], [Picture]) VALUES (N'bf2415fd-cd69-4804-b4b6-3b74c051fc31', N'Khuu Tai', NULL, CAST(990000000.00 AS Decimal(18, 2)), CAST(N'2024-10-12T12:48:54.4128433' AS DateTime2), 1, N'taikt@gmail.com', N'TAIKT@GMAIL.COM', N'taikt@gmail.com', N'TAIKT@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAENQQzXpeLV0XX4sT/ZrnfW19R3RR3GGHzBvvxMWlbcFPiHIwo6CPxyt2EnbKwU8/Aw==', N'5CA2SA7RDSPGJFVG6GDNEL5HMBRXC3Z4', N'2a4d3227-2abc-43df-9a3e-b91c9bcbb974', N'0939378310', 0, 0, NULL, 1, 0, N'District 1, Ho Chi Minh City', NULL, NULL, NULL)
INSERT [dbo].[Account] ([Id], [Name], [Salary], [Balance], [CreatedAt], [Status], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [OtpExpiration], [OtpCode], [Picture]) VALUES (N'c2fdb7ac-0f05-45c3-937d-f3642a9a6d21', N'Seller3', NULL, NULL, CAST(N'2024-11-08T09:03:01.6533134' AS DateTime2), 1, N'seller3@gmail.com', N'SELLER3@GMAIL.COM', N'seller3@gmail.com', N'SELLER3@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEKEti8XeAGV/vSubx5zfW79oGHxNblXhoYfNYa4cpEIQ4KLjlZOYqdX0w1K4lkuxhQ==', N'OOIHZEBIX64VPM2MT2IPVRHMZHVUJPAU', N'c83521ef-41c3-49dc-b17a-b9a3c927819c', N'0812535573', 0, 0, NULL, 1, 0, N'12 Phạm Huy Thông phường 7', NULL, NULL, NULL)
INSERT [dbo].[Account] ([Id], [Name], [Salary], [Balance], [CreatedAt], [Status], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [OtpExpiration], [OtpCode], [Picture]) VALUES (N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', N'Minh Trung', 7000000, NULL, CAST(N'2024-10-14T15:54:11.3891213' AS DateTime2), 1, N'trungmike@gmail.com', N'TRUNGMIKE@GMAIL.COM', N'trungmike@gmail.com', N'TRUNGMIKE@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEBukjjIL8it+0aIWumarAGXlDf3qu9ckfnxKVkAi9NrBo4b1jO8+m5wHbwH5XLhMQQ==', N'NCDFPD7EMIO5BPQD6BEYFC7URDNUTDWS', N'b471c2e5-3f5a-4754-aa1c-ae91a3b58015', N'0911223344', 0, 0, NULL, 1, 0, N'Binh Chanh District, Ho Chi Minh City', NULL, NULL, NULL)
INSERT [dbo].[Account] ([Id], [Name], [Salary], [Balance], [CreatedAt], [Status], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [OtpExpiration], [OtpCode], [Picture]) VALUES (N'cb1a042e-a0cf-4deb-8d35-2b4548dc63a7', N'Michael', 5000000, NULL, CAST(N'2024-10-25T09:11:57.2110161' AS DateTime2), 1, N'Michael123@gmail.com', N'MICHAEL123@GMAIL.COM', N'Michael123@gmail.com', N'MICHAEL123@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEOE57RvX6603uGUjR2LeG/EhnV0fL/it1rr2TRyTeTyFbbHQhTIQ3Vk/WRvYT0nB7Q==', N'B7NTIDDDWBQVWOVXGPGZ2BD7WJBAUX6T', N'1ea50422-b8ba-45f3-8f5b-0b8b4281b64d', N'0939378310', 0, 0, NULL, 1, 0, N'Binh Chanh District, Ho Chi Minh City', NULL, NULL, NULL)
INSERT [dbo].[Account] ([Id], [Name], [Salary], [Balance], [CreatedAt], [Status], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [OtpExpiration], [OtpCode], [Picture]) VALUES (N'cd16133f-c9a0-48fd-82d9-375eb72cc042', N'Quy Minh', NULL, CAST(585000.00 AS Decimal(18, 2)), CAST(N'2024-10-12T13:48:42.1079014' AS DateTime2), 1, N'minh1234@gmail.com', N'MINH1234@GMAIL.COM', N'minh1234@gmail.com', N'MINH1234@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEB4bcueGVhOxhyefbpBZG6r6hHjoClscjUtfOvSpnJl5QBKe2P/lLBhuuvslfJ4YLA==', N'NNRXQT7P6GCAV6VION7FCBICPL3AGLJV', N'c436f381-3f9b-4be3-869d-94e6c9005e0b', N'0911223344', 0, 0, NULL, 1, 0, N'Go Vap District, Ho Chi Minh City', NULL, NULL, NULL)
INSERT [dbo].[Account] ([Id], [Name], [Salary], [Balance], [CreatedAt], [Status], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [OtpExpiration], [OtpCode], [Picture]) VALUES (N'd37738ff-0bc2-44c8-8ea6-b9c14f922653', N'Tai Khuu', NULL, CAST(78000000.00 AS Decimal(18, 2)), CAST(N'2024-10-12T14:50:36.1517617' AS DateTime2), 1, N'taikt1122@gmail.com', N'TAIKT1122@GMAIL.COM', N'taikt1122@gmail.com', N'TAIKT1122@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEPcwQJzTTBzKlA9VUIfvyglubUQWZ8pguHYzsT8sC4Y+NKu40rVc/DBv8A7SUsPOOg==', N'AOUNXJPMIETS5HJVPG2MEWXINZM7QWUT', N'9ec73b1b-421e-4362-b288-f221e24eb55f', N'0912345678', 0, 0, NULL, 1, 0, N'string', NULL, NULL, NULL)
INSERT [dbo].[Account] ([Id], [Name], [Salary], [Balance], [CreatedAt], [Status], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [OtpExpiration], [OtpCode], [Picture]) VALUES (N'd4f0c865-20c7-46e5-ba30-23b823ed232c', N'Tai Khuu', NULL, CAST(75000.00 AS Decimal(18, 2)), CAST(N'2024-10-03T14:34:38.5666067' AS DateTime2), 1, N'taiktse184763@fpt.edu.vn', N'TAIKTSE184763@FPT.EDU.VN', N'taiktse184763@fpt.edu.vn', N'TAIKTSE184763@FPT.EDU.VN', 0, N'AQAAAAIAAYagAAAAEKGr3LmTlZ43LVa7/BiBh9v1IKAXyquD0qXdzwRgldf0rHTSHj3oaDTMvU5yYcrU8Q==', N'EZQPKAKOLXQSMFZJY6BQOGZCG3UDCCUU', N'505df22b-8bcf-44ca-afd1-d09a313f4368', N'0912345678', 0, 0, NULL, 1, 0, N'District 1, Ho Chi Minh City', NULL, NULL, NULL)
INSERT [dbo].[Account] ([Id], [Name], [Salary], [Balance], [CreatedAt], [Status], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [OtpExpiration], [OtpCode], [Picture]) VALUES (N'e9c0a6dd-84ff-429f-8c6b-3f0eaf7dab24', N'Le Thanh Cong', NULL, CAST(3567000000.00 AS Decimal(18, 2)), CAST(N'2024-10-04T09:36:51.7136295' AS DateTime2), 1, N'congltse183504@fpt.edu.vn', N'CONGLTSE183504@FPT.EDU.VN', N'congltse183504@fpt.edu.vn', N'CONGLTSE183504@FPT.EDU.VN', 0, N'AQAAAAIAAYagAAAAEPiQuxRthOyFHqV9MO1C488E3/aNVhz/AzncyL8Gg3fT+HTvMTwBUfHa+EY8GMFn5A==', N'23IXNTR3JRYEBXP5CB2HGCYBANGM5FAO', N'53401bc8-a188-42bd-a582-d045add36033', N'0912345678', 0, 0, NULL, 1, 0, N'District 9, Ho Chi Minh City', NULL, NULL, NULL)
INSERT [dbo].[Account] ([Id], [Name], [Salary], [Balance], [CreatedAt], [Status], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [OtpExpiration], [OtpCode], [Picture]) VALUES (N'f857beb8-d0ba-43a8-b887-53173f1c0e27', N'Quy Minh', NULL, CAST(250980000.00 AS Decimal(18, 2)), CAST(N'2024-10-12T13:47:23.4454516' AS DateTime2), 1, N'minh123@gmail.com', N'MINH123@GMAIL.COM', N'minh123@gmail.com', N'MINH123@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEH6YfLLR4Irt8SI8zQ9BJXyrARM4kIBR31NXcIkCMjkiw9BXznX1XcahGivSpyKKrw==', N'E72U2HWIX4NHSIMPDZ3RH2EWBOE7EFPA', N'19cd09c2-6fd6-4582-a7e2-3e84fe336f01', N'0911223344', 0, 0, NULL, 1, 0, N'Go Vap District, Ho Chi Minh City', NULL, NULL, NULL)
INSERT [dbo].[Account] ([Id], [Name], [Salary], [Balance], [CreatedAt], [Status], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [OtpExpiration], [OtpCode], [Picture]) VALUES (N'fa5a8c12-6971-4876-b852-e6a0aa608ca6', N'John Doe', NULL, CAST(1200000000.00 AS Decimal(18, 2)), CAST(N'2024-09-29T16:17:24.5321230' AS DateTime2), 1, N'johndoe@gmail.com', N'JOHNDOE@GMAIL.COM', N'johndoe@gmail.com', N'JOHNDOE@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEEz8xSD4cJxmzpUxhqmajudCyN7T5IaIgLDW7WLTG7XARVXkFUyeoiXipPFW7JArBA==', N'H2WXBXGF72J5HNID5AOS4HFR35F5V3EW', N'b5e59051-17f3-434d-ac7a-576b267ae915', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Cart] ON 

INSERT [dbo].[Cart] ([cart_id], [buyer_id]) VALUES (1, N'6e689b0a-c40d-4733-a64e-b18d38ac2224')
INSERT [dbo].[Cart] ([cart_id], [buyer_id]) VALUES (2, N'25ad7ca2-e6cd-4b23-b9d8-cda09fefebf6')
INSERT [dbo].[Cart] ([cart_id], [buyer_id]) VALUES (3, N'd4f0c865-20c7-46e5-ba30-23b823ed232c')
INSERT [dbo].[Cart] ([cart_id], [buyer_id]) VALUES (4, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289')
SET IDENTITY_INSERT [dbo].[Cart] OFF
GO
INSERT [dbo].[Cart_Item] ([cart_id], [product_id], [buyer_id], [quantity], [price], [created_at], [productImage]) VALUES (1, 52, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', 1, CAST(1150000.00 AS Decimal(18, 2)), CAST(N'2024-11-03T17:21:25.047' AS DateTime), N'https://lilydesign.vn/uploads/thumbnails/800/2021/06/gio-hoa-chuc-mung-dam-cuoi-ldnk180.jpg')
INSERT [dbo].[Cart_Item] ([cart_id], [product_id], [buyer_id], [quantity], [price], [created_at], [productImage]) VALUES (1, 53, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', 1, CAST(7500000.00 AS Decimal(18, 2)), CAST(N'2024-11-03T17:21:23.727' AS DateTime), N'birthday6.jpg')
INSERT [dbo].[Cart_Item] ([cart_id], [product_id], [buyer_id], [quantity], [price], [created_at], [productImage]) VALUES (4, 61, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', 1, CAST(2000000.00 AS Decimal(18, 2)), CAST(N'2024-11-08T09:11:47.353' AS DateTime), N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2F431448_y-nghia-hoa-hong.png?alt=media&token=19d012ac-9037-4155-97da-85eed982a465')
INSERT [dbo].[Cart_Item] ([cart_id], [product_id], [buyer_id], [quantity], [price], [created_at], [productImage]) VALUES (4, 62, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', 1, CAST(500000.00 AS Decimal(18, 2)), CAST(N'2024-11-08T09:11:47.800' AS DateTime), N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2FFlower_poster_2.jpg?alt=media&token=96fd241c-8855-4192-8cd1-ddb9585ee7a7')
INSERT [dbo].[Cart_Item] ([cart_id], [product_id], [buyer_id], [quantity], [price], [created_at], [productImage]) VALUES (4, 69, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', 1, CAST(9000000.00 AS Decimal(18, 2)), CAST(N'2024-11-08T09:11:45.690' AS DateTime), N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2Fcabcd1361825ee4334b25b1f1c9f7dfb.png?alt=media&token=5f6ddb23-bd81-4fbd-b741-fe015ffae9e5')
INSERT [dbo].[Cart_Item] ([cart_id], [product_id], [buyer_id], [quantity], [price], [created_at], [productImage]) VALUES (4, 70, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', 1, CAST(800000.00 AS Decimal(18, 2)), CAST(N'2024-11-08T09:11:45.193' AS DateTime), N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2Fy-nghia-hoa-bi-ngan-1-1200x800.png?alt=media&token=38f5f1d9-53a2-4d1b-a6ec-ea14db0499ce')
GO
SET IDENTITY_INSERT [dbo].[Delivery_Log] ON 

INSERT [dbo].[Delivery_Log] ([log_id], [order_id], [delivery_person_id], [status], [reason], [photo_url], [created_at], [delivery_at], [takeover_at]) VALUES (12, 25, N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', N'Delivery Success', NULL, N'sddsfisdifujhsdufsdiuf', CAST(N'2024-10-16T05:25:48.610' AS DateTime), CAST(N'2024-10-16T12:26:58.573' AS DateTime), CAST(N'2024-10-16T07:26:58.573' AS DateTime))
INSERT [dbo].[Delivery_Log] ([log_id], [order_id], [delivery_person_id], [status], [reason], [photo_url], [created_at], [delivery_at], [takeover_at]) VALUES (13, 26, N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', N'Delivery Success', NULL, N'asdasdsadasdasd', CAST(N'2024-10-16T05:43:08.833' AS DateTime), CAST(N'2024-10-16T12:44:37.220' AS DateTime), CAST(N'2024-10-16T08:43:08.833' AS DateTime))
INSERT [dbo].[Delivery_Log] ([log_id], [order_id], [delivery_person_id], [status], [reason], [photo_url], [created_at], [delivery_at], [takeover_at]) VALUES (14, 27, N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', N'Delivery Success', NULL, N'dfdsfdfsdfsdfsdfsdfsdfs', CAST(N'2024-10-16T10:56:33.440' AS DateTime), CAST(N'2024-10-16T17:58:19.550' AS DateTime), CAST(N'2024-10-16T12:56:33.440' AS DateTime))
INSERT [dbo].[Delivery_Log] ([log_id], [order_id], [delivery_person_id], [status], [reason], [photo_url], [created_at], [delivery_at], [takeover_at]) VALUES (15, 28, N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', N'Delivery Success', NULL, N'ádasdadsadsadsadsadas', CAST(N'2024-10-18T15:23:31.747' AS DateTime), CAST(N'2024-10-18T22:25:12.767' AS DateTime), CAST(N'2024-10-18T16:23:31.747' AS DateTime))
INSERT [dbo].[Delivery_Log] ([log_id], [order_id], [delivery_person_id], [status], [reason], [photo_url], [created_at], [delivery_at], [takeover_at]) VALUES (16, 29, N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', N'Delivery Success', NULL, N'ssdfsdfsdfsdfsdfsd', CAST(N'2024-10-18T15:31:22.313' AS DateTime), CAST(N'2024-10-18T22:32:16.490' AS DateTime), CAST(N'2024-10-18T17:31:22.313' AS DateTime))
INSERT [dbo].[Delivery_Log] ([log_id], [order_id], [delivery_person_id], [status], [reason], [photo_url], [created_at], [delivery_at], [takeover_at]) VALUES (17, 32, N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', N'Delivery Fail', N'sdfdsfkjsdjfkdsjkfsdjkfjskdf', N'dsfdsfjsdhfsjdhfjsdf', CAST(N'2024-10-19T05:54:00.290' AS DateTime), CAST(N'2024-10-19T13:06:09.210' AS DateTime), CAST(N'2024-10-19T07:54:00.290' AS DateTime))
INSERT [dbo].[Delivery_Log] ([log_id], [order_id], [delivery_person_id], [status], [reason], [photo_url], [created_at], [delivery_at], [takeover_at]) VALUES (18, 33, N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', N'Delivery Success', NULL, N'fgkhjdjghkjfdhgjkdfhgkjdhkgjhdfgkj', CAST(N'2024-10-19T07:04:10.260' AS DateTime), CAST(N'2024-10-19T14:05:36.360' AS DateTime), CAST(N'2024-10-19T08:04:10.260' AS DateTime))
INSERT [dbo].[Delivery_Log] ([log_id], [order_id], [delivery_person_id], [status], [reason], [photo_url], [created_at], [delivery_at], [takeover_at]) VALUES (19, 34, N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', N'Delivery Fail', N'adskjlskdjasldjslak', N'sdfkldsnjflksdflksjdflksd', CAST(N'2024-10-19T07:11:05.707' AS DateTime), CAST(N'2024-10-19T14:16:33.953' AS DateTime), CAST(N'2024-10-19T09:11:05.707' AS DateTime))
INSERT [dbo].[Delivery_Log] ([log_id], [order_id], [delivery_person_id], [status], [reason], [photo_url], [created_at], [delivery_at], [takeover_at]) VALUES (23, 40, N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', N'Delivery Success', NULL, N'sadjnsadkjanjkdnsajdnjajksndnkjsa', CAST(N'2024-10-22T08:30:57.490' AS DateTime), CAST(N'2024-10-22T15:35:43.390' AS DateTime), CAST(N'2024-10-22T10:30:57.490' AS DateTime))
INSERT [dbo].[Delivery_Log] ([log_id], [order_id], [delivery_person_id], [status], [reason], [photo_url], [created_at], [delivery_at], [takeover_at]) VALUES (24, 41, N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', N'Delivery Fail', N'sfsdfsdfsfsdf', N'sdffdsfdsfdsfsd', CAST(N'2024-10-22T10:32:47.710' AS DateTime), CAST(N'2024-10-22T17:35:13.423' AS DateTime), CAST(N'2024-10-22T12:32:47.710' AS DateTime))
INSERT [dbo].[Delivery_Log] ([log_id], [order_id], [delivery_person_id], [status], [reason], [photo_url], [created_at], [delivery_at], [takeover_at]) VALUES (25, 42, N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', N'Delivery Success', NULL, N'sfsdfkjsdkjslkjfdlskjflksdjflkds', CAST(N'2024-10-23T04:48:47.287' AS DateTime), CAST(N'2024-10-23T12:00:51.690' AS DateTime), CAST(N'2024-10-23T07:48:47.287' AS DateTime))
INSERT [dbo].[Delivery_Log] ([log_id], [order_id], [delivery_person_id], [status], [reason], [photo_url], [created_at], [delivery_at], [takeover_at]) VALUES (26, 43, N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', N'Delivery Success', NULL, N'sfsdfkjsdkjslkjfdlskjflksdjflkds', CAST(N'2024-10-23T05:08:13.150' AS DateTime), CAST(N'2024-10-23T12:11:21.047' AS DateTime), CAST(N'2024-10-23T08:08:13.150' AS DateTime))
INSERT [dbo].[Delivery_Log] ([log_id], [order_id], [delivery_person_id], [status], [reason], [photo_url], [created_at], [delivery_at], [takeover_at]) VALUES (27, 45, N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', N'Delivery Success', NULL, N'sfsdfkjsdkjslkjfdlskjflksdjflkds', CAST(N'2024-10-23T05:32:15.410' AS DateTime), CAST(N'2024-10-23T12:35:21.923' AS DateTime), CAST(N'2024-10-23T09:32:15.410' AS DateTime))
INSERT [dbo].[Delivery_Log] ([log_id], [order_id], [delivery_person_id], [status], [reason], [photo_url], [created_at], [delivery_at], [takeover_at]) VALUES (28, 47, N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', N'Delivery Success', NULL, N'sfsdfkjsdkjslkjfdlskjflksdjflkds', CAST(N'2024-10-23T05:42:39.623' AS DateTime), CAST(N'2024-10-23T12:45:52.167' AS DateTime), CAST(N'2024-10-23T09:42:39.623' AS DateTime))
INSERT [dbo].[Delivery_Log] ([log_id], [order_id], [delivery_person_id], [status], [reason], [photo_url], [created_at], [delivery_at], [takeover_at]) VALUES (29, 52, N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', N'Delivery Fail', N'sdfsdfsdfsdfsdf', N'sfsfdlsjhfjksdhkjfsdf', CAST(N'2024-10-23T07:55:32.377' AS DateTime), CAST(N'2024-10-23T14:56:45.990' AS DateTime), CAST(N'2024-10-23T09:55:32.377' AS DateTime))
INSERT [dbo].[Delivery_Log] ([log_id], [order_id], [delivery_person_id], [status], [reason], [photo_url], [created_at], [delivery_at], [takeover_at]) VALUES (30, 53, N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', N'Delivery Fail', N'adsasdasdasda', N'asdasdasd', CAST(N'2024-10-23T08:15:28.007' AS DateTime), CAST(N'2024-10-23T15:17:13.003' AS DateTime), CAST(N'2024-10-23T08:15:28.007' AS DateTime))
INSERT [dbo].[Delivery_Log] ([log_id], [order_id], [delivery_person_id], [status], [reason], [photo_url], [created_at], [delivery_at], [takeover_at]) VALUES (31, 55, N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', N'Delivery Success', NULL, N'fsdfsdfsdfsfsdff', CAST(N'2024-10-24T22:29:11.940' AS DateTime), CAST(N'2024-10-27T09:26:40.980' AS DateTime), CAST(N'2024-10-27T09:25:56.973' AS DateTime))
INSERT [dbo].[Delivery_Log] ([log_id], [order_id], [delivery_person_id], [status], [reason], [photo_url], [created_at], [delivery_at], [takeover_at]) VALUES (32, 15, N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', N'Delivery Success', NULL, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2FBACKGROUNDORTSP25.png?alt=media&token=1f7b237a-3ddb-4c16-8c31-2720a6f8b356', CAST(N'2024-10-31T15:50:57.437' AS DateTime), CAST(N'2024-11-13T10:00:48.117' AS DateTime), CAST(N'2024-11-13T09:52:26.793' AS DateTime))
INSERT [dbo].[Delivery_Log] ([log_id], [order_id], [delivery_person_id], [status], [reason], [photo_url], [created_at], [delivery_at], [takeover_at]) VALUES (1032, 16, N'cb1a042e-a0cf-4deb-8d35-2b4548dc63a7', N'Delivering', NULL, NULL, CAST(N'2024-10-31T22:27:03.043' AS DateTime), NULL, CAST(N'2024-10-31T22:28:25.367' AS DateTime))
INSERT [dbo].[Delivery_Log] ([log_id], [order_id], [delivery_person_id], [status], [reason], [photo_url], [created_at], [delivery_at], [takeover_at]) VALUES (1033, 60, N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', N'Delivery Success', NULL, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2FBACKGROUNDORTSP25.png?alt=media&token=cb40182d-963a-4341-8c22-4e09bf94b050', CAST(N'2024-11-13T10:35:08.120' AS DateTime), CAST(N'2024-11-13T10:37:16.253' AS DateTime), CAST(N'2024-11-13T10:36:08.627' AS DateTime))
INSERT [dbo].[Delivery_Log] ([log_id], [order_id], [delivery_person_id], [status], [reason], [photo_url], [created_at], [delivery_at], [takeover_at]) VALUES (1034, 57, N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', NULL, NULL, NULL, CAST(N'2024-11-18T14:48:10.317' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Delivery_Log] OFF
GO
SET IDENTITY_INSERT [dbo].[Follow] ON 

INSERT [dbo].[Follow] ([follow_id], [follower_id], [seller_id]) VALUES (14, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7')
INSERT [dbo].[Follow] ([follow_id], [follower_id], [seller_id]) VALUES (10, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'cd16133f-c9a0-48fd-82d9-375eb72cc042')
SET IDENTITY_INSERT [dbo].[Follow] OFF
GO
SET IDENTITY_INSERT [dbo].[ImageProduct] ON 

INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (1, 11, N'abcskjska')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (2, 11, N'asdsadasd')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (3, 13, N'djshjfjsdfhjhsd')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (4, 13, N'jddsjfhsdhfjs')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (5, 14, N'djshjfjsdfhjhsd')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (6, 14, N'jddsjfhsdhfjs')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (7, 15, N'djshjfjsdfhjhsd')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (8, 15, N'jddsjfhsdhfjs')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (9, 16, N'djshjfjsdfhjhsd')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (10, 16, N'jddsjfhsdhfjs')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (11, 17, N'djshjfjsdfhjhsd')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (12, 17, N'jddsjfhsdhfjs')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (13, 18, N'djshjfjsdfhjhsd')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (14, 18, N'jddsjfhsdhfjs')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (17, 20, N'djshjfjsdfhjhsd')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (18, 20, N'jddsjfhsdhfjs')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (19, 21, N'djshjfjsdfhjhsd')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (20, 21, N'jddsjfhsdhfjs')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (21, 22, N'djshjfjsdfhjhsd')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (22, 22, N'jddsjfhsdhfjs')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (23, 23, N'djshjfjsdfhjhsd')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (24, 23, N'jddsjfhsdhfjs')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (25, 24, N'djshjfjsdfhjhsd')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (26, 24, N'jddsjfhsdhfjs')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (27, 25, N'djshjfjsdfhjhsd')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (28, 25, N'jddsjfhsdhfjs')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (29, 26, N'djshjfjsdfhjhsd')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (30, 26, N'jddsjfhsdhfjs')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (31, 27, N'djshjfjsdfhjhsd')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (32, 27, N'jddsjfhsdhfjs')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (33, 28, N'djshjfjsdfhjhsd')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (34, 28, N'jddsjfhsdhfjs')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (35, 29, N'djshjfjsdfhjhsd')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (36, 29, N'jddsjfhsdhfjs')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (37, 30, N'djshjfjsdfhjhsd')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (38, 30, N'jddsjfhsdhfjs')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (39, 31, N'djshjfjsdfhjhsd')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (40, 31, N'jddsjfhsdhfjs')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (41, 32, N'djshjfjsdfhjhsd')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (42, 32, N'jddsjfhsdhfjs')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (43, 33, N'djshjfjsdfhjhsd')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (44, 33, N'jddsjfhsdhfjs')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (45, 34, N'https://www.yamewedding.vn/resource/gellary/images/banner/trang-tri-tiec-cuoi-tphcm-12.JPG')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (46, 34, N'https://www.yamewedding.vn/resource/images/2020/08/e9dcbfcb172dacb4c46dc8791d5da165.jpg')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (47, 34, N'https://www.yamewedding.vn/resource/gellary/images/banner/trang-tri-tiec-cuoi-tphcm-13.JPG')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (48, 34, N'https://www.yamewedding.vn/resource/images/2021/10/nlarge.trang-tri-san-khau-dam-cuoi-dep.jpg')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (49, 35, N'https://www.yamewedding.vn/resource/gellary/images/banner/trang-tri-tiec-cuoi-tphcm-12.JPG')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (50, 35, N'https://www.yamewedding.vn/resource/images/2020/08/e9dcbfcb172dacb4c46dc8791d5da165.jpg')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (51, 35, N'https://www.yamewedding.vn/resource/gellary/images/banner/trang-tri-tiec-cuoi-tphcm-13.JPG')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (52, 35, N'https://www.yamewedding.vn/resource/images/2021/10/nlarge.trang-tri-san-khau-dam-cuoi-dep.jpg')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (53, 36, N'https://scontent.fsgn2-4.fna.fbcdn.net/v/t39.30808-6/429941048_931646118663248_6659617316037392122_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=127cfc&_nc_eui2=AeEQghVKBV2j35cWM62Kui_h0yXs2XVgngHTJezZdWCeAQREmluYL1X6gZ0qO4TCTIowl2c8MFTbPz6_MPKmrkv2&_nc_ohc=ztFkPRiYJzsQ7kNvgFo_So9&_nc_ht=scontent.fsgn2-4.fna&_nc_gid=ASxdGIHN0UjkB9ClfZPYNMm&oh=00_AYDg2nhJF8BJ7IRGxW5IXML73ODLbiETgUTTZNCrFrv2_g&oe=671BF8F3')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (54, 36, N'https://scontent.fsgn2-3.fna.fbcdn.net/v/t39.30808-6/429985488_931646408663219_8854173767653003097_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=127cfc&_nc_eui2=AeGVPUpwUIvSaUbJ70DHNZDzaPL4BfQKQ5lo8vgF9ApDmaYCM4YV0UqXgqU9YdM8PtmxhYvfMVpkg4LO7hQA1RmB&_nc_ohc=UEE8WMhNLJMQ7kNvgEbLZFC&_nc_ht=scontent.fsgn2-3.fna&_nc_gid=AJlnIVtQxf4_L9XjxK5mWLE&oh=00_AYDYGR08VKc129aCCMQUy3lkYtwyx3SvDKXH6hLMF8yxrQ&oe=671BFFFA')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (55, 36, N'https://scontent.fsgn2-3.fna.fbcdn.net/v/t39.30808-6/428712568_931646265329900_8996544101693383514_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=127cfc&_nc_eui2=AeGxB4NJeuhh3vCjANOjoiwyFb6SEkCLxDMVvpISQIvEMzhgmRQBImfpvzsigZrQaiCaDYH7DE1-C_1jEHcapxIk&_nc_ohc=QP4JXJhLSKYQ7kNvgFwqSEV&_nc_ht=scontent.fsgn2-3.fna&_nc_gid=AivAvRyNTMQC71JujwFBCuO&oh=00_AYBP4xEhCakPe2Q4Fsb0UcaaWCBO3HhBI9x7Y07o2FETHA&oe=671BF678')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (56, 36, N'https://scontent.fsgn2-9.fna.fbcdn.net/v/t39.30808-6/428707966_931646481996545_2953982816180509289_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=127cfc&_nc_eui2=AeE-4L8yjQyos3QYu2wxRRuiojjBuDqjqRWiOMG4OqOpFbAD6w0bEQVex_ot0KSElPdLpPT-3PlG-Q3EWTQUwSng&_nc_ohc=3j0Tg9PCMfMQ7kNvgE3lrFV&_nc_ht=scontent.fsgn2-9.fna&_nc_gid=AgTOuFM-JyLFvdlsrLIEGLl&oh=00_AYBduk9NpaaioRb6mhJ5j1-GxlMaDaClrH6GwzmOPxvBhQ&oe=671C04C0')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (57, 37, N'https://scontent.fsgn2-4.fna.fbcdn.net/v/t39.30808-6/429941048_931646118663248_6659617316037392122_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=127cfc&_nc_eui2=AeEQghVKBV2j35cWM62Kui_h0yXs2XVgngHTJezZdWCeAQREmluYL1X6gZ0qO4TCTIowl2c8MFTbPz6_MPKmrkv2&_nc_ohc=ztFkPRiYJzsQ7kNvgFo_So9&_nc_ht=scontent.fsgn2-4.fna&_nc_gid=ASxdGIHN0UjkB9ClfZPYNMm&oh=00_AYDg2nhJF8BJ7IRGxW5IXML73ODLbiETgUTTZNCrFrv2_g&oe=671BF8F3')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (58, 37, N'https://scontent.fsgn2-3.fna.fbcdn.net/v/t39.30808-6/429985488_931646408663219_8854173767653003097_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=127cfc&_nc_eui2=AeGVPUpwUIvSaUbJ70DHNZDzaPL4BfQKQ5lo8vgF9ApDmaYCM4YV0UqXgqU9YdM8PtmxhYvfMVpkg4LO7hQA1RmB&_nc_ohc=UEE8WMhNLJMQ7kNvgEbLZFC&_nc_ht=scontent.fsgn2-3.fna&_nc_gid=AJlnIVtQxf4_L9XjxK5mWLE&oh=00_AYDYGR08VKc129aCCMQUy3lkYtwyx3SvDKXH6hLMF8yxrQ&oe=671BFFFA')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (59, 37, N'https://scontent.fsgn2-3.fna.fbcdn.net/v/t39.30808-6/428712568_931646265329900_8996544101693383514_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=127cfc&_nc_eui2=AeGxB4NJeuhh3vCjANOjoiwyFb6SEkCLxDMVvpISQIvEMzhgmRQBImfpvzsigZrQaiCaDYH7DE1-C_1jEHcapxIk&_nc_ohc=QP4JXJhLSKYQ7kNvgFwqSEV&_nc_ht=scontent.fsgn2-3.fna&_nc_gid=AivAvRyNTMQC71JujwFBCuO&oh=00_AYBP4xEhCakPe2Q4Fsb0UcaaWCBO3HhBI9x7Y07o2FETHA&oe=671BF678')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (60, 37, N'https://scontent.fsgn2-9.fna.fbcdn.net/v/t39.30808-6/428707966_931646481996545_2953982816180509289_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=127cfc&_nc_eui2=AeE-4L8yjQyos3QYu2wxRRuiojjBuDqjqRWiOMG4OqOpFbAD6w0bEQVex_ot0KSElPdLpPT-3PlG-Q3EWTQUwSng&_nc_ohc=3j0Tg9PCMfMQ7kNvgE3lrFV&_nc_ht=scontent.fsgn2-9.fna&_nc_gid=AgTOuFM-JyLFvdlsrLIEGLl&oh=00_AYBduk9NpaaioRb6mhJ5j1-GxlMaDaClrH6GwzmOPxvBhQ&oe=671C04C0')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (61, 38, N'https://dichvucuoihoi.vn/wp-content/uploads/2023/08/Trang-tri-backdrop-chup-anh-sinh-nhat-8.jpg')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (62, 39, N'https://homidecor.vn/uploads/source/vys-post/bday-18-gia-han/trang-tri-sinh-nhat-phong-cach-sang-trong-homidecor-(3).jpg')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (63, 40, N'https://bongbonghoangluan.com/wp-content/uploads/2023/10/backdrop-sinh-nhat-27112023.jpg')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (64, 41, N'https://www.blissvn.com/Data/Sites/1/News/547/trang-tri-sinh-nhat-bong-bong-hoa-tuoi.png')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (65, 41, N'https://www.blissvn.com/Data/Sites/1/News/547/trang-tri-hoa-tuoi-tiec-sinh-nhat1.png')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (66, 41, N'https://www.blissvn.com/Data/Sites/1/News/547/trang-tri-sinh-nhat-fifty-shades-of-fabulous1.png')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (67, 41, N'https://www.blissvn.com/Data/Sites/1/News/547/to-chuc-sinh-nhat-fifty-shades-of-fabulous.png')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (68, 42, N'conference1.jpg')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (69, 43, N'conference3.jpg')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (70, 44, N'conference5.jpg')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (71, 45, N'conference7.jpg')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (72, 46, N'https://i0.wp.com/sieuthihoacuoi.com/wp-content/uploads/2023/06/BB0020.1.jpg?w=720&ssl=1')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (73, 46, N'https://i0.wp.com/sieuthihoacuoi.com/wp-content/uploads/2023/06/BB0020.jpg?fit=657%2C657&ssl=1')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (74, 46, N'https://i0.wp.com/sieuthihoacuoi.com/wp-content/uploads/2023/06/BB0020.2.jpg?fit=900%2C901&ssl=1')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (75, 47, N'https://hoatuoidanghoa.com/wp-content/uploads/2017/04/lang-hoa-dep-sinh-nhat.jpg')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (76, 48, N'conference2.jpg')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (77, 49, N'https://danviet.mediacdn.vn/upload/4-2014/images/2014-12-27/1434417637-fnxo1419678865-thuy-tien10.jpg')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (78, 50, N'https://thanhcongflower.com/wp-content/uploads/2022/04/bo-hoa-60.jpg')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (79, 51, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2F431448_y-nghia-hoa-hong.png?alt=media&token=a43ce793-2d46-40d4-a1cc-00054f068a9a')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (80, 52, N'https://lilydesign.vn/uploads/thumbnails/800/2021/06/gio-hoa-chuc-mung-dam-cuoi-ldnk180.jpg')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (81, 53, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2Fnhung-loai-hoa-dep-nhat-hoa-cam-tu-cau_55ff3687eeb64e92bd678735ef94a48b.png?alt=media&token=5f31d99f-56ae-419e-b5d9-e509fb5c5aba')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (82, 54, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2Fimg050%2520copy.png?alt=media&token=61242cc8-fc92-4f9e-8485-5d4f4ed2238a')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (83, 55, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2Fnhung-loai-hoa-dep-nhat-hoa-cam-tu-cau_55ff3687eeb64e92bd678735ef94a48b.png?alt=media&token=5f31d99f-56ae-419e-b5d9-e509fb5c5aba')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (84, 55, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2F431448_y-nghia-hoa-hong.png?alt=media&token=a43ce793-2d46-40d4-a1cc-00054f068a9a')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (85, 56, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2Fimages%20(4).jfif?alt=media&token=91e10a46-be63-4b28-9c07-64984fc020fd')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (86, 56, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2Fimg050%2520copy.png?alt=media&token=61242cc8-fc92-4f9e-8485-5d4f4ed2238a')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (87, 56, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2FFlower_poster_2.jpg?alt=media&token=0e8e7143-5faa-4ff0-a5a0-77702bfea2f0')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (88, 57, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2Fanh-man-hinh-2024-01-25-luc-180913-1706181437443390283900.png?alt=media&token=bfd81ca0-6740-4376-9464-2eed40e2fb96')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (89, 57, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2Fhieu-ro-y-nghia-hoa-hong-giup-ban-chinh-phuc-nang-.png?alt=media&token=a1cee8b3-823f-4c89-8952-8a1ff6bd25b9')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (90, 57, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2F431448_y-nghia-hoa-hong.png?alt=media&token=a43ce793-2d46-40d4-a1cc-00054f068a9a')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (91, 58, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2F11-hoa-hong-co-hai-phong.png?alt=media&token=ffffd499-b95f-4a12-b89a-da2f0499e4e0')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (92, 58, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2Ftat-tan-tat-ve-cac-loai-hoa-mau-don-y-nghia-hoa-mau-don-202112012026508706.png?alt=media&token=61fb5811-c91a-46bf-a0ae-6b83125e7d50')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (93, 58, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2F95672457-fb49-4677-bc9b-a61fbc8b38d3-260-00000092a1a0573c-jpeg.png?alt=media&token=f8ca6a1a-de26-44dd-be52-c0c6d7560702')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (94, 59, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2Fbo-hoa-mau-don-hong-2.png?alt=media&token=54220f4b-325d-4492-9a90-fe3ecfa19437')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (95, 59, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2Fmot-binh-hoa-tulip-hong-de-ban-giup-ca-khong-gian-tro-nen-dep-va-sang-trong-hon-651faff1c9649b0ef51da9b7.png?alt=media&token=d2cdf795-7490-40a2-a668-2f146fa84c24')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (96, 59, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2Fhoa-hue-co-an-duoc-khong.png?alt=media&token=67a5738e-d0a4-454e-9ba8-9a2c21a68fcd')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (97, 60, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2Fcabcd1361825ee4334b25b1f1c9f7dfb.png?alt=media&token=dfae9fe8-f348-434a-ac3b-edbca378fcd3')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (98, 60, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2Flan-ho-diep-581636_9d0f220eb6e54e3986e715676b0923af_1024x1024.png?alt=media&token=0dbc5dfa-74a8-43b5-acb7-9ad6664dd623')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (99, 60, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2Fhoa-hue-co-an-duoc-khong.png?alt=media&token=2d8c11c4-abab-45ff-b21a-3f68e23ef7d3')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (100, 61, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2F431448_y-nghia-hoa-hong.png?alt=media&token=19d012ac-9037-4155-97da-85eed982a465')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (101, 61, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2Ftruyen-thuyet-va-y-nghia-dac-biet-cua-hoa-bi-ngan-202206031402510281.png?alt=media&token=5642fce6-00f3-4c31-8087-b3c244d398be')
GO
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (102, 61, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2Fanh-man-hinh-2024-01-25-luc-180913-1706181437443390283900.png?alt=media&token=808a57d2-e5c8-4902-8e70-4695fc6626b1')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (103, 62, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2FFlower_poster_2.jpg?alt=media&token=96fd241c-8855-4192-8cd1-ddb9585ee7a7')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (104, 62, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2Fnhung-loai-hoa-dep-nhat-hoa-cam-tu-cau_55ff3687eeb64e92bd678735ef94a48b.png?alt=media&token=2fd75df7-33ff-4677-b4e5-f14cd3ac828d')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (105, 63, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2Fhoa-hue-4.png?alt=media&token=4f6dab6b-d53b-431d-aa91-46dc94c08061')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (106, 63, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2Ftruyen-thuyet-va-y-nghia-dac-biet-cua-hoa-bi-ngan-202206031402510281.png?alt=media&token=09ea041c-1e8e-44b6-8fdd-84921a115a25')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (107, 63, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2Fnhung-loai-hoa-dep-nhat-hoa-cam-tu-cau_55ff3687eeb64e92bd678735ef94a48b.png?alt=media&token=5f31d99f-56ae-419e-b5d9-e509fb5c5aba')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (108, 64, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2F95672457-fb49-4677-bc9b-a61fbc8b38d3-260-00000092a1a0573c-jpeg.png?alt=media&token=87d9c165-85c0-4d9c-add8-1d170a2b7618')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (109, 64, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2Ftruyen-thuyet-va-y-nghia-dac-biet-cua-hoa-bi-ngan-202206031402510281.png?alt=media&token=c4fc3094-204f-4076-8fda-dbc8eb4e4e87')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (110, 64, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2Fhieu-ro-y-nghia-hoa-hong-giup-ban-chinh-phuc-nang-.png?alt=media&token=751c1dea-900a-4fd1-a89c-0ddab5f09cee')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (111, 65, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2FHinh-8-trong-bai-viet.png?alt=media&token=2eba1aaf-5e5a-4743-82db-5f2483779222')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (112, 65, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2Fimages%20(1).png?alt=media&token=8d04c8f7-69ae-46ad-9c7f-ef2650d83843')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (113, 66, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2F95672457-fb49-4677-bc9b-a61fbc8b38d3-260-00000092a1a0573c-jpeg.png?alt=media&token=2e244d6d-2c48-4990-96c7-17abdd408d70')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (114, 66, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2Fhoa-hue-4.png?alt=media&token=3cfbbd08-2f5f-48f9-acba-cf74a952227b')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (115, 66, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2Fhoa%20hu%E1%BB%87%201.png?alt=media&token=777e579f-a7ce-4aa6-98c3-cf1e4bb91d3f')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (116, 67, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2Fimages%20(1).png?alt=media&token=b4c199ce-c12d-48ee-b235-26410b9f3353')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (117, 67, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2Fhoa%20hu%E1%BB%87%201.png?alt=media&token=62d09729-5ed9-48af-b084-357fc54c5a71')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (118, 67, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2Fimages%20(4).jfif?alt=media&token=3d6f5964-8e62-4e2d-938e-90741fcf8262')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (119, 68, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2Fhieu-ro-y-nghia-hoa-hong-giup-ban-chinh-phuc-nang-.png?alt=media&token=54ed7d36-cf4e-44a1-8f94-6e3fcad03daa')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (120, 68, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2Fy-nghia-hoa-phong-lan-trang.png?alt=media&token=d9bc9cf8-854d-48eb-809b-86bb33d25f32')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (121, 69, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2Fcabcd1361825ee4334b25b1f1c9f7dfb.png?alt=media&token=5f6ddb23-bd81-4fbd-b741-fe015ffae9e5')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (122, 69, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2Fmot-binh-hoa-tulip-hong-de-ban-giup-ca-khong-gian-tro-nen-dep-va-sang-trong-hon-651faff1c9649b0ef51da9b7.png?alt=media&token=008ab7ef-ed4a-49be-b81f-f5f32f273bb3')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (123, 69, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2Fhoa-hong2.png?alt=media&token=7d781fe3-fb6a-4d19-91b0-d56560ed7208')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (124, 70, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2Fy-nghia-hoa-bi-ngan-1-1200x800.png?alt=media&token=38f5f1d9-53a2-4d1b-a6ec-ea14db0499ce')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (125, 70, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2Ftat-tan-tat-ve-cac-loai-hoa-mau-don-y-nghia-hoa-mau-don-202112012026508706.png?alt=media&token=06c244d7-b2de-4623-a905-7b618cab1bac')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (126, 70, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2Fdac-diem-nguon-goc-va-y-nghia-dac-biet-cua-hoa-huong-duong-202206031122479117.png?alt=media&token=2be303f3-217a-4bb1-af28-68df10e13f55')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (127, 71, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2Fnguon-goc-va-y-nghia-hoa-tulip-theo-tung-mau-sac-khac-nhau-202112012337117668.png?alt=media&token=5e9f2490-654a-4289-89a6-26c4c1d2e18b')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (128, 71, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2F431448_y-nghia-hoa-hong.png?alt=media&token=e455d1ff-f333-4fd2-97e1-04bb65ac6a71')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (129, 71, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2F95672457-fb49-4677-bc9b-a61fbc8b38d3-260-00000092a1a0573c-jpeg.png?alt=media&token=cf8e9ac5-d7b7-43ae-8900-14cc1103503d')
INSERT [dbo].[ImageProduct] ([Id], [product_id], [LinkImage]) VALUES (130, 72, N'https://firebasestorage.googleapis.com/v0/b/event-flower-exchange.appspot.com/o/uploads%2Flang-hoa-dep-sinh-nhat.jpg?alt=media&token=fdd42cf3-2325-442f-a477-0980ee85b602')
SET IDENTITY_INSERT [dbo].[ImageProduct] OFF
GO
SET IDENTITY_INSERT [dbo].[Message] ON 

INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (1, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Xin chao', CAST(N'2024-11-07T23:23:21.977' AS DateTime), 1203)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (2, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Toi muon mua hoa', CAST(N'2024-11-07T23:34:13.593' AS DateTime), 1204)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (3, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Oke mua di', CAST(N'2024-11-13T14:31:02.327' AS DateTime), 1218)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (4, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'c2fdb7ac-0f05-45c3-937d-f3642a9a6d21', N'Hello', CAST(N'2024-11-08T10:12:53.087' AS DateTime), 1226)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (5, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'5548ea17-b441-483b-995f-0bdc34672c28', N'Nice', CAST(N'2024-11-08T10:46:12.337' AS DateTime), 1227)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (6, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'5548ea17-b441-483b-995f-0bdc34672c28', N'Nice', CAST(N'2024-11-08T10:46:32.260' AS DateTime), 1228)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (7, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'5548ea17-b441-483b-995f-0bdc34672c28', N'Hello', CAST(N'2024-11-08T11:21:43.660' AS DateTime), 1229)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (8, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'5548ea17-b441-483b-995f-0bdc34672c28', N'Hello ', CAST(N'2024-11-08T11:21:55.690' AS DateTime), 1230)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (9, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'5548ea17-b441-483b-995f-0bdc34672c28', N'Hello', CAST(N'2024-11-08T11:23:32.480' AS DateTime), 1231)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (10, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'5548ea17-b441-483b-995f-0bdc34672c28', N'Hello', CAST(N'2024-11-08T11:24:28.427' AS DateTime), 1232)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (11, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'5548ea17-b441-483b-995f-0bdc34672c28', N'Hello 1', CAST(N'2024-11-08T11:24:35.710' AS DateTime), 1233)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (12, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'5548ea17-b441-483b-995f-0bdc34672c28', N'Hello', CAST(N'2024-11-08T11:24:53.890' AS DateTime), 1234)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (13, N'5548ea17-b441-483b-995f-0bdc34672c28', N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'Quàoooo', CAST(N'2024-11-08T11:25:41.750' AS DateTime), 1235)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (14, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'5548ea17-b441-483b-995f-0bdc34672c28', N'Hello', CAST(N'2024-11-08T11:26:05.033' AS DateTime), 1236)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (15, N'5548ea17-b441-483b-995f-0bdc34672c28', N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'Hello', CAST(N'2024-11-08T11:27:14.497' AS DateTime), 1237)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (16, N'5548ea17-b441-483b-995f-0bdc34672c28', N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'Hello', CAST(N'2024-11-08T11:30:45.040' AS DateTime), 1238)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (17, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'c2fdb7ac-0f05-45c3-937d-f3642a9a6d21', N'Hello', CAST(N'2024-11-08T11:31:58.437' AS DateTime), 1239)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (18, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'5548ea17-b441-483b-995f-0bdc34672c28', N'No problem', CAST(N'2024-11-08T11:40:57.923' AS DateTime), 1240)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (19, N'5548ea17-b441-483b-995f-0bdc34672c28', N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'Hello', CAST(N'2024-11-08T11:46:27.887' AS DateTime), 1241)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (20, N'5548ea17-b441-483b-995f-0bdc34672c28', N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'Chào', CAST(N'2024-11-08T11:46:40.737' AS DateTime), 1242)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (21, N'5548ea17-b441-483b-995f-0bdc34672c28', N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'Hello', CAST(N'2024-11-08T11:50:24.727' AS DateTime), 1243)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (22, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'5548ea17-b441-483b-995f-0bdc34672c28', N'Hello', CAST(N'2024-11-08T11:54:35.267' AS DateTime), 1244)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (23, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'5548ea17-b441-483b-995f-0bdc34672c28', N'Chào', CAST(N'2024-11-08T11:54:52.883' AS DateTime), 1245)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (32, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'5548ea17-b441-483b-995f-0bdc34672c28', N'Hello', CAST(N'2024-11-08T12:35:02.747' AS DateTime), 1254)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (33, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'5548ea17-b441-483b-995f-0bdc34672c28', N'Chào', CAST(N'2024-11-08T12:35:30.690' AS DateTime), 1255)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (34, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'5548ea17-b441-483b-995f-0bdc34672c28', N'Chào c?u', CAST(N'2024-11-08T12:36:05.870' AS DateTime), 1256)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (35, N'5548ea17-b441-483b-995f-0bdc34672c28', N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'Chào ', CAST(N'2024-11-08T12:40:19.273' AS DateTime), 1257)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (36, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'5548ea17-b441-483b-995f-0bdc34672c28', N'Chào', CAST(N'2024-11-08T12:44:18.090' AS DateTime), 1258)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (37, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'5548ea17-b441-483b-995f-0bdc34672c28', N'Ðã test', CAST(N'2024-11-08T12:44:25.930' AS DateTime), 1259)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (38, N'5548ea17-b441-483b-995f-0bdc34672c28', N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'Test ok chua ', CAST(N'2024-11-08T12:46:45.323' AS DateTime), 1260)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (39, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'5548ea17-b441-483b-995f-0bdc34672c28', N'Ðã ok', CAST(N'2024-11-08T12:46:55.533' AS DateTime), 1261)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (40, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'5548ea17-b441-483b-995f-0bdc34672c28', N'OK chua', CAST(N'2024-11-08T12:48:35.040' AS DateTime), 1262)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (41, N'5548ea17-b441-483b-995f-0bdc34672c28', N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'R?i á', CAST(N'2024-11-08T12:48:41.947' AS DateTime), 1263)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (42, N'5548ea17-b441-483b-995f-0bdc34672c28', N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'OKla', CAST(N'2024-11-08T12:49:11.933' AS DateTime), 1264)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (43, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'5548ea17-b441-483b-995f-0bdc34672c28', N'R?i r?i ', CAST(N'2024-11-08T12:49:18.037' AS DateTime), 1265)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (44, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'5548ea17-b441-483b-995f-0bdc34672c28', N'Chào', CAST(N'2024-11-08T12:52:49.743' AS DateTime), 1266)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (45, N'14605c5b-0d53-4807-980d-ecb84c47b25a', N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'Hello', CAST(N'2024-05-08T17:15:10.993' AS DateTime), 1267)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (46, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'5548ea17-b441-483b-995f-0bdc34672c28', N'Gò V?p', CAST(N'2024-11-08T17:07:54.547' AS DateTime), 1268)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (47, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'5548ea17-b441-483b-995f-0bdc34672c28', N'Ton Lai', CAST(N'2024-11-08T17:09:35.990' AS DateTime), 1269)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (48, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'5548ea17-b441-483b-995f-0bdc34672c28', N'Cho De Tai Khuu', CAST(N'2024-11-08T17:10:07.923' AS DateTime), 1270)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (49, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'5548ea17-b441-483b-995f-0bdc34672c28', N'Cua Thien Tra Dia', CAST(N'2024-05-08T17:15:10.993' AS DateTime), 1271)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (50, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'5548ea17-b441-483b-995f-0bdc34672c28', N'Con Cho Tai Khuu', CAST(N'2024-05-08T17:15:10.993' AS DateTime), 1272)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (51, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'5548ea17-b441-483b-995f-0bdc34672c28', N'Hello', CAST(N'2024-11-10T02:42:28.703' AS DateTime), 1273)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (52, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'5548ea17-b441-483b-995f-0bdc34672c28', N'Chào c?u', CAST(N'2024-11-10T02:42:45.513' AS DateTime), 1274)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (53, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'5548ea17-b441-483b-995f-0bdc34672c28', N'Hello', CAST(N'2024-11-12T16:23:20.027' AS DateTime), 1275)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (54, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'c2fdb7ac-0f05-45c3-937d-f3642a9a6d21', N'Hello', CAST(N'2024-11-12T16:23:59.377' AS DateTime), 1276)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (55, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'5548ea17-b441-483b-995f-0bdc34672c28', N'Hello, I''m looking for a beautiful bouquet for a special occasion. Can you recommend a product?', CAST(N'2024-11-14T11:40:37.927' AS DateTime), 1277)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (56, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'5548ea17-b441-483b-995f-0bdc34672c28', N'Hello, I''m looking for a beautiful bouquet for a special occasion. Can you recommend a product?', CAST(N'2024-11-14T11:40:37.927' AS DateTime), 1277)
INSERT [dbo].[Message] ([message_id], [sender_id], [receiver_id], [contents], [created_at], [notification_id]) VALUES (57, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'5548ea17-b441-483b-995f-0bdc34672c28', N'Hello ABC', CAST(N'2024-11-14T11:40:50.813' AS DateTime), 1279)
SET IDENTITY_INSERT [dbo].[Message] OFF
GO
SET IDENTITY_INSERT [dbo].[Notification] ON 

INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Thanh toán don hàng thành công', N'true', CAST(N'2024-10-13T16:07:26.387' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (2, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'S?n ph?m dang bán c?a b?n dã du?c d?t hàng. Vui lòng chu?n b? hàng.', N'true', CAST(N'2024-10-13T16:07:26.420' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (3, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Thanh toán don hàng thành công', N'true', CAST(N'2024-10-13T16:12:09.033' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (4, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'S?n ph?m dang bán c?a b?n dã du?c d?t hàng. Vui lòng chu?n b? hàng.', N'true', CAST(N'2024-10-13T16:12:09.063' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (5, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Thanh toán don hàng thành công', N'true', CAST(N'2024-10-15T02:02:00.050' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (6, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'S?n ph?m dang bán c?a b?n dã du?c d?t hàng. Vui lòng chu?n b? hàng.', N'true', CAST(N'2024-10-15T02:02:00.077' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (7, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Don hang cua ban dang duoc giao', N'true', CAST(N'2024-10-15T07:53:22.743' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (8, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Don hang cua ban da duoc giao thanh cong', N'true', CAST(N'2024-10-15T08:38:26.777' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (9, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Don hang cua ban dang duoc giao', N'true', CAST(N'2024-10-15T22:39:13.183' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (10, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Don hang cua ban dang duoc giao', N'true', CAST(N'2024-10-15T22:39:56.677' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (11, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Don hang cua ban da duoc giao thanh cong.', N'true', CAST(N'2024-10-15T22:41:10.613' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (12, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Don hang cua ban da duoc giao thanh cong.', N'true', CAST(N'2024-10-15T22:44:37.873' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (13, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Don hang cua ban da duoc giao thanh cong.', N'true', CAST(N'2024-10-15T22:45:50.677' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (14, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Don hang cua ban dang duoc giao', N'true', CAST(N'2024-10-15T22:55:49.367' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (15, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Don hang cua ban da duoc giao thanh cong.', N'true', CAST(N'2024-10-15T22:56:33.330' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (16, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Thanh toan don hang thanh cong', N'true', CAST(N'2024-10-16T10:59:24.440' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (17, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'San pham dang ban cua ban da duoc dat hang. Vui long chuan bi hang.', N'true', CAST(N'2024-10-16T10:59:24.470' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (18, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Don hang cua ban dang duoc giao', N'true', CAST(N'2024-10-16T11:01:21.543' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (19, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Thanh toan don hang thanh cong', N'true', CAST(N'2024-10-16T11:06:24.990' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (20, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'San pham dang ban cua ban da duoc dat hang. Vui long chuan bi hang.', N'true', CAST(N'2024-10-16T11:06:25.023' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (21, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Thanh toan don hang thanh cong', N'true', CAST(N'2024-10-16T11:14:03.380' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (22, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'San pham dang ban cua ban da duoc dat hang. Vui long chuan bi hang.', N'true', CAST(N'2024-10-16T11:14:03.410' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (23, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Don hang cua ban dang duoc giao', N'true', CAST(N'2024-10-16T11:15:53.413' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (24, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Don hang cua ban xay ra su co', N'true', CAST(N'2024-10-16T11:29:16.200' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (25, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Don hang cua ban da duoc giao thanh cong.', N'true', CAST(N'2024-10-16T11:42:05.920' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (26, N'f857beb8-d0ba-43a8-b887-53173f1c0e27', N'He thong tra tien don hang cho nguoi ban', N'true', CAST(N'2024-10-16T11:47:39.080' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (27, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Don hang cua ban dang duoc giao', N'true', CAST(N'2024-10-16T11:50:34.733' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (28, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'He thong tra tien don hang cho nguoi ban', N'true', CAST(N'2024-10-16T11:50:42.167' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (29, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Don hang cua ban da duoc giao thanh cong.', N'true', CAST(N'2024-10-16T11:50:59.223' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (30, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'He thong tra tien don hang cho nguoi ban', N'true', CAST(N'2024-10-16T11:51:07.823' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (31, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'He thong tra tien don hang cho nguoi ban', N'true', CAST(N'2024-10-16T11:51:23.720' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (32, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'He thong tra tien don hang cho nguoi ban', N'true', CAST(N'2024-10-16T11:51:28.343' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (33, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Don hang cua ban dang duoc giao', N'true', CAST(N'2024-10-16T12:09:24.210' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (34, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Don hang cua ban da duoc giao thanh cong.', N'true', CAST(N'2024-10-16T12:09:56.793' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (35, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'He thong tra tien don hang cho nguoi ban', N'true', CAST(N'2024-10-16T12:11:55.803' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (36, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Thanh toan don hang thanh cong', N'true', CAST(N'2024-10-16T12:23:36.600' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (37, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'San pham dang ban cua ban da duoc dat hang. Vui long chuan bi hang.', N'true', CAST(N'2024-10-16T12:23:36.623' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (38, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Don hang cua ban dang duoc giao', N'true', CAST(N'2024-10-16T12:25:48.673' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (39, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Don hang cua ban da duoc giao thanh cong.', N'true', CAST(N'2024-10-16T12:26:58.600' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (40, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'He thong tra tien don hang cho nguoi ban', N'true', CAST(N'2024-10-16T12:29:47.323' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (41, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Thanh toan don hang thanh cong', N'true', CAST(N'2024-10-16T12:40:17.203' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (42, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'San pham dang ban cua ban da duoc dat hang. Vui long chuan bi hang.', N'true', CAST(N'2024-10-16T12:40:17.207' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (43, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Don hang cua ban dang duoc giao', N'true', CAST(N'2024-10-16T12:43:08.853' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (44, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Don hang cua ban da duoc giao thanh cong.', N'true', CAST(N'2024-10-16T12:44:37.240' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (45, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'He thong tra tien don hang cho nguoi ban', N'true', CAST(N'2024-10-16T12:46:02.110' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (46, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Order payment successful.', N'true', CAST(N'2024-10-16T17:52:19.817' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (47, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Your product has been ordered. Please prepare the order.', N'true', CAST(N'2024-10-16T17:52:19.850' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (48, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your order is on its way', N'true', CAST(N'2024-10-16T17:56:33.513' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (49, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your order has been delivered successfully.', N'true', CAST(N'2024-10-16T17:58:19.580' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (50, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Order payment system for sellers', N'true', CAST(N'2024-10-16T17:59:14.183' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (51, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Order payment system for sellers', N'true', CAST(N'2024-10-16T18:04:36.957' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (52, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Order payment system for sellers', N'true', CAST(N'2024-10-16T18:07:41.463' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (53, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Order payment successful.', N'true', CAST(N'2024-10-18T22:21:19.040' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (54, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Your product has been ordered. Please prepare the order.', N'true', CAST(N'2024-10-18T22:21:19.073' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (55, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your order is on its way', N'true', CAST(N'2024-10-18T22:23:31.813' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (56, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your order has been delivered successfully.', N'true', CAST(N'2024-10-18T22:25:12.793' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (57, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Order payment system for sellers', N'true', CAST(N'2024-10-18T22:28:43.003' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (58, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Order payment successful.', N'true', CAST(N'2024-10-18T22:29:54.937' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (59, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Your product has been ordered. Please prepare the order.', N'true', CAST(N'2024-10-18T22:29:54.940' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (60, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your order is on its way', N'true', CAST(N'2024-10-18T22:31:22.333' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (61, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your order has been delivered successfully.', N'true', CAST(N'2024-10-18T22:32:16.507' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (62, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Order payment system for sellers', N'true', CAST(N'2024-10-18T22:33:17.023' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (63, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Order payment system for sellers', N'true', CAST(N'2024-10-18T23:20:38.900' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (64, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Order payment system for sellers', N'enable', CAST(N'2024-10-19T04:56:38.857' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (65, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Order payment system for sellers', N'enable', CAST(N'2024-10-19T05:05:55.287' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (66, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Order payment successful.', N'enable', CAST(N'2024-10-19T05:50:45.093' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (67, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your product has been ordered. Please prepare the order.', N'enable', CAST(N'2024-10-19T05:50:45.133' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (68, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your order is on its way', N'enable', CAST(N'2024-10-19T05:54:00.370' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (69, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'There is a problem with your order.', N'enable', CAST(N'2024-10-19T06:06:09.573' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (70, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Order payment system for sellers', N'enable', CAST(N'2024-10-19T06:41:19.650' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (71, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Order payment system for Buyer', N'enable', CAST(N'2024-10-19T06:41:19.740' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (72, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Order payment successful.', N'enable', CAST(N'2024-10-19T07:01:23.013' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (73, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your product has been ordered. Please prepare the order.', N'enable', CAST(N'2024-10-19T07:01:23.040' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (74, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your order is on its way', N'enable', CAST(N'2024-10-19T07:04:10.330' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (75, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your order has been delivered successfully.', N'enable', CAST(N'2024-10-19T07:05:36.393' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (76, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Order payment system for sellers', N'enable', CAST(N'2024-10-19T07:07:21.907' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (77, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Order payment successful.', N'enable', CAST(N'2024-10-19T07:09:01.567' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (78, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your product has been ordered. Please prepare the order.', N'enable', CAST(N'2024-10-19T07:09:01.570' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (79, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your order is on its way', N'enable', CAST(N'2024-10-19T07:11:05.733' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (80, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your order is on its way', N'enable', CAST(N'2024-10-19T07:11:19.217' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (81, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your order is on its way', N'enable', CAST(N'2024-10-19T07:15:04.600' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (82, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your order is on its way', N'enable', CAST(N'2024-10-19T07:15:07.880' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (83, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'There is a problem with your order.', N'enable', CAST(N'2024-10-19T07:16:34.020' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (84, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Order payment system for sellers', N'enable', CAST(N'2024-10-19T07:18:45.017' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (85, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Order payment system for Buyer', N'enable', CAST(N'2024-10-19T07:18:45.057' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (86, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Order payment system for sellers', N'enable', CAST(N'2024-10-19T07:24:17.000' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (87, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Order payment system for Buyer', N'enable', CAST(N'2024-10-19T07:24:17.033' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (88, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Order payment system for sellers', N'enable', CAST(N'2024-10-19T07:33:19.727' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (89, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Order payment system for Buyer', N'enable', CAST(N'2024-10-19T07:33:19.817' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (90, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'You has been created order by seller Quy Minh', N'enable', CAST(N'2024-10-20T09:04:34.590' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (91, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Order payment successful.', N'enable', CAST(N'2024-10-20T09:08:36.397' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (92, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Your product has been ordered. Please prepare the order.', N'enable', CAST(N'2024-10-20T09:08:36.403' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (93, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'You has been created order by seller Quy Minh', N'enable', CAST(N'2024-10-20T09:16:37.890' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (94, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'You has been created order by seller Quy Minh', N'enable', CAST(N'2024-10-20T09:16:43.613' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (95, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Order payment successful.', N'enable', CAST(N'2024-10-20T09:29:29.487' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (96, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Your product has been ordered. Please prepare the order.', N'enable', CAST(N'2024-10-20T09:29:29.490' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (97, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Order payment successful.', N'enable', CAST(N'2024-10-20T09:42:08.070' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (98, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Your product has been ordered. Please prepare the order.', N'enable', CAST(N'2024-10-20T09:42:08.110' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (99, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'You has been created order by seller Quy Minh', N'enable', CAST(N'2024-10-22T02:14:11.240' AS DateTime))
GO
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (100, N'25ad7ca2-e6cd-4b23-b9d8-cda09fefebf6', N'You has been created order by seller Quy Minh', N'enable', CAST(N'2024-10-22T02:17:31.173' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (101, N'25ad7ca2-e6cd-4b23-b9d8-cda09fefebf6', N'Your product had been bought by another buyer.', N'enable', CAST(N'2024-10-22T02:51:53.033' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (102, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Order payment successful.', N'enable', CAST(N'2024-10-22T02:51:53.290' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (103, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Your product has been ordered. Please prepare the order.', N'enable', CAST(N'2024-10-22T02:51:53.297' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (104, N'25ad7ca2-e6cd-4b23-b9d8-cda09fefebf6', N'Your product had been bought by another buyer.', N'enable', CAST(N'2024-10-22T02:53:17.937' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (105, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Order payment successful.', N'enable', CAST(N'2024-10-22T02:53:17.987' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (106, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Your product has been ordered. Please prepare the order.', N'enable', CAST(N'2024-10-22T02:53:17.990' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (107, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Order payment successful.', N'enable', CAST(N'2024-10-22T08:19:11.257' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (108, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your product has been ordered. Please prepare the order.', N'enable', CAST(N'2024-10-22T08:19:11.293' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (109, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your order is on its way', N'enable', CAST(N'2024-10-22T08:30:57.560' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (110, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your order has been delivered successfully.', N'enable', CAST(N'2024-10-22T08:32:13.877' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (111, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your order has been delivered successfully.', N'enable', CAST(N'2024-10-22T08:32:16.830' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (112, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your order has been delivered successfully.', N'enable', CAST(N'2024-10-22T08:35:08.730' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (113, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Order payment successful.', N'enable', CAST(N'2024-10-22T10:30:23.460' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (114, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your product has been ordered. Please prepare the order.', N'enable', CAST(N'2024-10-22T10:30:23.513' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (115, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your order is on its way', N'enable', CAST(N'2024-10-22T10:32:47.793' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (116, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'There is a problem with your order.', N'enable', CAST(N'2024-10-22T10:35:07.890' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (117, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Order payment system for Seller.', N'enable', CAST(N'2024-10-22T10:37:40.990' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (118, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Refund System for Buyers.', N'enable', CAST(N'2024-10-22T10:37:41.030' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (119, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Order payment successful.', N'enable', CAST(N'2024-10-22T15:48:43.030' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (120, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your product has been ordered. Please prepare the order.', N'enable', CAST(N'2024-10-22T15:48:43.067' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (121, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'You has been created order by seller Quy Minh', N'enable', CAST(N'2024-10-22T16:06:18.953' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (122, N'25ad7ca2-e6cd-4b23-b9d8-cda09fefebf6', N'You has been created order by seller Quy Minh', N'enable', CAST(N'2024-10-22T16:06:43.720' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (123, N'25ad7ca2-e6cd-4b23-b9d8-cda09fefebf6', N'Your product had been bought by another buyer.', N'enable', CAST(N'2024-10-22T16:08:04.273' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (124, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Order payment successful.', N'enable', CAST(N'2024-10-22T16:08:04.323' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (125, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Your product has been ordered. Please prepare the order.', N'enable', CAST(N'2024-10-22T16:08:04.327' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (126, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Shipper is coming to pick up your order', N'enable', CAST(N'2024-10-23T04:48:47.697' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (127, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your order is on its way', N'enable', CAST(N'2024-10-23T04:54:33.263' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (128, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Order payment system for Seller.', N'enable', CAST(N'2024-10-23T04:58:31.420' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (129, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your order has been delivered successfully.', N'enable', CAST(N'2024-10-23T05:00:52.100' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (130, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Shipper is coming to pick up your order', N'enable', CAST(N'2024-10-23T05:08:13.193' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (131, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your order is on its way', N'enable', CAST(N'2024-10-23T05:09:23.597' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (132, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your order has been delivered successfully.', N'enable', CAST(N'2024-10-23T05:11:18.953' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (133, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Order payment successful.', N'enable', CAST(N'2024-10-23T05:20:36.857' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (134, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your product has been ordered. Please prepare the order.', N'enable', CAST(N'2024-10-23T05:20:36.863' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (135, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Shipper is coming to pick up your order', N'enable', CAST(N'2024-10-23T05:32:15.437' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (136, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your order is on its way', N'enable', CAST(N'2024-10-23T05:33:28.387' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (137, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your order has been delivered successfully.', N'enable', CAST(N'2024-10-23T05:35:20.360' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (138, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'You has been created order by seller Quy Minh', N'enable', CAST(N'2024-10-23T05:38:50.690' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (139, N'25ad7ca2-e6cd-4b23-b9d8-cda09fefebf6', N'You has been created order by seller Quy Minh', N'enable', CAST(N'2024-10-23T05:39:10.010' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (140, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your product had been bought by another buyer.', N'enable', CAST(N'2024-10-23T05:41:36.243' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (141, N'25ad7ca2-e6cd-4b23-b9d8-cda09fefebf6', N'Order payment successful.', N'enable', CAST(N'2024-10-23T05:41:36.283' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (142, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Your product has been ordered. Please prepare the order.', N'enable', CAST(N'2024-10-23T05:41:36.287' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (143, N'25ad7ca2-e6cd-4b23-b9d8-cda09fefebf6', N'Shipper is coming to pick up your order', N'enable', CAST(N'2024-10-23T05:42:39.650' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (144, N'25ad7ca2-e6cd-4b23-b9d8-cda09fefebf6', N'Your order is on its way', N'enable', CAST(N'2024-10-23T05:43:06.630' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (145, N'25ad7ca2-e6cd-4b23-b9d8-cda09fefebf6', N'Your order has been delivered successfully.', N'enable', CAST(N'2024-10-23T05:45:49.543' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (146, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Order payment successful.', N'Enable', CAST(N'2024-10-23T07:53:12.637' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (147, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your product has been ordered. Please prepare the order.', N'Enable', CAST(N'2024-10-23T07:53:12.677' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (148, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Shipper is coming to pick up your order', N'Enable', CAST(N'2024-10-23T07:55:32.437' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (149, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your order is on its way', N'Enable', CAST(N'2024-10-23T07:56:03.997' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (150, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'There is a problem with your order.', N'Enable', CAST(N'2024-10-23T07:56:43.340' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (151, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Order payment system for sellers', N'Enable', CAST(N'2024-10-23T08:04:27.893' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (152, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Order payment system for sellers', N'Enable', CAST(N'2024-10-23T08:09:07.687' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (153, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Order payment system for Buyer', N'Enable', CAST(N'2024-10-23T08:09:07.720' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (154, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'You has been created order by seller Quy Minh', N'Enable', CAST(N'2024-10-23T08:10:37.567' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (155, N'25ad7ca2-e6cd-4b23-b9d8-cda09fefebf6', N'You has been created order by seller Quy Minh', N'Enable', CAST(N'2024-10-23T08:10:55.000' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (156, N'25ad7ca2-e6cd-4b23-b9d8-cda09fefebf6', N'Your product had been bought by another buyer.', N'Enable', CAST(N'2024-10-23T08:12:58.800' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (157, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Order payment successful.', N'Enable', CAST(N'2024-10-23T08:12:58.853' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (158, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Your product has been ordered. Please prepare the order.', N'Enable', CAST(N'2024-10-23T08:12:58.857' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (159, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Shipper is coming to pick up your order', N'Enable', CAST(N'2024-10-23T08:15:28.033' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (160, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your order is on its way', N'Enable', CAST(N'2024-10-23T08:16:30.033' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (161, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'There is a problem with your order.', N'Enable', CAST(N'2024-10-23T08:17:10.917' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (162, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Order payment system for sellers', N'Enable', CAST(N'2024-10-23T08:17:45.747' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (163, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Order payment system for Buyer', N'Enable', CAST(N'2024-10-23T08:17:45.777' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (164, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Order payment successful.', N'Enable', CAST(N'2024-10-24T10:15:37.663' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (165, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your product has been ordered. Please prepare the order.', N'Enable', CAST(N'2024-10-24T10:15:37.697' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (166, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Shipper is coming to pick up your order', N'Enable', CAST(N'2024-10-24T22:29:12.267' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (167, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your order is on its way', N'Enable', CAST(N'2024-10-24T22:29:56.230' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (168, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your order has been delivered successfully.', N'Enable', CAST(N'2024-10-24T22:30:24.177' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (169, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your order is on its way', N'enable', CAST(N'2024-10-26T11:08:01.730' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (170, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your order has been delivered successfully.', N'enable', CAST(N'2024-10-26T11:08:25.513' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (171, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your order has been delivered successfully.', N'Enable', CAST(N'2024-10-26T11:18:17.227' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (172, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your order is on its way', N'Enable', CAST(N'2024-10-26T11:20:31.763' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (173, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your order is on its way', N'Enable', CAST(N'2024-10-26T11:22:46.670' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (174, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your order is on its way', N'Enable', CAST(N'2024-10-27T09:25:57.187' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (175, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your order has been delivered successfully.', N'Enable', CAST(N'2024-10-27T09:26:39.000' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (176, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Order payment system for sellers', N'Enable', CAST(N'2024-10-27T09:35:51.843' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (177, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Your product post has been accepted.', N'Enable', CAST(N'2024-10-27T13:23:36.550' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (178, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Your product post has been accepted.', N'Enable', CAST(N'2024-10-27T13:30:38.840' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (179, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Order payment system for sellers', N'Enable', CAST(N'2024-10-27T20:20:28.037' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (180, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'You has been created order by seller Quy Minh', N'Enable', CAST(N'2024-10-28T20:45:17.183' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (181, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Your order has been rejected by buyer Huynh Nhat Huy', N'Enable', CAST(N'2024-10-28T20:48:58.097' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (182, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Order payment successful.', N'Enable', CAST(N'2024-10-28T20:50:17.513' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (183, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Your product has been ordered. Please prepare the order.', N'Enable', CAST(N'2024-10-28T20:50:17.520' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (184, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Order payment system for sellers', N'Enable', CAST(N'2024-10-29T10:37:30.143' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (185, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Order payment successful.', N'Enable', CAST(N'2024-10-29T11:15:42.200' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (186, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your product has been ordered. Please prepare the order.', N'Enable', CAST(N'2024-10-29T11:15:42.237' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (187, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Order payment successful.', N'Enable', CAST(N'2024-10-29T11:15:42.333' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (188, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your product has been ordered. Please prepare the order.', N'Enable', CAST(N'2024-10-29T11:15:42.337' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (189, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your order has been cancel successfully', N'Enable', CAST(N'2024-10-30T13:41:06.547' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (190, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Order payment system for Buyer', N'Enable', CAST(N'2024-10-30T13:41:06.757' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (191, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your order has been cancel successfully', N'Enable', CAST(N'2024-10-30T14:22:06.833' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (192, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Your product has been canceled because saadasjkdghsagdjhasdgjhagdjahs', N'Enable', CAST(N'2024-10-30T14:22:06.950' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (193, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Order payment system for Huynh Nhat Huy', N'Enable', CAST(N'2024-10-30T14:22:07.080' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (194, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Order payment system for Quy Minh', N'Enable', CAST(N'2024-10-30T16:52:09.017' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (195, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Order payment system for Quy Minh', N'Enable', CAST(N'2024-10-30T16:52:10.713' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (196, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Shipper is coming to pick up your order', N'Enable', CAST(N'2024-10-31T15:50:57.683' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1196, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Shipper is coming to pick up your order', N'Enable', CAST(N'2024-10-31T22:27:03.190' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1197, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your order is on its way', N'Enable', CAST(N'2024-10-31T22:28:25.383' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1198, N'd4f0c865-20c7-46e5-ba30-23b823ed232c', N'Order payment successful.', N'Enable', CAST(N'2024-10-31T23:22:51.723' AS DateTime))
GO
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1199, N'd4f0c865-20c7-46e5-ba30-23b823ed232c', N'Your product has been ordered. Please prepare the order.', N'Enable', CAST(N'2024-10-31T23:22:51.743' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1200, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Your product post has been rejected.', N'Enable', CAST(N'2024-11-01T10:09:20.210' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1201, N'f857beb8-d0ba-43a8-b887-53173f1c0e27', N'Your product post has been accepted.', N'Enable', CAST(N'2024-11-03T16:32:27.973' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1202, N'cd16133f-c9a0-48fd-82d9-375eb72cc042', N'Your product post has been accepted.', N'Enable', CAST(N'2024-11-03T16:32:29.180' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1203, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'You had received a message from user 9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Enable', CAST(N'2024-11-07T23:23:21.833' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1204, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'You had received a message from user Quy Minh', N'Enable', CAST(N'2024-11-07T23:34:13.373' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1205, N'f857beb8-d0ba-43a8-b887-53173f1c0e27', N'Your product post has been accepted.', N'Enable', CAST(N'2024-11-13T09:42:31.133' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1206, N'cd16133f-c9a0-48fd-82d9-375eb72cc042', N'Your product post has been accepted.', N'Enable', CAST(N'2024-11-13T09:42:32.073' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1207, N'f857beb8-d0ba-43a8-b887-53173f1c0e27', N'Your product post has been accepted.', N'Enable', CAST(N'2024-11-13T09:42:32.873' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1208, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your order is on its way', N'Enable', CAST(N'2024-11-13T09:52:26.827' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1209, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your order has been cancel successfully', N'Enable', CAST(N'2024-11-13T09:59:20.943' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1210, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Your product has been canceled because tôi mu?n d?i hoa khác', N'Enable', CAST(N'2024-11-13T09:59:20.950' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1211, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Order payment system for Huynh Nhat Huy', N'Enable', CAST(N'2024-11-13T09:59:21.007' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1212, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your order has been delivered successfully.', N'Enable', CAST(N'2024-11-13T10:00:45.013' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1213, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Order payment successful.', N'Enable', CAST(N'2024-11-13T10:20:06.807' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1214, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your product has been ordered. Please prepare the order.', N'Enable', CAST(N'2024-11-13T10:20:06.840' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1215, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Shipper is coming to pick up your order', N'Enable', CAST(N'2024-11-13T10:35:08.460' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1216, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your order is on its way', N'Enable', CAST(N'2024-11-13T10:36:08.790' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1217, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Your order has been delivered successfully.', N'Enable', CAST(N'2024-11-13T10:37:16.280' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1218, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'You had received a message from user Huynh Nhat Huy', N'Enable', CAST(N'2024-11-13T14:31:02.277' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1219, N'5548ea17-b441-483b-995f-0bdc34672c28', N'Your product post has been accepted.', N'Enable', CAST(N'2024-11-08T09:07:16.800' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1220, N'cd16133f-c9a0-48fd-82d9-375eb72cc042', N'Your product post has been accepted.', N'Enable', CAST(N'2024-11-08T09:07:32.170' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1221, N'f857beb8-d0ba-43a8-b887-53173f1c0e27', N'Your product post has been accepted.', N'Enable', CAST(N'2024-11-08T09:07:33.740' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1222, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Your product post has been accepted.', N'Enable', CAST(N'2024-11-08T09:07:34.233' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1223, N'5548ea17-b441-483b-995f-0bdc34672c28', N'You had received a message from user T? Quý Minh', N'Enable', CAST(N'2024-11-08T09:25:39.033' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1224, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'You had received a message from user Seller1', N'Enable', CAST(N'2024-11-08T09:26:00.950' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1225, N'5548ea17-b441-483b-995f-0bdc34672c28', N'You had received a message from user T? Quý Minh', N'Enable', CAST(N'2024-11-08T09:36:11.523' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1226, N'c2fdb7ac-0f05-45c3-937d-f3642a9a6d21', N'You had received a message from user T? Quý Minh', N'Enable', CAST(N'2024-11-08T10:12:53.083' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1227, N'5548ea17-b441-483b-995f-0bdc34672c28', N'You had received a message from user T? Quý Minh', N'Enable', CAST(N'2024-11-08T10:46:12.320' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1228, N'5548ea17-b441-483b-995f-0bdc34672c28', N'You had received a message from user T? Quý Minh', N'Enable', CAST(N'2024-11-08T10:46:32.257' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1229, N'5548ea17-b441-483b-995f-0bdc34672c28', N'You had received a message from user T? Quý Minh', N'Enable', CAST(N'2024-11-08T11:21:43.647' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1230, N'5548ea17-b441-483b-995f-0bdc34672c28', N'You had received a message from user T? Quý Minh', N'Enable', CAST(N'2024-11-08T11:21:55.680' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1231, N'5548ea17-b441-483b-995f-0bdc34672c28', N'You had received a message from user T? Quý Minh', N'Enable', CAST(N'2024-11-08T11:23:32.463' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1232, N'5548ea17-b441-483b-995f-0bdc34672c28', N'You had received a message from user T? Quý Minh', N'Enable', CAST(N'2024-11-08T11:24:28.423' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1233, N'5548ea17-b441-483b-995f-0bdc34672c28', N'You had received a message from user T? Quý Minh', N'Enable', CAST(N'2024-11-08T11:24:35.710' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1234, N'5548ea17-b441-483b-995f-0bdc34672c28', N'You had received a message from user T? Quý Minh', N'Enable', CAST(N'2024-11-08T11:24:53.887' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1235, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'You had received a message from user Seller1', N'Enable', CAST(N'2024-11-08T11:25:41.747' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1236, N'5548ea17-b441-483b-995f-0bdc34672c28', N'You had received a message from user T? Quý Minh', N'Enable', CAST(N'2024-11-08T11:26:05.020' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1237, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'You had received a message from user Seller1', N'Enable', CAST(N'2024-11-08T11:27:14.490' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1238, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'You had received a message from user Seller1', N'Enable', CAST(N'2024-11-08T11:30:45.027' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1239, N'c2fdb7ac-0f05-45c3-937d-f3642a9a6d21', N'You had received a message from user T? Quý Minh', N'Enable', CAST(N'2024-11-08T11:31:58.423' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1240, N'5548ea17-b441-483b-995f-0bdc34672c28', N'You had received a message from user T? Quý Minh', N'Enable', CAST(N'2024-11-08T11:40:57.917' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1241, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'You had received a message from user Seller1', N'Enable', CAST(N'2024-11-08T11:46:27.870' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1242, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'You had received a message from user Seller1', N'Enable', CAST(N'2024-11-08T11:46:40.727' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1243, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'You had received a message from user Seller1', N'Enable', CAST(N'2024-11-08T11:50:24.713' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1244, N'5548ea17-b441-483b-995f-0bdc34672c28', N'You had received a message from user T? Quý Minh', N'Enable', CAST(N'2024-11-08T11:54:35.263' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1245, N'5548ea17-b441-483b-995f-0bdc34672c28', N'You had received a message from user T? Quý Minh', N'Enable', CAST(N'2024-11-08T11:54:52.883' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1246, N'5548ea17-b441-483b-995f-0bdc34672c28', N'You had received a message from user T? Quý Minh', N'Enable', CAST(N'2024-11-08T11:57:10.920' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1247, N'5548ea17-b441-483b-995f-0bdc34672c28', N'You had received a message from user T? Quý Minh', N'Enable', CAST(N'2024-11-08T11:57:29.463' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1248, N'5548ea17-b441-483b-995f-0bdc34672c28', N'You had received a message from user T? Quý Minh', N'Enable', CAST(N'2024-11-08T11:57:37.570' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1249, N'5548ea17-b441-483b-995f-0bdc34672c28', N'You had received a message from user T? Quý Minh', N'Enable', CAST(N'2024-11-08T11:57:46.600' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1250, N'5548ea17-b441-483b-995f-0bdc34672c28', N'You had received a message from user T? Quý Minh', N'Enable', CAST(N'2024-11-08T11:57:51.037' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1251, N'5548ea17-b441-483b-995f-0bdc34672c28', N'You had received a message from user T? Quý Minh', N'Enable', CAST(N'2024-11-08T11:58:05.840' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1252, N'5548ea17-b441-483b-995f-0bdc34672c28', N'You had received a message from user T? Quý Minh', N'Enable', CAST(N'2024-11-08T11:58:23.367' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1253, N'5548ea17-b441-483b-995f-0bdc34672c28', N'You had received a message from user T? Quý Minh', N'Enable', CAST(N'2024-11-08T11:58:38.307' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1254, N'5548ea17-b441-483b-995f-0bdc34672c28', N'You had received a message from user T? Quý Minh', N'Enable', CAST(N'2024-11-08T12:35:02.740' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1255, N'5548ea17-b441-483b-995f-0bdc34672c28', N'You had received a message from user T? Quý Minh', N'Enable', CAST(N'2024-11-08T12:35:30.680' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1256, N'5548ea17-b441-483b-995f-0bdc34672c28', N'You had received a message from user T? Quý Minh', N'Enable', CAST(N'2024-11-08T12:36:05.857' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1257, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'You had received a message from user Seller1', N'Enable', CAST(N'2024-11-08T12:40:19.267' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1258, N'5548ea17-b441-483b-995f-0bdc34672c28', N'You had received a message from user T? Quý Minh', N'Enable', CAST(N'2024-11-08T12:44:18.083' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1259, N'5548ea17-b441-483b-995f-0bdc34672c28', N'You had received a message from user T? Quý Minh', N'Enable', CAST(N'2024-11-08T12:44:25.927' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1260, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'You had received a message from user Seller1', N'Enable', CAST(N'2024-11-08T12:46:45.310' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1261, N'5548ea17-b441-483b-995f-0bdc34672c28', N'You had received a message from user T? Quý Minh', N'Enable', CAST(N'2024-11-08T12:46:55.520' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1262, N'5548ea17-b441-483b-995f-0bdc34672c28', N'You had received a message from user T? Quý Minh', N'Enable', CAST(N'2024-11-08T12:48:35.027' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1263, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'You had received a message from user Seller1', N'Enable', CAST(N'2024-11-08T12:48:41.937' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1264, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'You had received a message from user Seller1', N'Enable', CAST(N'2024-11-08T12:49:11.917' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1265, N'5548ea17-b441-483b-995f-0bdc34672c28', N'You had received a message from user T? Quý Minh', N'Enable', CAST(N'2024-11-08T12:49:18.027' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1266, N'5548ea17-b441-483b-995f-0bdc34672c28', N'You had received a message from user T? Quý Minh', N'Enable', CAST(N'2024-11-08T12:52:49.730' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1267, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'You had received a message from user T? Quý Minh', N'Enable', CAST(N'2024-11-08T15:29:44.063' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1268, N'5548ea17-b441-483b-995f-0bdc34672c28', N'You had received a message from user T? Quý Minh', N'Enable', CAST(N'2024-11-08T17:07:54.437' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1269, N'5548ea17-b441-483b-995f-0bdc34672c28', N'You had received a message from user T? Quý Minh', N'Enable', CAST(N'2024-11-08T17:09:35.973' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1270, N'5548ea17-b441-483b-995f-0bdc34672c28', N'You had received a message from user T? Quý Minh', N'Enable', CAST(N'2024-11-08T17:10:07.920' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1271, N'5548ea17-b441-483b-995f-0bdc34672c28', N'You had received a message from user T? Quý Minh', N'Enable', CAST(N'2024-11-08T17:10:33.943' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1272, N'5548ea17-b441-483b-995f-0bdc34672c28', N'You had received a message from user T? Quý Minh', N'Enable', CAST(N'2024-11-08T17:15:10.977' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1273, N'5548ea17-b441-483b-995f-0bdc34672c28', N'You had received a message from user T? Quý Minh', N'Enable', CAST(N'2024-11-10T02:42:28.597' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1274, N'5548ea17-b441-483b-995f-0bdc34672c28', N'You had received a message from user T? Quý Minh', N'Enable', CAST(N'2024-11-10T02:42:45.487' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1275, N'5548ea17-b441-483b-995f-0bdc34672c28', N'You had received a message from user T? Quý Minh', N'Enable', CAST(N'2024-11-12T16:23:19.917' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1276, N'c2fdb7ac-0f05-45c3-937d-f3642a9a6d21', N'You had received a message from user T? Quý Minh', N'Enable', CAST(N'2024-11-12T16:23:59.363' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1277, N'5548ea17-b441-483b-995f-0bdc34672c28', N'You had received a message from user T? Quý Minh', N'Enable', CAST(N'2024-11-14T11:40:37.670' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1278, N'5548ea17-b441-483b-995f-0bdc34672c28', N'You had received a message from user T? Quý Minh', N'Enable', CAST(N'2024-11-14T11:40:37.670' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1279, N'5548ea17-b441-483b-995f-0bdc34672c28', N'You had received a message from user T? Quý Minh', N'Enable', CAST(N'2024-11-14T11:40:50.800' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1280, N'5548ea17-b441-483b-995f-0bdc34672c28', N'Your product post has been accepted.', N'Enable', CAST(N'2024-11-14T11:43:43.653' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1281, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'You has been created order by seller Seller1', N'Enable', CAST(N'2024-11-14T11:45:13.427' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1282, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'Order payment successful.', N'Enable', CAST(N'2024-11-14T11:45:31.973' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1283, N'5548ea17-b441-483b-995f-0bdc34672c28', N'Your product has been ordered. Please prepare the order.', N'Enable', CAST(N'2024-11-14T11:45:31.990' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1284, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Your withdrawal request has been accepted.', N'Enable', CAST(N'2024-11-14T11:51:13.160' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1285, N'cd16133f-c9a0-48fd-82d9-375eb72cc042', N'Order payment system for Quy Minh', N'Enable', CAST(N'2024-11-18T14:48:00.090' AS DateTime))
INSERT [dbo].[Notification] ([notification_id], [user_id], [content], [status], [created_at]) VALUES (1286, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'Shipper is coming to pick up your order', N'Enable', CAST(N'2024-11-18T14:48:10.357' AS DateTime))
SET IDENTITY_INSERT [dbo].[Notification] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([order_id], [buyer_id], [seller_id], [delivery_person_id], [total_price], [status], [created_at], [issue_report], [voucher_id], [phoneNumber], [delivered_at], [updated_at]) VALUES (13, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', NULL, CAST(3920000.00 AS Decimal(18, 2)), N'Success', CAST(N'2024-10-10T14:06:25.250' AS DateTime), NULL, 2, N'0939378310', N'Binh Chanh District, Ho Chi Minh City', NULL)
INSERT [dbo].[Order] ([order_id], [buyer_id], [seller_id], [delivery_person_id], [total_price], [status], [created_at], [issue_report], [voucher_id], [phoneNumber], [delivered_at], [updated_at]) VALUES (15, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', CAST(3920000.00 AS Decimal(18, 2)), N'Success', CAST(N'2024-10-13T17:53:25.250' AS DateTime), NULL, 2, N'0939378310', N'Binh Chanh District, Ho Chi Minh City', CAST(N'2024-11-15T10:00:44.993' AS DateTime))
INSERT [dbo].[Order] ([order_id], [buyer_id], [seller_id], [delivery_person_id], [total_price], [status], [created_at], [issue_report], [voucher_id], [phoneNumber], [delivered_at], [updated_at]) VALUES (16, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', NULL, N'cb1a042e-a0cf-4deb-8d35-2b4548dc63a7', CAST(3920000.00 AS Decimal(18, 2)), N'Delivering', CAST(N'2024-10-13T18:02:09.343' AS DateTime), NULL, 2, N'0939378310', N'Binh Chanh District, Ho Chi Minh City', NULL)
INSERT [dbo].[Order] ([order_id], [buyer_id], [seller_id], [delivery_person_id], [total_price], [status], [created_at], [issue_report], [voucher_id], [phoneNumber], [delivered_at], [updated_at]) VALUES (17, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', CAST(3920000.00 AS Decimal(18, 2)), N'Success', CAST(N'2024-10-13T18:10:13.653' AS DateTime), NULL, 2, N'0939378310', N'Binh Chanh District, Ho Chi Minh City', CAST(N'2024-10-16T12:11:55.807' AS DateTime))
INSERT [dbo].[Order] ([order_id], [buyer_id], [seller_id], [delivery_person_id], [total_price], [status], [created_at], [issue_report], [voucher_id], [phoneNumber], [delivered_at], [updated_at]) VALUES (18, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', CAST(1176000.00 AS Decimal(18, 2)), N'Success', CAST(N'2024-10-13T16:00:44.887' AS DateTime), NULL, 2, N'0939378310', N'Binh Chanh District, Ho Chi Minh City', CAST(N'2024-10-15T22:58:16.533' AS DateTime))
INSERT [dbo].[Order] ([order_id], [buyer_id], [seller_id], [delivery_person_id], [total_price], [status], [created_at], [issue_report], [voucher_id], [phoneNumber], [delivered_at], [updated_at]) VALUES (19, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', NULL, NULL, N'Pending', CAST(N'2024-10-13T16:07:26.020' AS DateTime), NULL, 2, N'0939378310', N'Binh Chanh District, Ho Chi Minh City', NULL)
INSERT [dbo].[Order] ([order_id], [buyer_id], [seller_id], [delivery_person_id], [total_price], [status], [created_at], [issue_report], [voucher_id], [phoneNumber], [delivered_at], [updated_at]) VALUES (20, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', CAST(2940000.00 AS Decimal(18, 2)), N'Success', CAST(N'2024-10-13T16:12:08.620' AS DateTime), NULL, 2, N'0939378310', N'Binh Chanh District, Ho Chi Minh City', CAST(N'2024-10-15T22:49:32.287' AS DateTime))
INSERT [dbo].[Order] ([order_id], [buyer_id], [seller_id], [delivery_person_id], [total_price], [status], [created_at], [issue_report], [voucher_id], [phoneNumber], [delivered_at], [updated_at]) VALUES (21, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'f857beb8-d0ba-43a8-b887-53173f1c0e27', N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', CAST(980000.00 AS Decimal(18, 2)), N'Success', CAST(N'2024-10-15T02:01:59.710' AS DateTime), NULL, 2, N'0939378310', N'Binh Chanh District, Ho Chi Minh City', NULL)
INSERT [dbo].[Order] ([order_id], [buyer_id], [seller_id], [delivery_person_id], [total_price], [status], [created_at], [issue_report], [voucher_id], [phoneNumber], [delivered_at], [updated_at]) VALUES (22, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', CAST(1960000.00 AS Decimal(18, 2)), N'Fail', CAST(N'2024-10-16T10:59:24.087' AS DateTime), N'qweqeuiqwiieh', 2, N'0939378310', N'Binh Chanh District, Ho Chi Minh City', CAST(N'2024-10-16T11:29:16.147' AS DateTime))
INSERT [dbo].[Order] ([order_id], [buyer_id], [seller_id], [delivery_person_id], [total_price], [status], [created_at], [issue_report], [voucher_id], [phoneNumber], [delivered_at], [updated_at]) VALUES (23, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'f857beb8-d0ba-43a8-b887-53173f1c0e27', N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', CAST(980000.00 AS Decimal(18, 2)), N'Success', CAST(N'2024-10-16T11:06:24.957' AS DateTime), NULL, 2, N'0939378310', N'Binh Chanh District, Ho Chi Minh City', CAST(N'2024-10-16T11:47:39.110' AS DateTime))
INSERT [dbo].[Order] ([order_id], [buyer_id], [seller_id], [delivery_person_id], [total_price], [status], [created_at], [issue_report], [voucher_id], [phoneNumber], [delivered_at], [updated_at]) VALUES (24, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', CAST(1960000.00 AS Decimal(18, 2)), N'Success', CAST(N'2024-10-16T11:14:03.090' AS DateTime), NULL, 2, N'0939378310', N'Binh Chanh District, Ho Chi Minh City', CAST(N'2024-10-16T11:51:23.723' AS DateTime))
INSERT [dbo].[Order] ([order_id], [buyer_id], [seller_id], [delivery_person_id], [total_price], [status], [created_at], [issue_report], [voucher_id], [phoneNumber], [delivered_at], [updated_at]) VALUES (25, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', CAST(980000.00 AS Decimal(18, 2)), N'Success', CAST(N'2024-10-16T12:23:36.443' AS DateTime), NULL, 2, N'0939378310', N'Binh Chanh District, Ho Chi Minh City', CAST(N'2024-10-16T12:29:47.327' AS DateTime))
INSERT [dbo].[Order] ([order_id], [buyer_id], [seller_id], [delivery_person_id], [total_price], [status], [created_at], [issue_report], [voucher_id], [phoneNumber], [delivered_at], [updated_at]) VALUES (26, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', CAST(980000.00 AS Decimal(18, 2)), N'Success', CAST(N'2024-10-16T12:40:17.167' AS DateTime), NULL, 2, N'0939378310', N'Binh Chanh District, Ho Chi Minh City', CAST(N'2024-10-16T12:46:02.113' AS DateTime))
INSERT [dbo].[Order] ([order_id], [buyer_id], [seller_id], [delivery_person_id], [total_price], [status], [created_at], [issue_report], [voucher_id], [phoneNumber], [delivered_at], [updated_at]) VALUES (27, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', CAST(1380000.00 AS Decimal(18, 2)), N'Success', CAST(N'2024-10-16T17:52:19.493' AS DateTime), NULL, 2, N'0939378310', N'Binh Chanh District, Ho Chi Minh City', CAST(N'2024-10-16T18:07:41.467' AS DateTime))
INSERT [dbo].[Order] ([order_id], [buyer_id], [seller_id], [delivery_person_id], [total_price], [status], [created_at], [issue_report], [voucher_id], [phoneNumber], [delivered_at], [updated_at]) VALUES (28, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', CAST(1380000.00 AS Decimal(18, 2)), N'Success', CAST(N'2024-10-18T22:21:18.840' AS DateTime), NULL, 2, N'0939378310', N'Binh Chanh District, Ho Chi Minh City', CAST(N'2024-10-18T22:28:43.007' AS DateTime))
INSERT [dbo].[Order] ([order_id], [buyer_id], [seller_id], [delivery_person_id], [total_price], [status], [created_at], [issue_report], [voucher_id], [phoneNumber], [delivered_at], [updated_at]) VALUES (29, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', CAST(1060000.00 AS Decimal(18, 2)), N'Success', CAST(N'2024-10-18T22:29:54.893' AS DateTime), NULL, 2, N'0939378310', N'Binh Chanh District, Ho Chi Minh City', CAST(N'2024-10-18T22:33:17.030' AS DateTime))
INSERT [dbo].[Order] ([order_id], [buyer_id], [seller_id], [delivery_person_id], [total_price], [status], [created_at], [issue_report], [voucher_id], [phoneNumber], [delivered_at], [updated_at]) VALUES (32, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', CAST(1380000.00 AS Decimal(18, 2)), N'Fail', CAST(N'2024-10-19T12:50:44.730' AS DateTime), N'sdfdsfkjsdjfkdsjkfsdjkfjskdf', 2, N'0939378310', N'Binh Chanh District, Ho Chi Minh City', CAST(N'2024-10-19T13:06:09.210' AS DateTime))
INSERT [dbo].[Order] ([order_id], [buyer_id], [seller_id], [delivery_person_id], [total_price], [status], [created_at], [issue_report], [voucher_id], [phoneNumber], [delivered_at], [updated_at]) VALUES (33, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', CAST(1060000.00 AS Decimal(18, 2)), N'Success', CAST(N'2024-10-19T14:01:22.803' AS DateTime), NULL, 2, N'0939378310', N'Binh Chanh District, Ho Chi Minh City', CAST(N'2024-10-19T14:05:36.360' AS DateTime))
INSERT [dbo].[Order] ([order_id], [buyer_id], [seller_id], [delivery_person_id], [total_price], [status], [created_at], [issue_report], [voucher_id], [phoneNumber], [delivered_at], [updated_at]) VALUES (34, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', CAST(1280000.00 AS Decimal(18, 2)), N'Fail', CAST(N'2024-10-19T14:09:01.530' AS DateTime), N'adskjlskdjasldjslak', 2, N'0939378310', N'District 1, Ho Chi Minh City', CAST(N'2024-10-19T14:16:33.953' AS DateTime))
INSERT [dbo].[Order] ([order_id], [buyer_id], [seller_id], [delivery_person_id], [total_price], [status], [created_at], [issue_report], [voucher_id], [phoneNumber], [delivered_at], [updated_at]) VALUES (35, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', NULL, CAST(1400000.00 AS Decimal(18, 2)), N'Fail', CAST(N'2024-10-20T16:04:34.513' AS DateTime), N'Tôi muốn đổi hoa khác', NULL, N'0939378310', N'Binh Chanh District, Ho Chi Minh City', NULL)
INSERT [dbo].[Order] ([order_id], [buyer_id], [seller_id], [delivery_person_id], [total_price], [status], [created_at], [issue_report], [voucher_id], [phoneNumber], [delivered_at], [updated_at]) VALUES (36, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', NULL, CAST(1400000.00 AS Decimal(18, 2)), N'Pending', CAST(N'2024-10-20T16:16:37.877' AS DateTime), NULL, NULL, N'0939378310', N'Binh Chanh District, Ho Chi Minh City', NULL)
INSERT [dbo].[Order] ([order_id], [buyer_id], [seller_id], [delivery_person_id], [total_price], [status], [created_at], [issue_report], [voucher_id], [phoneNumber], [delivered_at], [updated_at]) VALUES (38, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', NULL, CAST(1400000.00 AS Decimal(18, 2)), N'Pending', CAST(N'2024-10-22T09:14:10.970' AS DateTime), NULL, NULL, N'0939378310', N'Binh Chanh District, Ho Chi Minh City', NULL)
INSERT [dbo].[Order] ([order_id], [buyer_id], [seller_id], [delivery_person_id], [total_price], [status], [created_at], [issue_report], [voucher_id], [phoneNumber], [delivered_at], [updated_at]) VALUES (39, N'25ad7ca2-e6cd-4b23-b9d8-cda09fefebf6', N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', NULL, CAST(1400000.00 AS Decimal(18, 2)), N'Fail', CAST(N'2024-10-22T09:17:31.150' AS DateTime), NULL, NULL, N'0939378310', N'Binh Chanh District, Ho Chi Minh City', NULL)
INSERT [dbo].[Order] ([order_id], [buyer_id], [seller_id], [delivery_person_id], [total_price], [status], [created_at], [issue_report], [voucher_id], [phoneNumber], [delivered_at], [updated_at]) VALUES (40, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', CAST(2360000.00 AS Decimal(18, 2)), N'Success', CAST(N'2024-10-22T15:19:11.050' AS DateTime), NULL, 2, N'0939378310', N'Binh Chanh District, Ho Chi Minh City', CAST(N'2024-10-22T17:30:22.967' AS DateTime))
INSERT [dbo].[Order] ([order_id], [buyer_id], [seller_id], [delivery_person_id], [total_price], [status], [created_at], [issue_report], [voucher_id], [phoneNumber], [delivered_at], [updated_at]) VALUES (41, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', CAST(1380000.00 AS Decimal(18, 2)), N'Fail', CAST(N'2024-10-22T17:30:22.967' AS DateTime), N'sfsdfsdfsfsdf', 2, N'0939378310', N'Binh Chanh District, Ho Chi Minh City', CAST(N'2024-10-22T17:30:22.967' AS DateTime))
INSERT [dbo].[Order] ([order_id], [buyer_id], [seller_id], [delivery_person_id], [total_price], [status], [created_at], [issue_report], [voucher_id], [phoneNumber], [delivered_at], [updated_at]) VALUES (42, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', CAST(1400000.00 AS Decimal(18, 2)), N'Delivering', CAST(N'2024-10-22T22:48:42.740' AS DateTime), NULL, NULL, N'0939378310', N'Binh Chanh District, Ho Chi Minh City', CAST(N'2024-10-25T12:00:51.973' AS DateTime))
INSERT [dbo].[Order] ([order_id], [buyer_id], [seller_id], [delivery_person_id], [total_price], [status], [created_at], [issue_report], [voucher_id], [phoneNumber], [delivered_at], [updated_at]) VALUES (43, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', CAST(1400000.00 AS Decimal(18, 2)), N'Delivering', CAST(N'2024-10-22T23:06:18.943' AS DateTime), NULL, NULL, N'0939378310', N'Binh Chanh District, Ho Chi Minh City', CAST(N'2024-10-25T12:11:18.927' AS DateTime))
INSERT [dbo].[Order] ([order_id], [buyer_id], [seller_id], [delivery_person_id], [total_price], [status], [created_at], [issue_report], [voucher_id], [phoneNumber], [delivered_at], [updated_at]) VALUES (44, N'25ad7ca2-e6cd-4b23-b9d8-cda09fefebf6', N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', NULL, CAST(1400000.00 AS Decimal(18, 2)), N'Fail', CAST(N'2024-10-22T23:06:43.713' AS DateTime), NULL, NULL, N'0939378310', N'Binh Chanh District, Ho Chi Minh City', NULL)
INSERT [dbo].[Order] ([order_id], [buyer_id], [seller_id], [delivery_person_id], [total_price], [status], [created_at], [issue_report], [voucher_id], [phoneNumber], [delivered_at], [updated_at]) VALUES (45, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', CAST(1400000.00 AS Decimal(18, 2)), N'Delivering', CAST(N'2024-10-23T12:20:36.720' AS DateTime), NULL, NULL, N'0939378310', N'Binh Chanh District, Ho Chi Minh City', CAST(N'2024-10-25T12:35:20.347' AS DateTime))
INSERT [dbo].[Order] ([order_id], [buyer_id], [seller_id], [delivery_person_id], [total_price], [status], [created_at], [issue_report], [voucher_id], [phoneNumber], [delivered_at], [updated_at]) VALUES (46, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', NULL, CAST(1100000.00 AS Decimal(18, 2)), N'Fail', CAST(N'2024-10-23T12:38:50.677' AS DateTime), NULL, NULL, N'0939378310', N'Binh Chanh District, Ho Chi Minh City', NULL)
INSERT [dbo].[Order] ([order_id], [buyer_id], [seller_id], [delivery_person_id], [total_price], [status], [created_at], [issue_report], [voucher_id], [phoneNumber], [delivered_at], [updated_at]) VALUES (47, N'25ad7ca2-e6cd-4b23-b9d8-cda09fefebf6', N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', CAST(1100000.00 AS Decimal(18, 2)), N'Delivering', CAST(N'2024-10-23T12:39:10.007' AS DateTime), NULL, NULL, N'0939378310', N'Binh Chanh District, Ho Chi Minh City', CAST(N'2024-10-25T12:45:49.527' AS DateTime))
INSERT [dbo].[Order] ([order_id], [buyer_id], [seller_id], [delivery_person_id], [total_price], [status], [created_at], [issue_report], [voucher_id], [phoneNumber], [delivered_at], [updated_at]) VALUES (52, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', CAST(1400000.00 AS Decimal(18, 2)), N'Fail', CAST(N'2024-10-23T14:53:12.290' AS DateTime), N'sdfsdfsdfsdfsdf', NULL, N'0939378310', N'Binh Chanh District, Ho Chi Minh City', CAST(N'2024-10-23T14:53:12.290' AS DateTime))
INSERT [dbo].[Order] ([order_id], [buyer_id], [seller_id], [delivery_person_id], [total_price], [status], [created_at], [issue_report], [voucher_id], [phoneNumber], [delivered_at], [updated_at]) VALUES (53, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', CAST(1400000.00 AS Decimal(18, 2)), N'Fail', CAST(N'2024-10-23T15:10:37.557' AS DateTime), N'adsasdasdasda', NULL, N'0939378310', N'Binh Chanh District, Ho Chi Minh City', CAST(N'2024-10-23T15:10:37.557' AS DateTime))
INSERT [dbo].[Order] ([order_id], [buyer_id], [seller_id], [delivery_person_id], [total_price], [status], [created_at], [issue_report], [voucher_id], [phoneNumber], [delivered_at], [updated_at]) VALUES (54, N'25ad7ca2-e6cd-4b23-b9d8-cda09fefebf6', N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', NULL, CAST(1400000.00 AS Decimal(18, 2)), N'Fail', CAST(N'2024-10-23T15:10:54.987' AS DateTime), NULL, NULL, N'0939378310', N'Binh Chanh District, Ho Chi Minh City', NULL)
INSERT [dbo].[Order] ([order_id], [buyer_id], [seller_id], [delivery_person_id], [total_price], [status], [created_at], [issue_report], [voucher_id], [phoneNumber], [delivered_at], [updated_at]) VALUES (55, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', CAST(830000.00 AS Decimal(18, 2)), N'Success', CAST(N'2024-10-24T17:15:37.453' AS DateTime), NULL, NULL, N'0911223344', N'Go Vap District, Ho Chi Minh City', CAST(N'2024-10-29T09:26:38.983' AS DateTime))
INSERT [dbo].[Order] ([order_id], [buyer_id], [seller_id], [delivery_person_id], [total_price], [status], [created_at], [issue_report], [voucher_id], [phoneNumber], [delivered_at], [updated_at]) VALUES (56, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', NULL, CAST(1100000.00 AS Decimal(18, 2)), N'Fail', CAST(N'2024-10-28T20:45:17.057' AS DateTime), N'saadasjkdghsagdjhasdgjhagdjahs', NULL, N'0939378310', N'Binh Chanh District, Ho Chi Minh City', NULL)
INSERT [dbo].[Order] ([order_id], [buyer_id], [seller_id], [delivery_person_id], [total_price], [status], [created_at], [issue_report], [voucher_id], [phoneNumber], [delivered_at], [updated_at]) VALUES (57, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', CAST(21400000.00 AS Decimal(18, 2)), N'Take over', CAST(N'2024-10-29T11:15:41.937' AS DateTime), NULL, NULL, N'0939378310', N'Binh Chanh District, Ho Chi Minh City', NULL)
INSERT [dbo].[Order] ([order_id], [buyer_id], [seller_id], [delivery_person_id], [total_price], [status], [created_at], [issue_report], [voucher_id], [phoneNumber], [delivered_at], [updated_at]) VALUES (58, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'cd16133f-c9a0-48fd-82d9-375eb72cc042', NULL, CAST(1000000.00 AS Decimal(18, 2)), N'Fail', CAST(N'2024-10-29T11:15:42.303' AS DateTime), NULL, NULL, N'0939378310', N'Binh Chanh District, Ho Chi Minh City', NULL)
INSERT [dbo].[Order] ([order_id], [buyer_id], [seller_id], [delivery_person_id], [total_price], [status], [created_at], [issue_report], [voucher_id], [phoneNumber], [delivered_at], [updated_at]) VALUES (59, N'd4f0c865-20c7-46e5-ba30-23b823ed232c', N'cd16133f-c9a0-48fd-82d9-375eb72cc042', NULL, CAST(935000.00 AS Decimal(18, 2)), N'Pending', CAST(N'2024-10-31T23:22:51.567' AS DateTime), NULL, 4, N'0912345678', N'Go Vap District, Ho Chi Minh City', NULL)
INSERT [dbo].[Order] ([order_id], [buyer_id], [seller_id], [delivery_person_id], [total_price], [status], [created_at], [issue_report], [voucher_id], [phoneNumber], [delivered_at], [updated_at]) VALUES (60, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'cd16133f-c9a0-48fd-82d9-375eb72cc042', N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', CAST(750000.00 AS Decimal(18, 2)), N'Success', CAST(N'2024-11-13T10:20:06.437' AS DateTime), NULL, NULL, N'0939378310', N'2393, QL50, Binh Chanh District, Ho Chi Minh City', CAST(N'2024-11-15T10:37:16.263' AS DateTime))
INSERT [dbo].[Order] ([order_id], [buyer_id], [seller_id], [delivery_person_id], [total_price], [status], [created_at], [issue_report], [voucher_id], [phoneNumber], [delivered_at], [updated_at]) VALUES (61, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'5548ea17-b441-483b-995f-0bdc34672c28', NULL, CAST(280000.00 AS Decimal(18, 2)), N'Pending', CAST(N'2024-11-14T11:45:13.380' AS DateTime), NULL, NULL, N'0939378310', N'Go Vap District, Ho Chi Minh City', NULL)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (13, 7, 1, CAST(2000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (13, 8, 1, CAST(2000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (15, 9, 1, CAST(2000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (15, 10, 1, CAST(2000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (16, 9, 1, CAST(2000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (16, 10, 1, CAST(2000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (17, 9, 1, CAST(2000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (17, 10, 1, CAST(2000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (19, 10, 1, CAST(2000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (19, 11, 1, CAST(1000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (20, 10, 1, CAST(2000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (20, 11, 1, CAST(1000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (21, 11, 1, CAST(1000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (22, 10, 1, CAST(2000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (23, 11, 1, CAST(1000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (24, 7, 1, CAST(2000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (25, 13, 1, CAST(1000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (26, 14, 1, CAST(1000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (27, 15, 1, CAST(1000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (28, 16, 1, CAST(1000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (29, 17, 1, CAST(1000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (32, 18, 1, CAST(1000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (33, 20, 1, CAST(1000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (34, 21, 1, CAST(1000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (35, 22, 1, CAST(1000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (36, 23, 1, CAST(1000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (38, 24, 1, CAST(1000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (39, 24, 1, CAST(1000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (40, 25, 1, CAST(1000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (40, 26, 1, CAST(1000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (41, 28, 1, CAST(1000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (42, 29, 1, CAST(1000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (43, 27, 1, CAST(1000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (44, 27, 1, CAST(1000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (45, 30, 1, CAST(1000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (46, 31, 1, CAST(1000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (47, 31, 1, CAST(1000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (52, 33, 1, CAST(1000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (53, 32, 1, CAST(1000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (54, 32, 1, CAST(1000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (55, 48, 1, CAST(750000.00 AS Decimal(18, 2)))
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (56, 49, 1, CAST(1000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (57, 34, 1, CAST(10000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (57, 36, 1, CAST(11000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (58, 46, 1, CAST(900000.00 AS Decimal(18, 2)))
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (59, 46, 1, CAST(900000.00 AS Decimal(18, 2)))
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (60, 50, 1, CAST(650000.00 AS Decimal(18, 2)))
INSERT [dbo].[Order_Item] ([order_id], [product_id], [quantity], [price]) VALUES (61, 72, 1, CAST(200000.00 AS Decimal(18, 2)))
GO
SET IDENTITY_INSERT [dbo].[Payment] ON 

INSERT [dbo].[Payment] ([payment_id], [amount], [created_at], [status], [payment_code], [payment_content], [payment_type], [user_id]) VALUES (1, CAST(100000000.00 AS Decimal(18, 2)), CAST(N'2024-10-19T17:59:08.833' AS DateTime), 1, N'638649575276213161', NULL, 2, N'6e689b0a-c40d-4733-a64e-b18d38ac2224')
INSERT [dbo].[Payment] ([payment_id], [amount], [created_at], [status], [payment_code], [payment_content], [payment_type], [user_id]) VALUES (2, CAST(100000000.00 AS Decimal(18, 2)), CAST(N'2024-10-19T18:02:03.687' AS DateTime), 1, N'638649576991624015', NULL, 2, N'6e689b0a-c40d-4733-a64e-b18d38ac2224')
INSERT [dbo].[Payment] ([payment_id], [amount], [created_at], [status], [payment_code], [payment_content], [payment_type], [user_id]) VALUES (3, CAST(100000000.00 AS Decimal(18, 2)), CAST(N'2024-10-19T18:17:14.060' AS DateTime), 1, N'638649586027431888', NULL, 2, N'6e689b0a-c40d-4733-a64e-b18d38ac2224')
INSERT [dbo].[Payment] ([payment_id], [amount], [created_at], [status], [payment_code], [payment_content], [payment_type], [user_id]) VALUES (4, CAST(100000000.00 AS Decimal(18, 2)), CAST(N'2024-10-19T18:20:41.040' AS DateTime), 1, N'638649586027431888', NULL, 2, N'6e689b0a-c40d-4733-a64e-b18d38ac2224')
INSERT [dbo].[Payment] ([payment_id], [amount], [created_at], [status], [payment_code], [payment_content], [payment_type], [user_id]) VALUES (5, CAST(100000000.00 AS Decimal(18, 2)), CAST(N'2024-10-19T18:20:41.847' AS DateTime), 1, N'638649586027431888', NULL, 2, N'6e689b0a-c40d-4733-a64e-b18d38ac2224')
INSERT [dbo].[Payment] ([payment_id], [amount], [created_at], [status], [payment_code], [payment_content], [payment_type], [user_id]) VALUES (6, CAST(100000000.00 AS Decimal(18, 2)), CAST(N'2024-10-19T18:22:54.320' AS DateTime), 1, N'638649589490688257', N'N?p ti?n vào ví c?a Huynh Nhat Huy', 1, N'6e689b0a-c40d-4733-a64e-b18d38ac2224')
INSERT [dbo].[Payment] ([payment_id], [amount], [created_at], [status], [payment_code], [payment_content], [payment_type], [user_id]) VALUES (7, CAST(100000000.00 AS Decimal(18, 2)), CAST(N'2024-10-20T15:11:08.403' AS DateTime), 1, N'638650338406861742', NULL, 2, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7')
INSERT [dbo].[Payment] ([payment_id], [amount], [created_at], [status], [payment_code], [payment_content], [payment_type], [user_id]) VALUES (8, CAST(100000000.00 AS Decimal(18, 2)), CAST(N'2024-10-20T15:15:08.923' AS DateTime), 1, N'638650340878329729', NULL, 2, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7')
INSERT [dbo].[Payment] ([payment_id], [amount], [created_at], [status], [payment_code], [payment_content], [payment_type], [user_id]) VALUES (9, CAST(100000000.00 AS Decimal(18, 2)), CAST(N'2024-10-20T15:16:07.547' AS DateTime), 1, N'638650341473847149', NULL, 2, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7')
INSERT [dbo].[Payment] ([payment_id], [amount], [created_at], [status], [payment_code], [payment_content], [payment_type], [user_id]) VALUES (10, CAST(100000000.00 AS Decimal(18, 2)), CAST(N'2024-10-20T15:20:43.257' AS DateTime), 1, N'638650344200278364', NULL, 2, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7')
INSERT [dbo].[Payment] ([payment_id], [amount], [created_at], [status], [payment_code], [payment_content], [payment_type], [user_id]) VALUES (11, CAST(100000000.00 AS Decimal(18, 2)), CAST(N'2024-10-20T15:24:49.003' AS DateTime), 1, N'638650346608004728', N'N?p ti?n vào ví c?a Huynh Nhat Huy', 1, N'6e689b0a-c40d-4733-a64e-b18d38ac2224')
INSERT [dbo].[Payment] ([payment_id], [amount], [created_at], [status], [payment_code], [payment_content], [payment_type], [user_id]) VALUES (12, CAST(100000000.00 AS Decimal(18, 2)), CAST(N'2024-10-20T15:38:55.430' AS DateTime), 1, N'638650355123794148', NULL, 2, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7')
INSERT [dbo].[Payment] ([payment_id], [amount], [created_at], [status], [payment_code], [payment_content], [payment_type], [user_id]) VALUES (13, CAST(100000000.00 AS Decimal(18, 2)), CAST(N'2024-10-20T15:41:00.600' AS DateTime), 1, N'638650356409824775', NULL, 2, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7')
INSERT [dbo].[Payment] ([payment_id], [amount], [created_at], [status], [payment_code], [payment_content], [payment_type], [user_id]) VALUES (14, CAST(100000000.00 AS Decimal(18, 2)), CAST(N'2024-10-20T15:57:09.293' AS DateTime), 1, N'638650365874031106', NULL, 2, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7')
INSERT [dbo].[Payment] ([payment_id], [amount], [created_at], [status], [payment_code], [payment_content], [payment_type], [user_id]) VALUES (15, CAST(150000000.00 AS Decimal(18, 2)), CAST(N'2024-10-24T15:50:37.560' AS DateTime), 1, N'638653817564330780', N'Deposit money into Huynh Nhat Huy''s wallet', 1, N'6e689b0a-c40d-4733-a64e-b18d38ac2224')
INSERT [dbo].[Payment] ([payment_id], [amount], [created_at], [status], [payment_code], [payment_content], [payment_type], [user_id]) VALUES (16, CAST(67000000.00 AS Decimal(18, 2)), CAST(N'2024-10-24T15:52:11.543' AS DateTime), 1, N'638653818964308619', N'Deposit money into Le Thanh Cong''s wallet', 1, N'e9c0a6dd-84ff-429f-8c6b-3f0eaf7dab24')
INSERT [dbo].[Payment] ([payment_id], [amount], [created_at], [status], [payment_code], [payment_content], [payment_type], [user_id]) VALUES (17, CAST(1200000000.00 AS Decimal(18, 2)), CAST(N'2024-10-24T15:57:00.707' AS DateTime), 1, N'638653820421440793', N'Deposit money into John Doe''s wallet', 1, N'fa5a8c12-6971-4876-b852-e6a0aa608ca6')
INSERT [dbo].[Payment] ([payment_id], [amount], [created_at], [status], [payment_code], [payment_content], [payment_type], [user_id]) VALUES (18, CAST(990000000.00 AS Decimal(18, 2)), CAST(N'2024-10-24T16:00:05.953' AS DateTime), 1, N'638653823654434173', N'Deposit money into Khuu Tai''s wallet', 1, N'bf2415fd-cd69-4804-b4b6-3b74c051fc31')
INSERT [dbo].[Payment] ([payment_id], [amount], [created_at], [status], [payment_code], [payment_content], [payment_type], [user_id]) VALUES (19, CAST(2000000000.00 AS Decimal(18, 2)), CAST(N'2024-10-24T16:01:18.540' AS DateTime), 1, N'638653824351052858', N'Deposit money into Huynh Nhat Huy''s wallet', 1, N'6e689b0a-c40d-4733-a64e-b18d38ac2224')
INSERT [dbo].[Payment] ([payment_id], [amount], [created_at], [status], [payment_code], [payment_content], [payment_type], [user_id]) VALUES (20, CAST(3500000000.00 AS Decimal(18, 2)), CAST(N'2024-10-24T16:02:16.280' AS DateTime), 1, N'638653825035778828', N'Deposit money into Le Thanh Cong''s wallet', 1, N'e9c0a6dd-84ff-429f-8c6b-3f0eaf7dab24')
INSERT [dbo].[Payment] ([payment_id], [amount], [created_at], [status], [payment_code], [payment_content], [payment_type], [user_id]) VALUES (21, CAST(50000000.00 AS Decimal(18, 2)), CAST(N'2024-10-24T16:03:26.157' AS DateTime), 1, N'638653825669231969', N'Deposit money into Quy Minh''s wallet', 1, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7')
INSERT [dbo].[Payment] ([payment_id], [amount], [created_at], [status], [payment_code], [payment_content], [payment_type], [user_id]) VALUES (22, CAST(78000000.00 AS Decimal(18, 2)), CAST(N'2024-10-24T16:04:41.770' AS DateTime), 1, N'638653826417546991', N'Deposit money into Tai Khuu''s wallet', 1, N'd37738ff-0bc2-44c8-8ea6-b9c14f922653')
INSERT [dbo].[Payment] ([payment_id], [amount], [created_at], [status], [payment_code], [payment_content], [payment_type], [user_id]) VALUES (23, CAST(250000000.00 AS Decimal(18, 2)), CAST(N'2024-10-24T16:06:18.343' AS DateTime), 1, N'638653827315472667', N'Deposit money into Quy Minh''s wallet', 1, N'f857beb8-d0ba-43a8-b887-53173f1c0e27')
INSERT [dbo].[Payment] ([payment_id], [amount], [created_at], [status], [payment_code], [payment_content], [payment_type], [user_id]) VALUES (24, CAST(100000000.00 AS Decimal(18, 2)), CAST(N'2024-10-24T17:18:18.670' AS DateTime), 1, N'638653870050153460', N'Deposit money into Huynh Nhat Huy''s wallet', 1, N'6e689b0a-c40d-4733-a64e-b18d38ac2224')
INSERT [dbo].[Payment] ([payment_id], [amount], [created_at], [status], [payment_code], [payment_content], [payment_type], [user_id]) VALUES (25, CAST(100000000.00 AS Decimal(18, 2)), CAST(N'2024-10-24T17:20:59.753' AS DateTime), 1, N'638653872413834698', N'Deposit money into Huynh Nhat Huy''s wallet', 1, N'6e689b0a-c40d-4733-a64e-b18d38ac2224')
INSERT [dbo].[Payment] ([payment_id], [amount], [created_at], [status], [payment_code], [payment_content], [payment_type], [user_id]) VALUES (26, CAST(100000000.00 AS Decimal(18, 2)), CAST(N'2024-10-24T17:23:31.847' AS DateTime), 1, N'638653873905459315', N'Deposit money into Huynh Nhat Huy''s wallet', 1, N'6e689b0a-c40d-4733-a64e-b18d38ac2224')
INSERT [dbo].[Payment] ([payment_id], [amount], [created_at], [status], [payment_code], [payment_content], [payment_type], [user_id]) VALUES (27, CAST(1000000.00 AS Decimal(18, 2)), CAST(N'2024-10-24T17:29:04.120' AS DateTime), 1, N'638653877272706932', N'Deposit money into Huynh Nhat Huy''s wallet', 1, N'6e689b0a-c40d-4733-a64e-b18d38ac2224')
INSERT [dbo].[Payment] ([payment_id], [amount], [created_at], [status], [payment_code], [payment_content], [payment_type], [user_id]) VALUES (28, CAST(1000000.00 AS Decimal(18, 2)), CAST(N'2024-10-24T17:29:48.820' AS DateTime), 0, N'638653877767403061', NULL, 1, N'6e689b0a-c40d-4733-a64e-b18d38ac2224')
INSERT [dbo].[Payment] ([payment_id], [amount], [created_at], [status], [payment_code], [payment_content], [payment_type], [user_id]) VALUES (29, CAST(100000000.00 AS Decimal(18, 2)), CAST(N'2024-10-24T17:32:19.733' AS DateTime), 1, N'638653879247497945', N'Deposit money into Huynh Nhat Huy''s wallet', 1, N'6e689b0a-c40d-4733-a64e-b18d38ac2224')
INSERT [dbo].[Payment] ([payment_id], [amount], [created_at], [status], [payment_code], [payment_content], [payment_type], [user_id]) VALUES (30, CAST(1000000.00 AS Decimal(18, 2)), CAST(N'2024-10-31T23:22:15.407' AS DateTime), 1, N'638660137187530596', N'Deposit money into Tai Khuu''s wallet', 1, N'd4f0c865-20c7-46e5-ba30-23b823ed232c')
INSERT [dbo].[Payment] ([payment_id], [amount], [created_at], [status], [payment_code], [payment_content], [payment_type], [user_id]) VALUES (31, CAST(5000000.00 AS Decimal(18, 2)), CAST(N'2024-11-13T10:10:57.090' AS DateTime), 1, N'638670894228852402', N'Deposit money into Huynh Nhat Huy''s wallet', 1, N'6e689b0a-c40d-4733-a64e-b18d38ac2224')
INSERT [dbo].[Payment] ([payment_id], [amount], [created_at], [status], [payment_code], [payment_content], [payment_type], [user_id]) VALUES (32, CAST(12150000.00 AS Decimal(18, 2)), CAST(N'2024-10-30T17:14:30.270' AS DateTime), 1, N'3470870', N'Pay salaries to all employees', 3, N'38802e65-f6fb-41c8-8832-d977f4cadd10')
INSERT [dbo].[Payment] ([payment_id], [amount], [created_at], [status], [payment_code], [payment_content], [payment_type], [user_id]) VALUES (34, CAST(100000.00 AS Decimal(18, 2)), CAST(N'2024-11-14T11:48:17.607' AS DateTime), 1, N'638671816423342641', N'Deposit money into T? Quý Minh''s wallet', 1, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289')
INSERT [dbo].[Payment] ([payment_id], [amount], [created_at], [status], [payment_code], [payment_content], [payment_type], [user_id]) VALUES (35, CAST(1000000.00 AS Decimal(18, 2)), CAST(N'2024-11-14T11:51:13.093' AS DateTime), 1, N'638671818385479339', N'Withdraw money from Quy Minh''s wallet', 2, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7')
SET IDENTITY_INSERT [dbo].[Payment] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (7, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Hoa Nhập khẩu', 5, N'Events', 1, CAST(2000000.00 AS Decimal(18, 2)), N'Disable', CAST(N'2024-10-09T16:15:23.133' AS DateTime), N'Wedding', N'Hoa nhập khẩu sử dụng cho đám cưới diễn viên', CAST(N'2024-10-14T16:15:23.133' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (8, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Hoa Nhập khẩu', 6, N'Events', 1, CAST(2000000.00 AS Decimal(18, 2)), N'Disable', CAST(N'2024-10-09T16:15:23.133' AS DateTime), N'Wedding', N'Hoa nhập khẩu sử dụng cho đám cưới diễn viên', CAST(N'2024-10-15T16:15:23.133' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (9, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Hoa Nhập khẩu', 4, N'Events', 1, CAST(2000000.00 AS Decimal(18, 2)), N'Disable', CAST(N'2024-10-09T16:15:23.133' AS DateTime), N'Wedding', N'Hoa nhập khẩu sử dụng cho đám cưới diễn viên', CAST(N'2024-10-13T16:15:23.133' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (10, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Hoa Nhập khẩu', 3, N'Events', 1, CAST(2000000.00 AS Decimal(18, 2)), N'Disable', CAST(N'2024-10-09T16:15:23.133' AS DateTime), N'Wedding', N'Hoa nhập khẩu sử dụng cho đám cưới diễn viên', CAST(N'2024-10-12T16:15:23.133' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (11, N'f857beb8-d0ba-43a8-b887-53173f1c0e27', N'Hoa Ki Niem Ngay Thanh Lap Cty', 2, N'Events', 1, CAST(1000000.00 AS Decimal(18, 2)), N'Disable', CAST(N'2024-10-13T09:12:03.060' AS DateTime), N'Conference', N'Hoa nhập từ Hàn và Nhật', CAST(N'2024-10-15T09:12:03.060' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (13, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Hoa Su kien Gumbo 3000', 2, N'Events', 1, CAST(1000000.00 AS Decimal(18, 2)), N'Disable', CAST(N'2024-10-16T05:18:00.513' AS DateTime), N'Conference', N'Su kien quy tu nhieu loai hoa nhap tu Europe', CAST(N'2024-10-18T05:18:00.513' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (14, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Hoa Su kien Summer Rally', 2, N'Events', 1, CAST(1000000.00 AS Decimal(18, 2)), N'Disable', CAST(N'2024-10-16T05:18:00.513' AS DateTime), N'Conference', N'Su kien quy tu nhieu loai hoa nhap tu America', CAST(N'2024-10-18T05:18:00.513' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (15, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Hoa Su kien Ra Mat RapViet 2024', 2, N'Events', 1, CAST(1000000.00 AS Decimal(18, 2)), N'Disable', CAST(N'2024-10-16T05:18:00.513' AS DateTime), N'Conference', N'Su kien quy tu nhieu loai hoa nhap tu Europe va Asia', CAST(N'2024-10-18T05:18:00.513' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (16, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Hoa Su kien Gumbo 3000', 3, N'Events', 1, CAST(1000000.00 AS Decimal(18, 2)), N'Disable', CAST(N'2024-10-16T05:18:00.513' AS DateTime), N'Conference', N'Su kien quy tu nhieu loai hoa nhap tu Europe', CAST(N'2024-10-19T05:18:00.513' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (17, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Hoa Su kien Gumbo 3000', 3, N'Batch', 1, CAST(1000000.00 AS Decimal(18, 2)), N'Disable', CAST(N'2024-10-16T05:18:00.513' AS DateTime), N'Conference', N'Su kien quy tu nhieu loai hoa nhap tu Europe', CAST(N'2024-10-19T05:18:00.513' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (18, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Hoa Su kien Gumbo 3000', 2, N'Events', 1, CAST(1000000.00 AS Decimal(18, 2)), N'Disable', CAST(N'2024-10-19T12:18:06.587' AS DateTime), N'Conference', N'Su kien quy tu nhieu loai hoa nhap tu Europe', CAST(N'2024-10-21T12:18:06.587' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (20, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Hoa Su kien Concert RapViet', 2, N'Batch', 1, CAST(1000000.00 AS Decimal(18, 2)), N'Disable', CAST(N'2024-10-19T13:53:58.240' AS DateTime), N'Conference', N'Su kien quy tu nhieu loai hoa nhap tu Europe', CAST(N'2024-10-21T12:18:06.587' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (21, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Hoa Su kien Gumbo 3000', 2, N'Events', 1, CAST(1000000.00 AS Decimal(18, 2)), N'Disable', CAST(N'2024-10-19T13:54:13.707' AS DateTime), N'Conference', N'Su kien quy tu nhieu loai hoa nhap tu Europe', CAST(N'2024-10-21T12:18:06.587' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (22, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Hoa Su kien Gumbo 3000', 2, N'Events', 1, CAST(0.00 AS Decimal(18, 2)), N'Expired', CAST(N'2024-10-20T16:02:23.110' AS DateTime), N'Conference', N'Su kien quy tu nhieu loai hoa nhap tu Europe', CAST(N'2024-10-22T12:18:06.587' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (23, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Hoa Su kien Gumbo 3000', 2, N'Events', 1, CAST(0.00 AS Decimal(18, 2)), N'Disable', CAST(N'2024-10-20T16:11:21.170' AS DateTime), N'Conference', N'Su kien quy tu nhieu loai hoa nhap tu Europe', CAST(N'2024-10-22T12:18:06.587' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (24, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Hoa Su kien Gumbo 3000', 2, N'Events', 1, CAST(0.00 AS Decimal(18, 2)), N'Disable', CAST(N'2024-10-22T08:33:28.323' AS DateTime), N'Conference', N'Su kien quy tu nhieu loai hoa nhap tu Europe', CAST(N'2024-10-24T12:18:06.587' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (25, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Hoa Su kien Gumbo 1000', 2, N'Events', 1, CAST(1000000.00 AS Decimal(18, 2)), N'Disable', CAST(N'2024-10-22T14:51:55.837' AS DateTime), N'Conference', N'Su kien quy tu nhieu loai hoa nhap tu Europe', CAST(N'2024-10-24T12:18:06.587' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (26, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Hoa Su kien Gumbo 2000', 3, N'Batch', 1, CAST(1000000.00 AS Decimal(18, 2)), N'Disable', CAST(N'2024-10-22T14:52:11.083' AS DateTime), N'Conference', N'Su kien quy tu nhieu loai hoa nhap tu Europe', CAST(N'2024-10-25T12:18:06.587' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (27, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Hoa Su kien Gumbo 3000', 2, N'Events', 1, CAST(0.00 AS Decimal(18, 2)), N'Disable', CAST(N'2024-10-22T14:52:27.773' AS DateTime), N'Conference', N'Su kien quy tu nhieu loai hoa nhap tu Europe', CAST(N'2024-10-24T12:18:06.587' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (28, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Hoa Su kien Tiec Sinh Nhat', 2, N'Events', 1, CAST(1000000.00 AS Decimal(18, 2)), N'Disable', CAST(N'2024-10-22T17:22:00.450' AS DateTime), N'Conference', N'Su kien quy tu nhieu loai hoa nhap tu Europe', CAST(N'2024-10-24T12:18:06.587' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (29, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Hoa Su kien Gumbo 3000', 2, N'Events', 1, CAST(1000000.00 AS Decimal(18, 2)), N'Disable', CAST(N'2024-10-22T22:34:18.903' AS DateTime), N'Conference', N'Su kien quy tu nhieu loai hoa nhap tu Europe', CAST(N'2024-10-24T12:18:06.587' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (30, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Hoa Su kien Gumbo 1000', 2, N'Events', 1, CAST(1000000.00 AS Decimal(18, 2)), N'Disable', CAST(N'2024-10-22T22:58:11.037' AS DateTime), N'Conference', N'Su kien quy tu nhieu loai hoa nhap tu Europe', CAST(N'2024-10-24T12:18:06.587' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (31, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Hoa Su kien Wedding', 2, N'Batch', 1, CAST(0.00 AS Decimal(18, 2)), N'Disable', CAST(N'2024-10-22T22:59:41.413' AS DateTime), N'Conference', N'Su kien quy tu nhieu loai hoa nhap tu Europe', CAST(N'2024-10-24T12:18:06.587' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (32, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Hoa Su kien Gumbo 1000', 2, N'Events', 1, CAST(0.00 AS Decimal(18, 2)), N'Disable', CAST(N'2024-10-23T14:29:22.157' AS DateTime), N'Conference', N'Su kien quy tu nhieu loai hoa nhap tu Europe', CAST(N'2024-10-24T14:29:22.157' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (33, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Hoa Su kien Gumbo 3000', 2, N'Events', 1, CAST(10000000.00 AS Decimal(18, 2)), N'Expired', CAST(N'2024-10-23T14:45:11.423' AS DateTime), N'Conference', N'Su kien quy tu nhieu loai hoa nhap tu Europe', CAST(N'2024-10-24T14:45:11.423' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (34, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Wedding Event Combo A', 7, N'Events', 1, CAST(10000000.00 AS Decimal(18, 2)), N'Disable', CAST(N'2024-10-24T16:27:39.260' AS DateTime), N'Wedding', N'A beautiful floral arrangement for wedding ceremonies.', CAST(N'2024-10-30T16:27:39.260' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (35, N'cd16133f-c9a0-48fd-82d9-375eb72cc042', N'Wedding Event Combo B', 5, N'Events', 1, CAST(12000000.00 AS Decimal(18, 2)), N'Expired', CAST(N'2024-10-24T16:27:56.603' AS DateTime), N'Wedding', N'Elegant flowers for a memorable wedding event.', CAST(N'2024-10-28T16:27:56.603' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (36, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Wedding Event Combo E', 6, N'Events', 1, CAST(11000000.00 AS Decimal(18, 2)), N'Disable', CAST(N'2024-10-24T16:28:10.517' AS DateTime), N'Wedding', N'Graceful flowers for a perfect wedding moment.', CAST(N'2024-10-29T16:28:10.517' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (37, N'cd16133f-c9a0-48fd-82d9-375eb72cc042', N'Wedding Event Combo G', 5, N'Events', 1, CAST(13000000.00 AS Decimal(18, 2)), N'Expired', CAST(N'2024-10-24T16:29:08.760' AS DateTime), N'Wedding', N'Classic flowers for traditional wedding events.', CAST(N'2024-10-28T16:29:08.760' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (38, N'cd16133f-c9a0-48fd-82d9-375eb72cc042', N'Birthday Event Combo A', 3, N'Events', 1, CAST(5000000.00 AS Decimal(18, 2)), N'Expired', CAST(N'2024-10-24T16:29:53.347' AS DateTime), N'Birthday', N'Fun and colorful floral decor for birthdays.', CAST(N'2024-10-26T16:29:53.347' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (39, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Birthday Event Combo C', 5, N'Events', 1, CAST(6000000.00 AS Decimal(18, 2)), N'Expired', CAST(N'2024-10-24T16:30:04.307' AS DateTime), N'Birthday', N'Delicate flowers for birthday parties.', CAST(N'2024-10-28T16:30:04.307' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (40, N'cd16133f-c9a0-48fd-82d9-375eb72cc042', N'Birthday Event Combo E', 3, N'Events', 1, CAST(7000000.00 AS Decimal(18, 2)), N'Expired', CAST(N'2024-10-24T16:30:23.060' AS DateTime), N'Birthday', N'Flowers that add charm to birthday parties.', CAST(N'2024-10-26T16:30:23.060' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (41, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Birthday Event Combo G', 4, N'Events', 1, CAST(8000000.00 AS Decimal(18, 2)), N'Expired', CAST(N'2024-10-24T16:30:32.567' AS DateTime), N'Birthday', N'Floral arrangement for unforgettable birthdays.', CAST(N'2024-10-27T16:30:32.567' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (42, N'f857beb8-d0ba-43a8-b887-53173f1c0e27', N'Conference Event Combo A', 4, N'Events', 1, CAST(8000000.00 AS Decimal(18, 2)), NULL, CAST(N'2024-10-24T16:30:49.867' AS DateTime), N'Conference', N'Floral arrangement for conference stages.', CAST(N'2024-10-27T16:30:49.867' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (43, N'cd16133f-c9a0-48fd-82d9-375eb72cc042', N'Conference Event Combo C', 5, N'Events', 1, CAST(9000000.00 AS Decimal(18, 2)), NULL, CAST(N'2024-10-24T16:31:01.927' AS DateTime), N'Conference', N'Flowers to bring elegance to a conference.', CAST(N'2024-10-28T16:31:01.927' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (44, N'f857beb8-d0ba-43a8-b887-53173f1c0e27', N'Conference Event Combo E', 3, N'Events', 1, CAST(9500000.00 AS Decimal(18, 2)), NULL, CAST(N'2024-10-24T16:31:09.253' AS DateTime), N'Conference', N'Modern flower arrangements for corporate events.', CAST(N'2024-10-26T16:31:09.253' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (45, N'cd16133f-c9a0-48fd-82d9-375eb72cc042', N'Conference Event Combo G', 6, N'Events', 1, CAST(10500000.00 AS Decimal(18, 2)), NULL, CAST(N'2024-10-24T16:31:16.783' AS DateTime), N'Conference', N'Sleek flowers for conference table arrangements.', CAST(N'2024-10-29T16:31:16.783' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (46, N'cd16133f-c9a0-48fd-82d9-375eb72cc042', N'Wedding Batch Combo C', 10, N'Batches', 1, CAST(900000.00 AS Decimal(18, 2)), N'Disable', CAST(N'2024-10-24T16:31:38.527' AS DateTime), N'Wedding', N'Perfect floral batch for large wedding parties.', CAST(N'2024-11-02T16:31:38.527' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (47, N'f857beb8-d0ba-43a8-b887-53173f1c0e27', N'Birthday Batch Combo B', 4, N'Batches', 1, CAST(550000.00 AS Decimal(18, 2)), N'Expired', CAST(N'2024-10-24T16:31:48.057' AS DateTime), N'Birthday', N'Batch of bright flowers for birthday celebrations.', CAST(N'2024-10-27T16:31:48.057' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (48, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Conference Batch Combo B', 6, N'Batches', 1, CAST(750000.00 AS Decimal(18, 2)), N'Disable', CAST(N'2024-10-24T16:31:57.680' AS DateTime), N'Conference', N'Batch of flowers for conference decor.', CAST(N'2024-10-29T16:31:57.680' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (49, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Wedding Batch Combo D', 8, N'Batches', 1, CAST(0.00 AS Decimal(18, 2)), N'Enable', CAST(N'2024-11-13T16:32:08.633' AS DateTime), N'Wedding', N'Stylish flowers to match the grandeur of a wedding.', CAST(N'2024-11-21T16:32:08.633' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (50, N'cd16133f-c9a0-48fd-82d9-375eb72cc042', N'Birthday Batch Combo D', 4, N'Batches', 1, CAST(650000.00 AS Decimal(18, 2)), N'Disable', CAST(N'2024-11-13T16:32:08.633' AS DateTime), N'Birthday', N'A flower arrangement for large birthday gatherings with 10 bouquets. ', CAST(N'2024-11-17T16:32:08.633' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (51, N'f857beb8-d0ba-43a8-b887-53173f1c0e27', N'Conference Batch Combo D', 7, N'Batches', 1, CAST(850000.00 AS Decimal(18, 2)), N'Enable', CAST(N'2024-11-13T16:32:08.633' AS DateTime), N'Conference', N'Batch combo for multi-day conferences.', CAST(N'2024-11-20T16:32:41.973' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (52, N'cd16133f-c9a0-48fd-82d9-375eb72cc042', N'Wedding Batch Combo F', 7, N'Batches', 1, CAST(1150000.00 AS Decimal(18, 2)), N'Enable', CAST(N'2024-11-13T16:32:08.633' AS DateTime), N'Wedding', N'A fresh batch of flowers for wedding decor.', CAST(N'2024-11-20T16:32:41.973' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (53, N'f857beb8-d0ba-43a8-b887-53173f1c0e27', N'Birthday Batch Combo F', 7, N'Batches', 1, CAST(7500000.00 AS Decimal(18, 2)), N'Enable', CAST(N'2024-11-13T16:32:08.633' AS DateTime), N'Birthday', N'Bright and fresh flowers for birthday decor.', CAST(N'2024-11-20T16:32:41.973' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (54, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Conference Batch Combo F', 5, N'Batches', 1, CAST(1000000.00 AS Decimal(18, 2)), N'Rejected', CAST(N'2024-10-24T16:33:13.693' AS DateTime), N'Conference', N'Professional floral setup for conference networking.', CAST(N'2024-10-29T16:32:41.973' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (55, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Hoa Su kien Gumbo 1000', 2, N'Events', 1, CAST(1000000.00 AS Decimal(18, 2)), N'Expired', CAST(N'2024-11-13T16:32:08.633' AS DateTime), N'Conference', N'Su kien quy tu nhieu loai hoa nhap tu Europe', CAST(N'2024-11-15T09:37:39.060' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (56, N'5548ea17-b441-483b-995f-0bdc34672c28', N'Product1', 100000, N'Event', 1, CAST(100000.00 AS Decimal(18, 2)), N'Enable', CAST(N'2024-11-08T08:47:45.810' AS DateTime), N'Birthday', N'123', CAST(N'2298-08-23T08:47:45.810' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (57, N'5548ea17-b441-483b-995f-0bdc34672c28', N'Product2', 12000, N'Batch', 1, CAST(200000.00 AS Decimal(18, 2)), N'Enable', CAST(N'2024-11-08T08:51:04.390' AS DateTime), N'Conference', N'12312412', CAST(N'2057-09-15T08:51:04.390' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (58, N'5548ea17-b441-483b-995f-0bdc34672c28', N'Product3', 30000, N'Batch', 1, CAST(300000.00 AS Decimal(18, 2)), N'Enable', CAST(N'2024-11-08T08:51:59.370' AS DateTime), N'Wedding', N'123124124', CAST(N'2106-12-28T08:51:59.370' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (59, N'5548ea17-b441-483b-995f-0bdc34672c28', N'Product4', 20000, N'Event', 1, CAST(4000000.00 AS Decimal(18, 2)), N'Enable', CAST(N'2024-11-08T08:52:44.230' AS DateTime), N'Birthday', N'123123124', CAST(N'2079-08-11T08:52:44.230' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (60, N'5548ea17-b441-483b-995f-0bdc34672c28', N'Product5', 50000, N'Batch', 1, CAST(1200000.00 AS Decimal(18, 2)), N'Enable', CAST(N'2024-11-08T08:53:32.037' AS DateTime), N'Wedding', N'12312', CAST(N'2161-09-30T08:53:32.037' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (61, N'14605c5b-0d53-4807-980d-ecb84c47b25a', N'Product6', 2000, N'Event', 1, CAST(2000000.00 AS Decimal(18, 2)), N'Enable', CAST(N'2024-11-08T08:58:17.347' AS DateTime), N'Conference', N'123124', CAST(N'2030-04-30T08:58:17.347' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (62, N'14605c5b-0d53-4807-980d-ecb84c47b25a', N'Product7', 12300, N'Batch', 1, CAST(500000.00 AS Decimal(18, 2)), N'Enable', CAST(N'2024-11-08T08:58:59.697' AS DateTime), N'Birthday', N'23124124', CAST(N'2058-07-12T08:58:59.697' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (63, N'14605c5b-0d53-4807-980d-ecb84c47b25a', N'Product8', 40000, N'Event', 1, CAST(1200000.00 AS Decimal(18, 2)), N'Enable', CAST(N'2024-11-08T08:59:45.587' AS DateTime), N'Wedding', N'123124124', CAST(N'2134-05-15T08:59:45.587' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (64, N'14605c5b-0d53-4807-980d-ecb84c47b25a', N'Product8', 30000, N'Batch', 1, CAST(3400000.00 AS Decimal(18, 2)), N'Enable', CAST(N'2024-11-08T09:00:28.210' AS DateTime), N'Conference', N'124124124', CAST(N'2106-12-28T09:00:28.210' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (65, N'14605c5b-0d53-4807-980d-ecb84c47b25a', N'Product9', 1000000, N'Batch', 1, CAST(4200000.00 AS Decimal(18, 2)), N'Enable', CAST(N'2024-11-08T09:01:56.267' AS DateTime), N'Conference', N'1241241', CAST(N'4762-10-05T09:01:56.267' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (66, N'14605c5b-0d53-4807-980d-ecb84c47b25a', N'Product10', 123333, N'Batch', 1, CAST(5600000.00 AS Decimal(18, 2)), N'Enable', CAST(N'2024-11-08T09:02:36.513' AS DateTime), N'Birthday', N'124124124', CAST(N'2362-07-12T09:02:36.513' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (67, N'c2fdb7ac-0f05-45c3-937d-f3642a9a6d21', N'Product11', 1200000, N'Event', 1, CAST(12400000.00 AS Decimal(18, 2)), N'Enable', CAST(N'2024-11-08T09:03:46.710' AS DateTime), N'Conference', N'1241241', CAST(N'5310-05-05T09:03:46.710' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (68, N'c2fdb7ac-0f05-45c3-937d-f3642a9a6d21', N'Product12', 45000, N'Batch', 1, CAST(4500000.00 AS Decimal(18, 2)), N'Enable', CAST(N'2024-11-08T09:04:23.007' AS DateTime), N'Birthday', N'124124124', CAST(N'2148-01-22T09:04:23.007' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (69, N'c2fdb7ac-0f05-45c3-937d-f3642a9a6d21', N'Product13', 90000, N'Batch', 1, CAST(9000000.00 AS Decimal(18, 2)), N'Enable', CAST(N'2024-11-08T09:05:04.430' AS DateTime), N'Birthday', N'12312312', CAST(N'2271-04-07T09:05:04.430' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (70, N'c2fdb7ac-0f05-45c3-937d-f3642a9a6d21', N'Product14', 123333, N'Batch', 1, CAST(800000.00 AS Decimal(18, 2)), N'Enable', CAST(N'2024-11-08T09:05:46.583' AS DateTime), N'Birthday', N'243124124', CAST(N'2362-07-12T09:05:46.583' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (71, N'c2fdb7ac-0f05-45c3-937d-f3642a9a6d21', N'Product15', 30000, N'Batch', 1, CAST(980000.00 AS Decimal(18, 2)), N'Enable', CAST(N'2024-11-08T09:06:37.060' AS DateTime), N'Birthday', N'123214124', CAST(N'2106-12-28T09:06:37.060' AS DateTime))
INSERT [dbo].[Product] ([product_id], [seller_id], [product_name], [freshness_duration], [combo_type], [quantity], [price], [status], [created_at], [category], [description], [expired_at]) VALUES (72, N'5548ea17-b441-483b-995f-0bdc34672c28', N'ProductForDeal', 2, N'Batch', 1, CAST(0.00 AS Decimal(18, 2)), N'Disable', CAST(N'2024-11-14T11:43:21.817' AS DateTime), N'Birthday', N'Modern flower arrangements for corporate events.', CAST(N'2024-11-15T11:43:21.817' AS DateTime))
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Request] ON 

INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (5, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Withdraw', NULL, CAST(1000000.00 AS Decimal(18, 2)), NULL, N'Pending', CAST(N'2024-10-19T18:25:42.750' AS DateTime), NULL, NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (6, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Withdraw', NULL, CAST(1000000.00 AS Decimal(18, 2)), NULL, N'Pending', CAST(N'2024-10-20T15:09:40.043' AS DateTime), NULL, NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (7, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Withdraw', NULL, CAST(1000000.00 AS Decimal(18, 2)), NULL, N'Pending', CAST(N'2024-10-20T15:15:31.940' AS DateTime), NULL, NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (8, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Withdraw', NULL, CAST(1000000.00 AS Decimal(18, 2)), NULL, N'Pending', CAST(N'2024-10-20T15:37:53.453' AS DateTime), NULL, NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (9, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Withdraw', 14, CAST(1000000.00 AS Decimal(18, 2)), NULL, N'Accepted', CAST(N'2024-10-20T15:55:35.250' AS DateTime), CAST(N'2024-10-20T15:57:09.293' AS DateTime), NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (10, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Post', NULL, NULL, 22, N'Accepted', CAST(N'2024-10-20T16:02:23.110' AS DateTime), NULL, NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (11, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Post', NULL, NULL, 23, N'Accepted', CAST(N'2024-10-20T16:11:21.170' AS DateTime), NULL, NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (12, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Post', NULL, NULL, 24, N'Accepted', CAST(N'2024-10-22T08:33:28.323' AS DateTime), NULL, NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (13, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Post', NULL, NULL, 25, N'Accepted', CAST(N'2024-10-22T14:51:55.837' AS DateTime), NULL, NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (14, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Post', NULL, NULL, 26, N'Accepted', CAST(N'2024-10-22T14:52:11.083' AS DateTime), NULL, NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (15, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Post', NULL, NULL, 27, N'Accepted', CAST(N'2024-10-22T07:40:15.177' AS DateTime), CAST(N'2024-10-22T14:54:33.103' AS DateTime), NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (16, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Post', NULL, NULL, 28, N'Accepted', CAST(N'2024-10-22T17:22:00.450' AS DateTime), CAST(N'2024-10-22T22:59:41.413' AS DateTime), NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (17, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Post', NULL, NULL, 29, N'Accepted', CAST(N'2024-10-22T22:34:18.903' AS DateTime), CAST(N'2024-10-22T22:59:41.413' AS DateTime), NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (18, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Post', NULL, NULL, 30, N'Accepted', CAST(N'2024-10-22T22:58:11.037' AS DateTime), CAST(N'2024-10-22T22:59:41.413' AS DateTime), NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (19, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Post', NULL, NULL, 31, N'Accepted', CAST(N'2024-10-22T22:59:41.413' AS DateTime), CAST(N'2024-10-22T22:59:41.413' AS DateTime), NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (20, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Post', NULL, NULL, 32, N'Accepted', CAST(N'2024-10-23T14:29:22.157' AS DateTime), CAST(N'2024-10-23T14:29:22.157' AS DateTime), NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (21, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Post', NULL, NULL, 33, N'Accepted', CAST(N'2024-10-23T14:45:11.423' AS DateTime), CAST(N'2024-10-23T14:45:11.423' AS DateTime), NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (22, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Withdraw', NULL, CAST(5000000.00 AS Decimal(18, 2)), NULL, N'Pending', CAST(N'2024-10-24T16:07:17.560' AS DateTime), NULL, NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (23, N'f857beb8-d0ba-43a8-b887-53173f1c0e27', N'Withdraw', NULL, CAST(750000.00 AS Decimal(18, 2)), NULL, N'Pending', CAST(N'2024-10-24T16:09:16.927' AS DateTime), NULL, NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (24, N'cd16133f-c9a0-48fd-82d9-375eb72cc042', N'Withdraw', NULL, CAST(12000000.00 AS Decimal(18, 2)), NULL, N'Pending', CAST(N'2024-10-24T16:09:57.027' AS DateTime), NULL, NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (25, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Post', NULL, NULL, 34, N'Pending', CAST(N'2024-10-24T16:27:39.260' AS DateTime), NULL, NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (26, N'cd16133f-c9a0-48fd-82d9-375eb72cc042', N'Post', NULL, NULL, 35, N'Pending', CAST(N'2024-10-24T16:27:56.603' AS DateTime), NULL, NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (27, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Post', NULL, NULL, 36, N'Pending', CAST(N'2024-10-24T16:28:10.517' AS DateTime), NULL, NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (28, N'cd16133f-c9a0-48fd-82d9-375eb72cc042', N'Post', NULL, NULL, 37, N'Pending', CAST(N'2024-10-24T16:29:08.760' AS DateTime), NULL, NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (29, N'cd16133f-c9a0-48fd-82d9-375eb72cc042', N'Post', NULL, NULL, 38, N'Pending', CAST(N'2024-10-24T16:29:53.347' AS DateTime), NULL, NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (30, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Post', NULL, NULL, 39, N'Pending', CAST(N'2024-10-24T16:30:04.307' AS DateTime), NULL, NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (31, N'cd16133f-c9a0-48fd-82d9-375eb72cc042', N'Post', NULL, NULL, 40, N'Pending', CAST(N'2024-10-24T16:30:23.060' AS DateTime), NULL, NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (32, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Post', NULL, NULL, 41, N'Pending', CAST(N'2024-10-24T16:30:32.567' AS DateTime), NULL, NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (33, N'f857beb8-d0ba-43a8-b887-53173f1c0e27', N'Post', NULL, NULL, 42, N'Pending', CAST(N'2024-10-24T16:30:49.867' AS DateTime), NULL, NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (34, N'cd16133f-c9a0-48fd-82d9-375eb72cc042', N'Post', NULL, NULL, 43, N'Pending', CAST(N'2024-10-24T16:31:01.927' AS DateTime), NULL, NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (35, N'f857beb8-d0ba-43a8-b887-53173f1c0e27', N'Post', NULL, NULL, 44, N'Pending', CAST(N'2024-10-24T16:31:09.253' AS DateTime), NULL, NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (36, N'cd16133f-c9a0-48fd-82d9-375eb72cc042', N'Post', NULL, NULL, 45, N'Pending', CAST(N'2024-10-24T16:31:16.783' AS DateTime), NULL, NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (37, N'cd16133f-c9a0-48fd-82d9-375eb72cc042', N'Post', NULL, NULL, 46, N'Pending', CAST(N'2024-10-24T16:31:38.527' AS DateTime), NULL, NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (38, N'f857beb8-d0ba-43a8-b887-53173f1c0e27', N'Post', NULL, NULL, 47, N'Pending', CAST(N'2024-10-24T16:31:48.057' AS DateTime), NULL, NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (39, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Post', NULL, NULL, 48, N'Pending', CAST(N'2024-10-24T16:31:57.680' AS DateTime), NULL, NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (40, N'f857beb8-d0ba-43a8-b887-53173f1c0e27', N'Post', NULL, NULL, 49, N'Accepted', CAST(N'2024-10-24T16:32:08.633' AS DateTime), CAST(N'2024-11-13T09:42:32.877' AS DateTime), NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (41, N'cd16133f-c9a0-48fd-82d9-375eb72cc042', N'Post', NULL, NULL, 50, N'Accepted', CAST(N'2024-10-24T16:32:16.617' AS DateTime), CAST(N'2024-11-13T09:42:32.077' AS DateTime), NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (42, N'f857beb8-d0ba-43a8-b887-53173f1c0e27', N'Post', NULL, NULL, 51, N'Accepted', CAST(N'2024-10-24T16:32:41.973' AS DateTime), CAST(N'2024-11-13T09:42:31.217' AS DateTime), NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (43, N'cd16133f-c9a0-48fd-82d9-375eb72cc042', N'Post', NULL, NULL, 52, N'Accepted', CAST(N'2024-10-24T16:32:54.630' AS DateTime), CAST(N'2024-11-03T16:32:29.187' AS DateTime), NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (44, N'f857beb8-d0ba-43a8-b887-53173f1c0e27', N'Post', NULL, NULL, 53, N'Accepted', CAST(N'2024-10-24T16:33:06.693' AS DateTime), CAST(N'2024-11-03T16:32:28.053' AS DateTime), NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (45, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Post', NULL, NULL, 54, N'Rejected', CAST(N'2024-10-24T16:33:13.693' AS DateTime), CAST(N'2024-11-01T10:09:20.277' AS DateTime), N'')
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (46, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Post', NULL, NULL, 55, N'Accepted', CAST(N'2024-10-27T09:37:39.060' AS DateTime), CAST(N'2024-10-27T13:30:39.007' AS DateTime), NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (47, N'5548ea17-b441-483b-995f-0bdc34672c28', N'Post', NULL, NULL, 56, N'Accepted', CAST(N'2024-11-08T08:47:45.810' AS DateTime), CAST(N'2024-11-08T09:07:16.803' AS DateTime), NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (48, N'5548ea17-b441-483b-995f-0bdc34672c28', N'Post', NULL, NULL, 57, N'Accepted', CAST(N'2024-11-08T08:51:04.390' AS DateTime), CAST(N'2024-11-08T09:07:16.330' AS DateTime), NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (49, N'5548ea17-b441-483b-995f-0bdc34672c28', N'Post', NULL, NULL, 58, N'Accepted', CAST(N'2024-11-08T08:51:59.370' AS DateTime), CAST(N'2024-11-08T09:07:15.883' AS DateTime), NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (50, N'5548ea17-b441-483b-995f-0bdc34672c28', N'Post', NULL, NULL, 59, N'Accepted', CAST(N'2024-11-08T08:52:44.230' AS DateTime), CAST(N'2024-11-08T09:07:15.447' AS DateTime), NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (51, N'5548ea17-b441-483b-995f-0bdc34672c28', N'Post', NULL, NULL, 60, N'Accepted', CAST(N'2024-11-08T08:53:32.037' AS DateTime), CAST(N'2024-11-08T09:07:15.063' AS DateTime), NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (52, N'14605c5b-0d53-4807-980d-ecb84c47b25a', N'Post', NULL, NULL, 61, N'Accepted', CAST(N'2024-11-08T08:58:17.347' AS DateTime), CAST(N'2024-11-08T09:07:12.220' AS DateTime), NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (53, N'14605c5b-0d53-4807-980d-ecb84c47b25a', N'Post', NULL, NULL, 62, N'Accepted', CAST(N'2024-11-08T08:58:59.697' AS DateTime), CAST(N'2024-11-08T09:07:11.710' AS DateTime), NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (54, N'14605c5b-0d53-4807-980d-ecb84c47b25a', N'Post', NULL, NULL, 63, N'Accepted', CAST(N'2024-11-08T08:59:45.587' AS DateTime), CAST(N'2024-11-08T09:07:11.167' AS DateTime), NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (55, N'14605c5b-0d53-4807-980d-ecb84c47b25a', N'Post', NULL, NULL, 64, N'Accepted', CAST(N'2024-11-08T09:00:28.210' AS DateTime), CAST(N'2024-11-08T09:07:05.517' AS DateTime), NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (56, N'14605c5b-0d53-4807-980d-ecb84c47b25a', N'Post', NULL, NULL, 65, N'Accepted', CAST(N'2024-11-08T09:01:56.267' AS DateTime), CAST(N'2024-11-08T09:06:58.550' AS DateTime), NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (57, N'14605c5b-0d53-4807-980d-ecb84c47b25a', N'Post', NULL, NULL, 66, N'Accepted', CAST(N'2024-11-08T09:02:36.513' AS DateTime), CAST(N'2024-11-08T09:06:57.343' AS DateTime), NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (58, N'c2fdb7ac-0f05-45c3-937d-f3642a9a6d21', N'Post', NULL, NULL, 67, N'Accepted', CAST(N'2024-11-08T09:03:46.710' AS DateTime), CAST(N'2024-11-08T09:06:56.620' AS DateTime), NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (59, N'c2fdb7ac-0f05-45c3-937d-f3642a9a6d21', N'Post', NULL, NULL, 68, N'Accepted', CAST(N'2024-11-08T09:04:23.007' AS DateTime), CAST(N'2024-11-08T09:06:56.020' AS DateTime), NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (60, N'c2fdb7ac-0f05-45c3-937d-f3642a9a6d21', N'Post', NULL, NULL, 69, N'Accepted', CAST(N'2024-11-08T09:05:04.430' AS DateTime), CAST(N'2024-11-08T09:06:55.373' AS DateTime), NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (61, N'c2fdb7ac-0f05-45c3-937d-f3642a9a6d21', N'Post', NULL, NULL, 70, N'Accepted', CAST(N'2024-11-08T09:05:46.583' AS DateTime), CAST(N'2024-11-08T09:06:54.690' AS DateTime), NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (62, N'c2fdb7ac-0f05-45c3-937d-f3642a9a6d21', N'Post', NULL, NULL, 71, N'Accepted', CAST(N'2024-11-08T09:06:37.060' AS DateTime), CAST(N'2024-11-08T09:06:53.907' AS DateTime), NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (63, N'5548ea17-b441-483b-995f-0bdc34672c28', N'Post', NULL, NULL, 72, N'Accepted', CAST(N'2024-11-14T11:43:21.817' AS DateTime), CAST(N'2024-11-14T11:43:43.723' AS DateTime), NULL)
INSERT [dbo].[Request] ([request_id], [user_id], [request_type], [payment_id], [amount], [product_id], [status], [created_at], [updated_at], [reason]) VALUES (64, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'Withdraw', 35, CAST(1000000.00 AS Decimal(18, 2)), NULL, N'Accepted', CAST(N'2024-11-14T11:50:06.063' AS DateTime), CAST(N'2024-11-14T11:51:13.093' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Request] OFF
GO
SET IDENTITY_INSERT [dbo].[Review] ON 

INSERT [dbo].[Review] ([review_id], [order_id], [buyer_id], [rating], [comment], [created_at]) VALUES (1, 29, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', 5, N'adsdkasjdkajsdjka', CAST(N'2024-10-19T04:56:19.203' AS DateTime))
INSERT [dbo].[Review] ([review_id], [order_id], [buyer_id], [rating], [comment], [created_at]) VALUES (2, 60, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', 5, N'Very good', CAST(N'2024-11-13T11:16:11.300' AS DateTime))
INSERT [dbo].[Review] ([review_id], [order_id], [buyer_id], [rating], [comment], [created_at]) VALUES (3, 60, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', 3, N'sasas', CAST(N'2024-11-13T11:16:22.430' AS DateTime))
INSERT [dbo].[Review] ([review_id], [order_id], [buyer_id], [rating], [comment], [created_at]) VALUES (4, 60, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', 3, N'Very good product', CAST(N'2024-11-13T11:18:27.203' AS DateTime))
INSERT [dbo].[Review] ([review_id], [order_id], [buyer_id], [rating], [comment], [created_at]) VALUES (5, 60, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', 3, N'Very good', CAST(N'2024-11-13T14:29:07.717' AS DateTime))
INSERT [dbo].[Review] ([review_id], [order_id], [buyer_id], [rating], [comment], [created_at]) VALUES (6, 60, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', 5, N'Very good', CAST(N'2024-11-13T14:29:48.223' AS DateTime))
SET IDENTITY_INSERT [dbo].[Review] OFF
GO
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'122e80e8-b492-45fb-9eba-3b219bbb0c0d', N'Shipper', N'SHIPPER', NULL)
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'3cf17741-3550-4e84-a71f-958d3303c96a', N'Admin', N'ADMIN', NULL)
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'5dad446e-b60b-47cb-944b-1a8492877f0f', N'Buyer', N'BUYER', NULL)
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'94abf423-2250-40eb-8fe2-1346aedc1860', N'Staff', N'STAFF', NULL)
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'a9d3df09-2328-4fb9-8919-bf7d9de8349f', N'Manager', N'MANAGER', NULL)
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'd0e9fe4d-e531-4109-abe3-d9f84d8c3d6f', N'Seller', N'SELLER', NULL)
GO
SET IDENTITY_INSERT [dbo].[Shop_Notification] ON 

INSERT [dbo].[Shop_Notification] ([shop_notification_id], [follower_id], [seller_id], [product_id], [content], [status], [created_at]) VALUES (1, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', 55, N'Quy Minh has added a new product in the shop you followed ', N'Enable', CAST(N'2024-10-27T13:23:36.663' AS DateTime))
INSERT [dbo].[Shop_Notification] ([shop_notification_id], [follower_id], [seller_id], [product_id], [content], [status], [created_at]) VALUES (2, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', 55, N'Quy Minh has added a new product in the shop you followed ', N'Enable', CAST(N'2024-10-27T13:30:38.960' AS DateTime))
INSERT [dbo].[Shop_Notification] ([shop_notification_id], [follower_id], [seller_id], [product_id], [content], [status], [created_at]) VALUES (3, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', 48, N'Quy Minh has added a new product in the shop you followed ', N'Enable', CAST(N'2024-11-08T09:07:34.207' AS DateTime))
SET IDENTITY_INSERT [dbo].[Shop_Notification] OFF
GO
SET IDENTITY_INSERT [dbo].[Transaction] ON 

INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (13, N'EVE336383', 25, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', 1, N'Thanh toan giao dich truc tuyen khi mua hang', CAST(980000.00 AS Decimal(18, 2)), 1, CAST(N'2024-10-16T12:23:36.543' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (14, N'EVE834016', 25, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', 1, N'Thanh toan san pham cho nguoi ban', CAST(900000.00 AS Decimal(18, 2)), 0, CAST(N'2024-10-16T12:29:47.317' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (15, N'EVE316618', 26, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', 1, N'Thanh toan giao dich truc tuyen khi mua hang', CAST(980000.00 AS Decimal(18, 2)), 1, CAST(N'2024-10-16T12:40:17.190' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (16, N'EVE434507', 26, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', 1, N'Thanh toan san pham cho nguoi ban', CAST(900000.00 AS Decimal(18, 2)), 0, CAST(N'2024-10-16T12:46:02.103' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (17, N'EVE985082', 27, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', 1, N'Successful online purchase payment with order code is 27.', CAST(1380000.00 AS Decimal(18, 2)), 1, CAST(N'2024-10-16T17:52:19.747' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (20, N'EVE848202', 27, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', 1, N'Payment of orders 27 to sellers', CAST(900000.00 AS Decimal(18, 2)), 0, CAST(N'2024-10-16T18:07:41.457' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (21, N'EVE284232', 28, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', 1, N'Successful online purchase payment with order code is 28.', CAST(1380000.00 AS Decimal(18, 2)), 1, CAST(N'2024-10-18T22:21:18.970' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (22, N'EVE104988', 28, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', 1, N'Payment of orders 28 to sellers', CAST(900000.00 AS Decimal(18, 2)), 0, CAST(N'2024-10-18T22:28:42.993' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (23, N'EVE704020', 29, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', 1, N'Successful online purchase payment with order code is 29.', CAST(1060000.00 AS Decimal(18, 2)), 1, CAST(N'2024-10-18T22:29:54.923' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (24, N'EVE124037', 29, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', 1, N'Payment of orders 29 to sellers', CAST(900000.00 AS Decimal(18, 2)), 0, CAST(N'2024-10-18T22:33:17.017' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (28, N'EVE416409', 32, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', 1, N'Successful online purchase payment with order code is 32.', CAST(1380000.00 AS Decimal(18, 2)), 1, CAST(N'2024-10-19T12:50:45.017' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (29, N'EVE520016', 32, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', 1, N'Payment of orders 32 to sellers', CAST(900000.00 AS Decimal(18, 2)), 0, CAST(N'2024-10-19T13:41:19.560' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (30, N'EVE648962', 32, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', 1, N'Payment of orders 32 to buyer', CAST(882000.00 AS Decimal(18, 2)), 0, CAST(N'2024-10-19T13:41:19.727' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (31, N'EVE132395', 33, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', 1, N'Successful online purchase payment with order code is 33.', CAST(1060000.00 AS Decimal(18, 2)), 1, CAST(N'2024-10-19T14:01:22.930' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (32, N'EVE653822', 33, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', 1, N'Payment of orders 33 to sellers', CAST(900000.00 AS Decimal(18, 2)), 0, CAST(N'2024-10-19T14:07:21.897' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (33, N'EVE802938', 34, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', 1, N'Successful online purchase payment with order code is 34.', CAST(1280000.00 AS Decimal(18, 2)), 1, CAST(N'2024-10-19T14:09:01.550' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (38, N'EVE333992', 34, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', 1, N'Payment of orders 34 to sellers', CAST(900000.00 AS Decimal(18, 2)), 0, CAST(N'2024-10-19T14:33:19.633' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (39, N'EVE412230', 34, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', 1, N'Payment of orders 34 to buyer', CAST(980000.00 AS Decimal(18, 2)), 0, CAST(N'2024-10-19T14:33:19.803' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (40, N'EVE371958', 35, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', 1, N'Successful online purchase payment with order code is 35.', CAST(1400000.00 AS Decimal(18, 2)), 1, CAST(N'2024-10-20T16:08:36.350' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (41, N'EVE255647', 36, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', 1, N'Successful online purchase payment with order code is 36.', CAST(1400000.00 AS Decimal(18, 2)), 1, CAST(N'2024-10-20T16:29:29.453' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (42, N'EVE191233', 36, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', 1, N'Successful online purchase payment with order code is 36.', CAST(1400000.00 AS Decimal(18, 2)), 1, CAST(N'2024-10-20T16:42:07.843' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (43, N'EVE475276', 38, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', 1, N'Successful online purchase payment with order code is 38.', CAST(1400000.00 AS Decimal(18, 2)), 1, CAST(N'2024-10-22T09:51:53.200' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (44, N'EVE469071', 38, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', 1, N'Successful online purchase payment with order code is 38.', CAST(1400000.00 AS Decimal(18, 2)), 1, CAST(N'2024-10-22T09:53:17.957' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (45, N'EVE291229', 40, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', 1, N'Successful online purchase payment with order code is 40.', CAST(2360000.00 AS Decimal(18, 2)), 1, CAST(N'2024-10-22T15:19:11.163' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (46, N'EVE502918', 41, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', 1, N'Successful online purchase payment with order code is 41.', CAST(1380000.00 AS Decimal(18, 2)), 1, CAST(N'2024-10-22T17:30:23.350' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (47, N'EVE505332', 41, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', 1, N'Payment of orders 41 to sellers', CAST(900000.00 AS Decimal(18, 2)), 0, CAST(N'2024-10-22T17:37:40.973' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (48, N'EVE643768', 41, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', 1, N'Payment of orders 41 to buyer', CAST(980000.00 AS Decimal(18, 2)), 0, CAST(N'2024-10-22T17:37:41.023' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (49, N'EVE747575', 42, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', 1, N'Successful online purchase payment with order code is 42.', CAST(1400000.00 AS Decimal(18, 2)), 1, CAST(N'2024-10-22T22:48:42.937' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (50, N'EVE483249', 43, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', 1, N'Successful online purchase payment with order code is 43.', CAST(1400000.00 AS Decimal(18, 2)), 1, CAST(N'2024-10-22T23:08:04.297' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (51, N'EVE783071', 40, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', 1, N'Payment of orders 40 to sellers', CAST(1800000.00 AS Decimal(18, 2)), 0, CAST(N'2024-10-23T11:58:31.387' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (52, N'EVE981061', 45, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', 1, N'Successful online purchase payment with order code is 45.', CAST(1400000.00 AS Decimal(18, 2)), 1, CAST(N'2024-10-23T12:20:36.803' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (53, N'EVE592099', 47, N'25ad7ca2-e6cd-4b23-b9d8-cda09fefebf6', 1, N'Successful online purchase payment with order code is 47.', CAST(1100000.00 AS Decimal(18, 2)), 1, CAST(N'2024-10-23T12:41:36.260' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (54, N'EVE598128', 52, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', 1, N'Successful online purchase payment with order code is 52.', CAST(1400000.00 AS Decimal(18, 2)), 1, CAST(N'2024-10-23T14:53:12.570' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (56, N'EVE100599', 52, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', 1, N'Payment of orders 52 to sellers', CAST(900000.00 AS Decimal(18, 2)), 0, CAST(N'2024-10-23T15:09:07.677' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (57, N'EVE501614', 52, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', 1, N'Payment of orders 52 to buyer', CAST(1000000.00 AS Decimal(18, 2)), 0, CAST(N'2024-10-23T15:09:07.713' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (58, N'EVE888067', 53, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', 1, N'Successful online purchase payment with order code is 53.', CAST(1400000.00 AS Decimal(18, 2)), 1, CAST(N'2024-10-23T15:12:58.823' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (59, N'EVE228510', 53, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', 1, N'Payment of orders 53 to sellers', CAST(900000.00 AS Decimal(18, 2)), 0, CAST(N'2024-10-23T15:17:45.733' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (60, N'EVE561866', 53, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', 1, N'Payment of orders 53 to buyer', CAST(1000000.00 AS Decimal(18, 2)), 0, CAST(N'2024-10-23T15:17:45.770' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (61, N'EVE257180', 55, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', 1, N'Successful online purchase payment with order code is 55.', CAST(830000.00 AS Decimal(18, 2)), 1, CAST(N'2024-10-24T17:15:37.593' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (62, N'EVE321119', 42, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', 1, N'Payment of orders 42 to sellers', CAST(900000.00 AS Decimal(18, 2)), 0, CAST(N'2024-10-27T09:35:51.767' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (63, N'EVE481771', 43, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', 1, N'Payment of orders 43 to sellers', CAST(900000.00 AS Decimal(18, 2)), 0, CAST(N'2024-10-27T20:20:27.953' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (64, N'EVE105134', 56, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', 1, N'Successful online purchase payment with order code is 56.', CAST(1100000.00 AS Decimal(18, 2)), 1, CAST(N'2024-10-28T20:50:17.440' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (65, N'EVE311751', 45, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', 1, N'Payment of orders 45 to sellers', CAST(900000.00 AS Decimal(18, 2)), 0, CAST(N'2024-10-29T10:37:30.037' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (66, N'EVE484475', 57, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', 1, N'Successful online purchase payment with order code is 57.', CAST(21400000.00 AS Decimal(18, 2)), 1, CAST(N'2024-10-29T11:15:42.120' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (67, N'EVE357195', 58, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', 1, N'Successful online purchase payment with order code is 58.', CAST(1000000.00 AS Decimal(18, 2)), 1, CAST(N'2024-10-29T11:15:42.323' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (68, N'EVE945077', 58, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', 1, N'Payment of orders 58 to buyer', CAST(1000000.00 AS Decimal(18, 2)), 0, CAST(N'2024-10-30T13:41:06.707' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (69, N'EVE142308', 56, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', 1, N'Payment of orders 56 to buyer', CAST(1100000.00 AS Decimal(18, 2)), 0, CAST(N'2024-10-30T14:22:07.020' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (70, N'EVE319482', 47, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', 1, N'Payment of orders 47 to sellers', CAST(900000.00 AS Decimal(18, 2)), 0, CAST(N'2024-10-30T16:52:08.923' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (71, N'EVE710590', 55, N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', 1, N'Payment of orders 55 to sellers', CAST(675000.00 AS Decimal(18, 2)), 0, CAST(N'2024-10-30T16:52:10.703' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (72, N'EVE123504', 59, N'd4f0c865-20c7-46e5-ba30-23b823ed232c', 1, N'Successful online purchase payment with order code is 59.', CAST(935000.00 AS Decimal(18, 2)), 1, CAST(N'2024-10-31T23:22:51.683' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (73, N'EVE893455', 35, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', 1, N'Payment of orders 35 to buyer', CAST(1400000.00 AS Decimal(18, 2)), 0, CAST(N'2024-11-13T09:59:20.987' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (74, N'EVE579697', 60, N'6e689b0a-c40d-4733-a64e-b18d38ac2224', 1, N'Successful online purchase payment with order code is 60.', CAST(750000.00 AS Decimal(18, 2)), 1, CAST(N'2024-11-13T10:20:06.733' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (75, N'EVE926936', 61, N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', 1, N'Successful online purchase payment with order code is 61.', CAST(280000.00 AS Decimal(18, 2)), 1, CAST(N'2024-11-14T11:45:31.877' AS DateTime))
INSERT [dbo].[Transaction] ([transaction_id], [transaction_code], [order_id], [user_id], [transaction_type], [transaction_content], [amount], [status], [created_at]) VALUES (76, N'EVE486810', 60, N'cd16133f-c9a0-48fd-82d9-375eb72cc042', 1, N'Payment of orders 60 to sellers', CAST(585000.00 AS Decimal(18, 2)), 0, CAST(N'2024-11-18T14:47:59.980' AS DateTime))
SET IDENTITY_INSERT [dbo].[Transaction] OFF
GO
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'5bdc31ce-237c-4274-8a4b-566f9eb8a344', N'122e80e8-b492-45fb-9eba-3b219bbb0c0d')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'c8ec4c3e-dce2-4c5b-b7d8-0763948bbfdb', N'122e80e8-b492-45fb-9eba-3b219bbb0c0d')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'cb1a042e-a0cf-4deb-8d35-2b4548dc63a7', N'122e80e8-b492-45fb-9eba-3b219bbb0c0d')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'04c5c1e8-e67b-48c0-b2b5-c80a1f240289', N'5dad446e-b60b-47cb-944b-1a8492877f0f')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'25ad7ca2-e6cd-4b23-b9d8-cda09fefebf6', N'5dad446e-b60b-47cb-944b-1a8492877f0f')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'49037ec9-2427-4fa0-8cb8-39b0c519ad84', N'5dad446e-b60b-47cb-944b-1a8492877f0f')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'6e689b0a-c40d-4733-a64e-b18d38ac2224', N'5dad446e-b60b-47cb-944b-1a8492877f0f')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'8c708aa0-48fb-4ef6-b388-285ad2b7412e', N'5dad446e-b60b-47cb-944b-1a8492877f0f')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'ad66a05c-8a90-4730-aa69-91b7a81f5f44', N'5dad446e-b60b-47cb-944b-1a8492877f0f')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'bf0474a2-b616-48ae-bead-6a7d5fc33970', N'5dad446e-b60b-47cb-944b-1a8492877f0f')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'bf2415fd-cd69-4804-b4b6-3b74c051fc31', N'5dad446e-b60b-47cb-944b-1a8492877f0f')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'd4f0c865-20c7-46e5-ba30-23b823ed232c', N'5dad446e-b60b-47cb-944b-1a8492877f0f')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'e9c0a6dd-84ff-429f-8c6b-3f0eaf7dab24', N'5dad446e-b60b-47cb-944b-1a8492877f0f')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'fa5a8c12-6971-4876-b852-e6a0aa608ca6', N'5dad446e-b60b-47cb-944b-1a8492877f0f')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'a05e7e7c-0e87-452a-a278-350c18a704ca', N'94abf423-2250-40eb-8fe2-1346aedc1860')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'a3fee471-4879-49e1-abcd-2ea8112d00f7', N'94abf423-2250-40eb-8fe2-1346aedc1860')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'38802e65-f6fb-41c8-8832-d977f4cadd10', N'a9d3df09-2328-4fb9-8919-bf7d9de8349f')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'14605c5b-0d53-4807-980d-ecb84c47b25a', N'd0e9fe4d-e531-4109-abe3-d9f84d8c3d6f')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'5548ea17-b441-483b-995f-0bdc34672c28', N'd0e9fe4d-e531-4109-abe3-d9f84d8c3d6f')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'9a6bac4c-0f10-40b2-a91f-ab076e6fceb7', N'd0e9fe4d-e531-4109-abe3-d9f84d8c3d6f')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'c2fdb7ac-0f05-45c3-937d-f3642a9a6d21', N'd0e9fe4d-e531-4109-abe3-d9f84d8c3d6f')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'cd16133f-c9a0-48fd-82d9-375eb72cc042', N'd0e9fe4d-e531-4109-abe3-d9f84d8c3d6f')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'd37738ff-0bc2-44c8-8ea6-b9c14f922653', N'd0e9fe4d-e531-4109-abe3-d9f84d8c3d6f')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'f857beb8-d0ba-43a8-b887-53173f1c0e27', N'd0e9fe4d-e531-4109-abe3-d9f84d8c3d6f')
GO
SET IDENTITY_INSERT [dbo].[Voucher] ON 

INSERT [dbo].[Voucher] ([voucher_id], [code], [description], [min_order_value], [start_date], [expiry_date], [created_at], [updated_at], [discount_value]) VALUES (2, N'VC02', N'Giảm 2% cho khách hàng mua đơn hàng trị giá 50000VND', CAST(50000.00 AS Decimal(18, 2)), CAST(N'2024-10-06T15:14:52.160' AS DateTime), CAST(N'2024-10-08T15:14:52.160' AS DateTime), CAST(N'2024-10-06T15:14:52.160' AS DateTime), NULL, CAST(0.02 AS Decimal(18, 2)))
INSERT [dbo].[Voucher] ([voucher_id], [code], [description], [min_order_value], [start_date], [expiry_date], [created_at], [updated_at], [discount_value]) VALUES (3, N'VC03', N'fjshjghkfjghfd', CAST(10000.00 AS Decimal(18, 2)), CAST(N'2024-10-19T04:51:21.933' AS DateTime), CAST(N'2024-10-22T04:51:21.933' AS DateTime), CAST(N'2024-10-19T04:51:21.933' AS DateTime), NULL, CAST(0.05 AS Decimal(18, 2)))
INSERT [dbo].[Voucher] ([voucher_id], [code], [description], [min_order_value], [start_date], [expiry_date], [created_at], [updated_at], [discount_value]) VALUES (4, N'VC04', N'lfjkgdfjglkfj', CAST(100000.00 AS Decimal(18, 2)), CAST(N'2024-10-26T10:25:56.813' AS DateTime), CAST(N'2024-11-01T10:25:56.813' AS DateTime), CAST(N'2024-10-26T10:25:56.813' AS DateTime), NULL, CAST(0.05 AS Decimal(18, 2)))
INSERT [dbo].[Voucher] ([voucher_id], [code], [description], [min_order_value], [start_date], [expiry_date], [created_at], [updated_at], [discount_value]) VALUES (5, N'VC05', N'123', CAST(10000.00 AS Decimal(18, 2)), CAST(N'2024-11-08T08:42:20.283' AS DateTime), CAST(N'2027-08-05T08:42:20.283' AS DateTime), CAST(N'2024-11-08T08:42:20.283' AS DateTime), NULL, CAST(0.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Voucher] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 11/18/2024 3:31:58 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[Account]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 11/18/2024 3:31:58 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[Account]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Delivery_Log_delivery_person_id]    Script Date: 11/18/2024 3:31:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_Delivery_Log_delivery_person_id] ON [dbo].[Delivery_Log]
(
	[delivery_person_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Delivery_Log_order_id]    Script Date: 11/18/2024 3:31:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_Delivery_Log_order_id] ON [dbo].[Delivery_Log]
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Follow_Unique]    Script Date: 11/18/2024 3:31:58 PM ******/
ALTER TABLE [dbo].[Follow] ADD  CONSTRAINT [IX_Follow_Unique] UNIQUE NONCLUSTERED 
(
	[follower_id] ASC,
	[seller_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Notification_user_id]    Script Date: 11/18/2024 3:31:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_Notification_user_id] ON [dbo].[Notification]
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Order_buyer_id]    Script Date: 11/18/2024 3:31:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_Order_buyer_id] ON [dbo].[Order]
(
	[buyer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Order_delivery_person_id]    Script Date: 11/18/2024 3:31:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_Order_delivery_person_id] ON [dbo].[Order]
(
	[delivery_person_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Order_seller_id]    Script Date: 11/18/2024 3:31:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_Order_seller_id] ON [dbo].[Order]
(
	[seller_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Order_Item_product_id]    Script Date: 11/18/2024 3:31:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_Order_Item_product_id] ON [dbo].[Order_Item]
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Product_seller_id]    Script Date: 11/18/2024 3:31:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_Product_seller_id] ON [dbo].[Product]
(
	[seller_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Request_product_id]    Script Date: 11/18/2024 3:31:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_Request_product_id] ON [dbo].[Request]
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Request_transaction_id]    Script Date: 11/18/2024 3:31:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_Request_transaction_id] ON [dbo].[Request]
(
	[payment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Request_user_id]    Script Date: 11/18/2024 3:31:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_Request_user_id] ON [dbo].[Request]
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Review_buyer_id]    Script Date: 11/18/2024 3:31:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_Review_buyer_id] ON [dbo].[Review]
(
	[buyer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Review_order_id]    Script Date: 11/18/2024 3:31:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_Review_order_id] ON [dbo].[Review]
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleClaims_RoleId]    Script Date: 11/18/2024 3:31:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleClaims_RoleId] ON [dbo].[RoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 11/18/2024 3:31:58 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[Roles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Transaction_order_id]    Script Date: 11/18/2024 3:31:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_Transaction_order_id] ON [dbo].[Transaction]
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Transaction_user_id]    Script Date: 11/18/2024 3:31:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_Transaction_user_id] ON [dbo].[Transaction]
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserClaims_UserId]    Script Date: 11/18/2024 3:31:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserClaims_UserId] ON [dbo].[UserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserLogins_UserId]    Script Date: 11/18/2024 3:31:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserLogins_UserId] ON [dbo].[UserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserRoles_RoleId]    Script Date: 11/18/2024 3:31:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserRoles_RoleId] ON [dbo].[UserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Transaction] ADD  DEFAULT ((0)) FOR [order_id]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK__Cart__buyer_id__5AEE82B9] FOREIGN KEY([buyer_id])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK__Cart__buyer_id__5AEE82B9]
GO
ALTER TABLE [dbo].[Cart_Item]  WITH CHECK ADD  CONSTRAINT [FK__Cart_Item__5EBF139D] FOREIGN KEY([cart_id], [buyer_id])
REFERENCES [dbo].[Cart] ([cart_id], [buyer_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cart_Item] CHECK CONSTRAINT [FK__Cart_Item__5EBF139D]
GO
ALTER TABLE [dbo].[Cart_Item]  WITH CHECK ADD  CONSTRAINT [FK__Cart_Item__produ__5DCAEF64] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[Cart_Item] CHECK CONSTRAINT [FK__Cart_Item__produ__5DCAEF64]
GO
ALTER TABLE [dbo].[Delivery_Log]  WITH CHECK ADD  CONSTRAINT [FK__Delivery___deliv__534D60F1] FOREIGN KEY([delivery_person_id])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Delivery_Log] CHECK CONSTRAINT [FK__Delivery___deliv__534D60F1]
GO
ALTER TABLE [dbo].[Delivery_Log]  WITH CHECK ADD  CONSTRAINT [FK__Delivery___order__52593CB8] FOREIGN KEY([order_id])
REFERENCES [dbo].[Order] ([order_id])
GO
ALTER TABLE [dbo].[Delivery_Log] CHECK CONSTRAINT [FK__Delivery___order__52593CB8]
GO
ALTER TABLE [dbo].[Follow]  WITH CHECK ADD  CONSTRAINT [FK_Follow_seller_id] FOREIGN KEY([seller_id])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Follow] CHECK CONSTRAINT [FK_Follow_seller_id]
GO
ALTER TABLE [dbo].[ImageProduct]  WITH CHECK ADD  CONSTRAINT [FK__ImageProd__produ__2B0A656D] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[ImageProduct] CHECK CONSTRAINT [FK__ImageProd__produ__2B0A656D]
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_Account] FOREIGN KEY([sender_id])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_Account]
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_Notification] FOREIGN KEY([notification_id])
REFERENCES [dbo].[Notification] ([notification_id])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_Notification]
GO
ALTER TABLE [dbo].[Notification]  WITH CHECK ADD  CONSTRAINT [FK__Notificat__user___4AB81AF0] FOREIGN KEY([user_id])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Notification] CHECK CONSTRAINT [FK__Notificat__user___4AB81AF0]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK__Order__buyer_id__3E52440B] FOREIGN KEY([buyer_id])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK__Order__buyer_id__3E52440B]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK__Order__delivery___403A8C7D] FOREIGN KEY([delivery_person_id])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK__Order__delivery___403A8C7D]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK__Order__seller_id__3F466844] FOREIGN KEY([seller_id])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK__Order__seller_id__3F466844]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Voucher] FOREIGN KEY([voucher_id])
REFERENCES [dbo].[Voucher] ([voucher_id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Voucher]
GO
ALTER TABLE [dbo].[Order_Item]  WITH CHECK ADD  CONSTRAINT [FK__Order_Ite__order__4316F928] FOREIGN KEY([order_id])
REFERENCES [dbo].[Order] ([order_id])
GO
ALTER TABLE [dbo].[Order_Item] CHECK CONSTRAINT [FK__Order_Ite__order__4316F928]
GO
ALTER TABLE [dbo].[Order_Item]  WITH CHECK ADD  CONSTRAINT [FK__Order_Ite__produ__440B1D61] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[Order_Item] CHECK CONSTRAINT [FK__Order_Ite__produ__440B1D61]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_Account] FOREIGN KEY([user_id])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_Account]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK__Product__seller___3B75D760] FOREIGN KEY([seller_id])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK__Product__seller___3B75D760]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK__Request__product__6383C8BA] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK__Request__product__6383C8BA]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK__Request__user_id__619B8048] FOREIGN KEY([user_id])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK__Request__user_id__619B8048]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Payment] FOREIGN KEY([payment_id])
REFERENCES [dbo].[Payment] ([payment_id])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Payment]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK__Review__buyer_id__47DBAE45] FOREIGN KEY([buyer_id])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK__Review__buyer_id__47DBAE45]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK__Review__order_id__46E78A0C] FOREIGN KEY([order_id])
REFERENCES [dbo].[Order] ([order_id])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK__Review__order_id__46E78A0C]
GO
ALTER TABLE [dbo].[RoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_RoleClaims_Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RoleClaims] CHECK CONSTRAINT [FK_RoleClaims_Roles_RoleId]
GO
ALTER TABLE [dbo].[Shop_Notification]  WITH CHECK ADD  CONSTRAINT [FK__Shop_Noti__produ__5812160E] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[Shop_Notification] CHECK CONSTRAINT [FK__Shop_Noti__produ__5812160E]
GO
ALTER TABLE [dbo].[Shop_Notification]  WITH CHECK ADD  CONSTRAINT [FK_Shop_Notification_Account] FOREIGN KEY([follower_id])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Shop_Notification] CHECK CONSTRAINT [FK_Shop_Notification_Account]
GO
ALTER TABLE [dbo].[Shop_Notification]  WITH CHECK ADD  CONSTRAINT [FK_Shop_Notification_Account2] FOREIGN KEY([seller_id])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Shop_Notification] CHECK CONSTRAINT [FK_Shop_Notification_Account2]
GO
ALTER TABLE [dbo].[Shop_Notification]  WITH CHECK ADD  CONSTRAINT [FK_Shop_Notification_Follow] FOREIGN KEY([follower_id], [seller_id])
REFERENCES [dbo].[Follow] ([follower_id], [seller_id])
GO
ALTER TABLE [dbo].[Shop_Notification] CHECK CONSTRAINT [FK_Shop_Notification_Follow]
GO
ALTER TABLE [dbo].[Transaction]  WITH CHECK ADD  CONSTRAINT [FK__Transacti__order__4D94879B] FOREIGN KEY([order_id])
REFERENCES [dbo].[Order] ([order_id])
GO
ALTER TABLE [dbo].[Transaction] CHECK CONSTRAINT [FK__Transacti__order__4D94879B]
GO
ALTER TABLE [dbo].[Transaction]  WITH CHECK ADD  CONSTRAINT [FK__Transacti__user___4F7CD00D] FOREIGN KEY([user_id])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Transaction] CHECK CONSTRAINT [FK__Transacti__user___4F7CD00D]
GO
ALTER TABLE [dbo].[UserClaims]  WITH CHECK ADD  CONSTRAINT [FK_UserClaims_Account_AccountId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Account] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserClaims] CHECK CONSTRAINT [FK_UserClaims_Account_AccountId]
GO
ALTER TABLE [dbo].[UserLogins]  WITH CHECK ADD  CONSTRAINT [FK_UserLogins_Account_AccountId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Account] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserLogins] CHECK CONSTRAINT [FK_UserLogins_Account_AccountId]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Account_AccountId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Account] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Account_AccountId]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Roles_RoleId]
GO
ALTER TABLE [dbo].[UserTokens]  WITH CHECK ADD  CONSTRAINT [FK_UserTokens_Account_AccountId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Account] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserTokens] CHECK CONSTRAINT [FK_UserTokens_Account_AccountId]
GO
USE [master]
GO
ALTER DATABASE [SWP391EventFlowerExchangePlatform] SET  READ_WRITE 
GO

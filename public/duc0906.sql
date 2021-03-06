USE [master]
GO
/****** Object:  Database [laravel_duc]    Script Date: 6/9/2020 8:12:38 AM ******/
CREATE DATABASE [laravel_duc]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'laravel_duc', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\laravel_duc.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'laravel_duc_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\laravel_duc_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [laravel_duc] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [laravel_duc].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [laravel_duc] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [laravel_duc] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [laravel_duc] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [laravel_duc] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [laravel_duc] SET ARITHABORT OFF 
GO
ALTER DATABASE [laravel_duc] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [laravel_duc] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [laravel_duc] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [laravel_duc] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [laravel_duc] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [laravel_duc] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [laravel_duc] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [laravel_duc] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [laravel_duc] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [laravel_duc] SET  DISABLE_BROKER 
GO
ALTER DATABASE [laravel_duc] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [laravel_duc] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [laravel_duc] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [laravel_duc] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [laravel_duc] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [laravel_duc] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [laravel_duc] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [laravel_duc] SET RECOVERY FULL 
GO
ALTER DATABASE [laravel_duc] SET  MULTI_USER 
GO
ALTER DATABASE [laravel_duc] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [laravel_duc] SET DB_CHAINING OFF 
GO
ALTER DATABASE [laravel_duc] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [laravel_duc] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [laravel_duc] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'laravel_duc', N'ON'
GO
ALTER DATABASE [laravel_duc] SET QUERY_STORE = OFF
GO
USE [laravel_duc]
GO
/****** Object:  Table [dbo].[business]    Script Date: 6/9/2020 8:12:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[business](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[department_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[companies]    Script Date: 6/9/2020 8:12:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[companies](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[location] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customers]    Script Date: 6/9/2020 8:12:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[phone] [text] NULL,
	[email] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[data_rows]    Script Date: 6/9/2020 8:12:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[data_rows](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[data_type_id] [int] NOT NULL,
	[field] [nvarchar](255) NOT NULL,
	[type] [nvarchar](255) NOT NULL,
	[display_name] [nvarchar](255) NOT NULL,
	[required] [bit] NOT NULL,
	[browse] [bit] NOT NULL,
	[read] [bit] NOT NULL,
	[edit] [bit] NOT NULL,
	[add] [bit] NOT NULL,
	[delete] [bit] NOT NULL,
	[details] [nvarchar](max) NULL,
	[order] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[data_types]    Script Date: 6/9/2020 8:12:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[data_types](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[slug] [nvarchar](255) NOT NULL,
	[display_name_singular] [nvarchar](255) NOT NULL,
	[display_name_plural] [nvarchar](255) NOT NULL,
	[icon] [nvarchar](255) NULL,
	[model_name] [nvarchar](255) NULL,
	[description] [nvarchar](255) NULL,
	[generate_permissions] [bit] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[server_side] [tinyint] NOT NULL,
	[controller] [nvarchar](255) NULL,
	[policy_name] [nvarchar](255) NULL,
	[details] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[departments]    Script Date: 6/9/2020 8:12:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[departments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[company_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employee_task]    Script Date: 6/9/2020 8:12:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee_task](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[employee_id] [int] NULL,
	[task_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employees]    Script Date: 6/9/2020 8:12:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employees](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[phone] [text] NULL,
	[level] [varchar](255) NULL,
	[email] [text] NULL,
	[business_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[failed_jobs]    Script Date: 6/9/2020 8:12:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[failed_jobs](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[connection] [nvarchar](max) NOT NULL,
	[queue] [nvarchar](max) NOT NULL,
	[payload] [nvarchar](max) NOT NULL,
	[exception] [nvarchar](max) NOT NULL,
	[failed_at] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[menu_items]    Script Date: 6/9/2020 8:12:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menu_items](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[menu_id] [int] NULL,
	[title] [nvarchar](255) NOT NULL,
	[url] [nvarchar](255) NOT NULL,
	[target] [nvarchar](255) NOT NULL,
	[icon_class] [nvarchar](255) NULL,
	[color] [nvarchar](255) NULL,
	[parent_id] [int] NULL,
	[order] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[route] [nvarchar](255) NULL,
	[parameters] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[menus]    Script Date: 6/9/2020 8:12:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[migrations]    Script Date: 6/9/2020 8:12:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[migrations](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[migration] [nvarchar](255) NOT NULL,
	[batch] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[permission_role]    Script Date: 6/9/2020 8:12:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[permission_role](
	[permission_id] [bigint] NOT NULL,
	[role_id] [bigint] NOT NULL,
 CONSTRAINT [permission_role_permission_id_role_id_primary] PRIMARY KEY CLUSTERED 
(
	[permission_id] ASC,
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[permissions]    Script Date: 6/9/2020 8:12:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[permissions](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[key] [nvarchar](255) NOT NULL,
	[table_name] [nvarchar](255) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roles]    Script Date: 6/9/2020 8:12:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[display_name] [nvarchar](255) NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[settings]    Script Date: 6/9/2020 8:12:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[settings](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[key] [nvarchar](255) NOT NULL,
	[display_name] [nvarchar](255) NOT NULL,
	[value] [varchar](max) NULL,
	[details] [nvarchar](max) NULL,
	[type] [nvarchar](255) NOT NULL,
	[order] [int] NOT NULL,
	[group] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tasks]    Script Date: 6/9/2020 8:12:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tasks](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[status] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ad_ticket]    Script Date: 6/9/2020 8:12:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ad_ticket](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](255) NOT NULL,
	[user_phone] [nvarchar](max) NOT NULL,
	[username] [nvarchar](255) NOT NULL,
	[department_name] [nvarchar](255) NOT NULL,
	[reception_form] [nvarchar](255) NOT NULL,
	[status] [nvarchar](255) NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_admin]    Script Date: 6/9/2020 8:12:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_admin](
	[admin_id] [int] IDENTITY(1,1) NOT NULL,
	[admin_email] [nvarchar](100) NOT NULL,
	[admin_password] [nvarchar](255) NOT NULL,
	[admin_name] [nvarchar](255) NOT NULL,
	[admin_phone] [nvarchar](255) NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[admin_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tickets]    Script Date: 6/9/2020 8:12:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tickets](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [text] NULL,
	[reception_form] [varchar](255) NULL,
	[type] [varchar](255) NULL,
	[status] [varchar](255) NULL,
	[reply] [int] NULL,
	[created_at] [datetime] NULL,
	[update_at] [datetime] NULL,
	[customer_id] [int] NULL,
	[department_id] [int] NULL,
	[employee_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[translations]    Script Date: 6/9/2020 8:12:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[translations](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[table_name] [nvarchar](255) NOT NULL,
	[column_name] [nvarchar](255) NOT NULL,
	[foreign_key] [int] NOT NULL,
	[locale] [nvarchar](255) NOT NULL,
	[value] [nvarchar](max) NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_roles]    Script Date: 6/9/2020 8:12:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_roles](
	[user_id] [bigint] NOT NULL,
	[role_id] [bigint] NOT NULL,
 CONSTRAINT [user_roles_user_id_role_id_primary] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 6/9/2020 8:12:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[email] [nvarchar](255) NOT NULL,
	[email_verified_at] [datetime] NULL,
	[password] [nvarchar](255) NOT NULL,
	[remember_token] [nvarchar](100) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[avatar] [nvarchar](255) NULL,
	[role_id] [bigint] NULL,
	[settings] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[business] ON 

INSERT [dbo].[business] ([id], [name], [department_id]) VALUES (1, N'Updatting', 1)
INSERT [dbo].[business] ([id], [name], [department_id]) VALUES (2, N'FHM', 1)
INSERT [dbo].[business] ([id], [name], [department_id]) VALUES (3, N'GHS', 2)
INSERT [dbo].[business] ([id], [name], [department_id]) VALUES (4, N'FGA', 3)
SET IDENTITY_INSERT [dbo].[business] OFF
GO
SET IDENTITY_INSERT [dbo].[companies] ON 

INSERT [dbo].[companies] ([id], [name], [location]) VALUES (1, N'ABC Software', N'Can Tho City')
SET IDENTITY_INSERT [dbo].[companies] OFF
GO
SET IDENTITY_INSERT [dbo].[customers] ON 

INSERT [dbo].[customers] ([id], [name], [phone], [email]) VALUES (1, N'Tan Phat', N'02842342384', N'TanPhat@gmail.com')
INSERT [dbo].[customers] ([id], [name], [phone], [email]) VALUES (2, N'Duc An', N'02343423894', N'DucAn@gmail.com')
INSERT [dbo].[customers] ([id], [name], [phone], [email]) VALUES (3, N'Tan Phat', N'034234234', N'TanPhat@gmail.com')
INSERT [dbo].[customers] ([id], [name], [phone], [email]) VALUES (4, N'Duc An', N'024332423434', N'DucAn@gmail.com')
INSERT [dbo].[customers] ([id], [name], [phone], [email]) VALUES (5, N'Duc An', N'024332423434', N'DucAn@gmail.com')
SET IDENTITY_INSERT [dbo].[customers] OFF
GO
SET IDENTITY_INSERT [dbo].[departments] ON 

INSERT [dbo].[departments] ([id], [name], [company_id]) VALUES (1, N'Technical Department', 1)
INSERT [dbo].[departments] ([id], [name], [company_id]) VALUES (2, N'Maintenance Department', 1)
INSERT [dbo].[departments] ([id], [name], [company_id]) VALUES (3, N'Service Department', 1)
SET IDENTITY_INSERT [dbo].[departments] OFF
GO
SET IDENTITY_INSERT [dbo].[employees] ON 

INSERT [dbo].[employees] ([id], [name], [phone], [level], [email], [business_id]) VALUES (1, N'Updatting', N'Updatting', NULL, N'Updatting', 1)
INSERT [dbo].[employees] ([id], [name], [phone], [level], [email], [business_id]) VALUES (2, N'Minh Duc', N'0123343348', NULL, N'DucPM@gmail.com', 2)
INSERT [dbo].[employees] ([id], [name], [phone], [level], [email], [business_id]) VALUES (3, N'Minh Thi', N'0242342834', NULL, N'MinhThi@gmail.com', 3)
INSERT [dbo].[employees] ([id], [name], [phone], [level], [email], [business_id]) VALUES (4, N'Trong Hoang', N'0238428434', NULL, N'Hoang@gmail.com', 4)
SET IDENTITY_INSERT [dbo].[employees] OFF
GO
SET IDENTITY_INSERT [dbo].[migrations] ON 

INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (1, N'2014_10_12_000000_create_users_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (2, N'2016_01_01_000000_add_voyager_user_fields', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (3, N'2016_01_01_000000_create_data_types_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (4, N'2016_05_19_173453_create_menu_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (5, N'2016_10_21_190000_create_roles_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (6, N'2016_10_21_190000_create_settings_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (7, N'2016_11_30_135954_create_permission_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (8, N'2016_11_30_141208_create_permission_role_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (9, N'2016_12_26_201236_data_types__add__server_side', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (10, N'2017_01_13_000000_add_route_to_menu_items_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (11, N'2017_01_14_005015_create_translations_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (12, N'2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (13, N'2017_03_06_000000_add_controller_to_data_types_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (14, N'2017_04_21_000000_add_order_to_data_rows_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (15, N'2017_07_05_210000_add_policyname_to_data_types_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (16, N'2017_08_05_000000_add_group_to_settings_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (17, N'2017_11_26_013050_add_user_role_relationship', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (18, N'2017_11_26_015000_create_user_roles_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (19, N'2018_03_11_000000_add_user_settings', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (20, N'2018_03_14_000000_add_details_to_data_types_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (21, N'2018_03_16_000000_make_settings_value_nullable', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (22, N'2019_08_19_000000_create_failed_jobs_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (23, N'2020_06_06_063228_create_tbl_admin_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (24, N'2020_06_06_152412_create_ad_ticket', 2)
SET IDENTITY_INSERT [dbo].[migrations] OFF
GO
SET IDENTITY_INSERT [dbo].[roles] ON 

INSERT [dbo].[roles] ([id], [name], [display_name], [created_at], [updated_at]) VALUES (2, N'Customer', N'Customer', NULL, NULL)
INSERT [dbo].[roles] ([id], [name], [display_name], [created_at], [updated_at]) VALUES (3, N'Employee', N'Employee', NULL, NULL)
SET IDENTITY_INSERT [dbo].[roles] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_ad_ticket] ON 

INSERT [dbo].[tbl_ad_ticket] ([id], [title], [user_phone], [username], [department_name], [reception_form], [status], [created_at], [updated_at]) VALUES (11, N'Upgrade Required', N'024332423434', N'Duc An', N'Technical Department', N'Phone', N'Done', CAST(N'2020-06-07T17:23:42.557' AS DateTime), CAST(N'2020-06-08T16:40:34.647' AS DateTime))
INSERT [dbo].[tbl_ad_ticket] ([id], [title], [user_phone], [username], [department_name], [reception_form], [status], [created_at], [updated_at]) VALUES (12, N'Business Development', N'024332423434', N'Tan Phat', N'Service Department', N'WorkPlace', N'Done', CAST(N'2020-06-07T17:39:55.757' AS DateTime), CAST(N'2020-06-07T17:42:19.663' AS DateTime))
INSERT [dbo].[tbl_ad_ticket] ([id], [title], [user_phone], [username], [department_name], [reception_form], [status], [created_at], [updated_at]) VALUES (13, N'Bugs', N'024332423434', N'Minh Thi', N'Technical Department', N'WorkPlace', N'Waitting update', CAST(N'2020-06-07T17:43:39.353' AS DateTime), NULL)
INSERT [dbo].[tbl_ad_ticket] ([id], [title], [user_phone], [username], [department_name], [reception_form], [status], [created_at], [updated_at]) VALUES (14, N'Bugs', N'024332423434', N'Duc An', N'Technical Department', N'WorkPlace', N'Waitting update', CAST(N'2020-06-07T19:21:29.503' AS DateTime), CAST(N'2020-06-07T19:25:58.300' AS DateTime))
INSERT [dbo].[tbl_ad_ticket] ([id], [title], [user_phone], [username], [department_name], [reception_form], [status], [created_at], [updated_at]) VALUES (16, N'Bugs', N'024332423', N'Minh Thi', N'Service Department', N'WorkPlace', N'Done', CAST(N'2020-06-08T16:40:56.870' AS DateTime), CAST(N'2020-06-08T16:41:49.077' AS DateTime))
SET IDENTITY_INSERT [dbo].[tbl_ad_ticket] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_admin] ON 

INSERT [dbo].[tbl_admin] ([admin_id], [admin_email], [admin_password], [admin_name], [admin_phone], [created_at], [updated_at]) VALUES (2, N'admin@gmail.com', N'123456', N'Minh Duc', N'0278348234', NULL, NULL)
INSERT [dbo].[tbl_admin] ([admin_id], [admin_email], [admin_password], [admin_name], [admin_phone], [created_at], [updated_at]) VALUES (4, N'admin1@gmail.com', N'12345678', N'Minh Duc', N'03823824832', NULL, NULL)
INSERT [dbo].[tbl_admin] ([admin_id], [admin_email], [admin_password], [admin_name], [admin_phone], [created_at], [updated_at]) VALUES (5, N'admin2@gmail.com', N'123456', N'Minh Duc', N'03823824832', NULL, NULL)
INSERT [dbo].[tbl_admin] ([admin_id], [admin_email], [admin_password], [admin_name], [admin_phone], [created_at], [updated_at]) VALUES (6, N'admin6@gmail.com', N'123456', N'Minh Duc', N'03823824832', CAST(N'2020-06-08T08:41:00.960' AS DateTime), NULL)
INSERT [dbo].[tbl_admin] ([admin_id], [admin_email], [admin_password], [admin_name], [admin_phone], [created_at], [updated_at]) VALUES (7, N'admin7@gmail.com', N'12345678', N'Minh Duc', N'03823824832', CAST(N'2020-06-08T10:10:19.183' AS DateTime), NULL)
INSERT [dbo].[tbl_admin] ([admin_id], [admin_email], [admin_password], [admin_name], [admin_phone], [created_at], [updated_at]) VALUES (8, N'admin8@gmail.com', N'12345678', N'Duc An', N'03823824832', CAST(N'2020-06-08T10:11:49.577' AS DateTime), NULL)
INSERT [dbo].[tbl_admin] ([admin_id], [admin_email], [admin_password], [admin_name], [admin_phone], [created_at], [updated_at]) VALUES (9, N'admin9@gmail.com', N'12345678', N'Duc An', N'03823824832', CAST(N'2020-06-08T10:17:42.560' AS DateTime), NULL)
INSERT [dbo].[tbl_admin] ([admin_id], [admin_email], [admin_password], [admin_name], [admin_phone], [created_at], [updated_at]) VALUES (10, N'admin5@gmail.com', N'123456', N'Duc An', N'03823824832', CAST(N'2020-06-08T10:19:04.040' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[tbl_admin] OFF
GO
SET IDENTITY_INSERT [dbo].[tickets] ON 

INSERT [dbo].[tickets] ([id], [title], [reception_form], [type], [status], [reply], [created_at], [update_at], [customer_id], [department_id], [employee_id]) VALUES (1, N'Maintenance', N'Zalo', N'Maintenance', N'Done', 4, CAST(N'2020-06-09T20:06:00.000' AS DateTime), CAST(N'2020-06-10T20:06:00.000' AS DateTime), 1, 1, 2)
INSERT [dbo].[tickets] ([id], [title], [reception_form], [type], [status], [reply], [created_at], [update_at], [customer_id], [department_id], [employee_id]) VALUES (2, N'Upgrade Required', N'Phone', N'Upgrade', N'Done', 5, CAST(N'2020-06-03T16:20:36.000' AS DateTime), CAST(N'2020-06-05T13:29:34.000' AS DateTime), 1, 2, 3)
INSERT [dbo].[tickets] ([id], [title], [reception_form], [type], [status], [reply], [created_at], [update_at], [customer_id], [department_id], [employee_id]) VALUES (3, N'Business Development', N'WorkPlace', N'Business Development', N'Done', 2, CAST(N'2020-03-10T10:20:00.000' AS DateTime), CAST(N'2020-03-15T10:20:00.000' AS DateTime), 1, 3, 4)
INSERT [dbo].[tickets] ([id], [title], [reception_form], [type], [status], [reply], [created_at], [update_at], [customer_id], [department_id], [employee_id]) VALUES (4, N'Bugs', N'WorkPlace', NULL, N'Waitting Confirm', 0, CAST(N'2020-06-07T19:19:44.480' AS DateTime), NULL, 5, 2, 1)
SET IDENTITY_INSERT [dbo].[tickets] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id], [name], [email], [email_verified_at], [password], [remember_token], [created_at], [updated_at], [avatar], [role_id], [settings]) VALUES (2, N'Tan Phat', N'TanPhat@gmail.com', NULL, N'123456', NULL, NULL, NULL, N'users/default.png', NULL, NULL)
INSERT [dbo].[users] ([id], [name], [email], [email_verified_at], [password], [remember_token], [created_at], [updated_at], [avatar], [role_id], [settings]) VALUES (6, N'Minh Thi', N'MinhThi@gmail.com', NULL, N'123456', NULL, NULL, NULL, N'users/default.png', NULL, NULL)
INSERT [dbo].[users] ([id], [name], [email], [email_verified_at], [password], [remember_token], [created_at], [updated_at], [avatar], [role_id], [settings]) VALUES (7, N'Minh Thi', N'MinhThi@gmail.com', NULL, N'123465', NULL, NULL, NULL, N'users/default.png', NULL, NULL)
SET IDENTITY_INSERT [dbo].[users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [data_types_name_unique]    Script Date: 6/9/2020 8:12:38 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [data_types_name_unique] ON [dbo].[data_types]
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [data_types_slug_unique]    Script Date: 6/9/2020 8:12:38 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [data_types_slug_unique] ON [dbo].[data_types]
(
	[slug] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [menus_name_unique]    Script Date: 6/9/2020 8:12:38 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [menus_name_unique] ON [dbo].[menus]
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [permission_role_permission_id_index]    Script Date: 6/9/2020 8:12:38 AM ******/
CREATE NONCLUSTERED INDEX [permission_role_permission_id_index] ON [dbo].[permission_role]
(
	[permission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [permission_role_role_id_index]    Script Date: 6/9/2020 8:12:38 AM ******/
CREATE NONCLUSTERED INDEX [permission_role_role_id_index] ON [dbo].[permission_role]
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [permissions_key_index]    Script Date: 6/9/2020 8:12:38 AM ******/
CREATE NONCLUSTERED INDEX [permissions_key_index] ON [dbo].[permissions]
(
	[key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [roles_name_unique]    Script Date: 6/9/2020 8:12:38 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [roles_name_unique] ON [dbo].[roles]
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [settings_key_unique]    Script Date: 6/9/2020 8:12:38 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [settings_key_unique] ON [dbo].[settings]
(
	[key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [translations_table_name_column_name_foreign_key_locale_unique]    Script Date: 6/9/2020 8:12:38 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [translations_table_name_column_name_foreign_key_locale_unique] ON [dbo].[translations]
(
	[table_name] ASC,
	[column_name] ASC,
	[foreign_key] ASC,
	[locale] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [user_roles_role_id_index]    Script Date: 6/9/2020 8:12:38 AM ******/
CREATE NONCLUSTERED INDEX [user_roles_role_id_index] ON [dbo].[user_roles]
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [user_roles_user_id_index]    Script Date: 6/9/2020 8:12:38 AM ******/
CREATE NONCLUSTERED INDEX [user_roles_user_id_index] ON [dbo].[user_roles]
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[data_rows] ADD  DEFAULT ('0') FOR [required]
GO
ALTER TABLE [dbo].[data_rows] ADD  DEFAULT ('1') FOR [browse]
GO
ALTER TABLE [dbo].[data_rows] ADD  DEFAULT ('1') FOR [read]
GO
ALTER TABLE [dbo].[data_rows] ADD  DEFAULT ('1') FOR [edit]
GO
ALTER TABLE [dbo].[data_rows] ADD  DEFAULT ('1') FOR [add]
GO
ALTER TABLE [dbo].[data_rows] ADD  DEFAULT ('1') FOR [delete]
GO
ALTER TABLE [dbo].[data_rows] ADD  DEFAULT ('1') FOR [order]
GO
ALTER TABLE [dbo].[data_types] ADD  DEFAULT ('0') FOR [generate_permissions]
GO
ALTER TABLE [dbo].[data_types] ADD  DEFAULT ('0') FOR [server_side]
GO
ALTER TABLE [dbo].[failed_jobs] ADD  DEFAULT (getdate()) FOR [failed_at]
GO
ALTER TABLE [dbo].[menu_items] ADD  DEFAULT ('_self') FOR [target]
GO
ALTER TABLE [dbo].[settings] ADD  DEFAULT ('1') FOR [order]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ('users/default.png') FOR [avatar]
GO
ALTER TABLE [dbo].[business]  WITH CHECK ADD FOREIGN KEY([department_id])
REFERENCES [dbo].[departments] ([id])
GO
ALTER TABLE [dbo].[data_rows]  WITH CHECK ADD  CONSTRAINT [data_rows_data_type_id_foreign] FOREIGN KEY([data_type_id])
REFERENCES [dbo].[data_types] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[data_rows] CHECK CONSTRAINT [data_rows_data_type_id_foreign]
GO
ALTER TABLE [dbo].[departments]  WITH CHECK ADD FOREIGN KEY([company_id])
REFERENCES [dbo].[companies] ([id])
GO
ALTER TABLE [dbo].[employee_task]  WITH CHECK ADD FOREIGN KEY([employee_id])
REFERENCES [dbo].[employees] ([id])
GO
ALTER TABLE [dbo].[employee_task]  WITH CHECK ADD FOREIGN KEY([task_id])
REFERENCES [dbo].[tasks] ([id])
GO
ALTER TABLE [dbo].[employees]  WITH CHECK ADD FOREIGN KEY([business_id])
REFERENCES [dbo].[business] ([id])
GO
ALTER TABLE [dbo].[menu_items]  WITH CHECK ADD  CONSTRAINT [menu_items_menu_id_foreign] FOREIGN KEY([menu_id])
REFERENCES [dbo].[menus] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[menu_items] CHECK CONSTRAINT [menu_items_menu_id_foreign]
GO
ALTER TABLE [dbo].[permission_role]  WITH CHECK ADD  CONSTRAINT [permission_role_permission_id_foreign] FOREIGN KEY([permission_id])
REFERENCES [dbo].[permissions] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[permission_role] CHECK CONSTRAINT [permission_role_permission_id_foreign]
GO
ALTER TABLE [dbo].[permission_role]  WITH CHECK ADD  CONSTRAINT [permission_role_role_id_foreign] FOREIGN KEY([role_id])
REFERENCES [dbo].[roles] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[permission_role] CHECK CONSTRAINT [permission_role_role_id_foreign]
GO
ALTER TABLE [dbo].[tickets]  WITH CHECK ADD FOREIGN KEY([customer_id])
REFERENCES [dbo].[customers] ([id])
GO
ALTER TABLE [dbo].[tickets]  WITH CHECK ADD FOREIGN KEY([department_id])
REFERENCES [dbo].[business] ([id])
GO
ALTER TABLE [dbo].[tickets]  WITH CHECK ADD FOREIGN KEY([employee_id])
REFERENCES [dbo].[employees] ([id])
GO
ALTER TABLE [dbo].[user_roles]  WITH CHECK ADD  CONSTRAINT [user_roles_role_id_foreign] FOREIGN KEY([role_id])
REFERENCES [dbo].[roles] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[user_roles] CHECK CONSTRAINT [user_roles_role_id_foreign]
GO
ALTER TABLE [dbo].[user_roles]  WITH CHECK ADD  CONSTRAINT [user_roles_user_id_foreign] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[user_roles] CHECK CONSTRAINT [user_roles_user_id_foreign]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [users_role_id_foreign] FOREIGN KEY([role_id])
REFERENCES [dbo].[roles] ([id])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [users_role_id_foreign]
GO
USE [master]
GO
ALTER DATABASE [laravel_duc] SET  READ_WRITE 
GO

USE [master]
GO
/****** Object:  Database [laravel_duc]    Script Date: 6/8/2020 5:45:09 PM ******/
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
/****** Object:  Table [dbo].[business]    Script Date: 6/8/2020 5:45:09 PM ******/
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
/****** Object:  Table [dbo].[companies]    Script Date: 6/8/2020 5:45:09 PM ******/
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
/****** Object:  Table [dbo].[customers]    Script Date: 6/8/2020 5:45:09 PM ******/
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
/****** Object:  Table [dbo].[data_rows]    Script Date: 6/8/2020 5:45:09 PM ******/
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
/****** Object:  Table [dbo].[data_types]    Script Date: 6/8/2020 5:45:09 PM ******/
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
/****** Object:  Table [dbo].[departments]    Script Date: 6/8/2020 5:45:09 PM ******/
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
/****** Object:  Table [dbo].[employee_task]    Script Date: 6/8/2020 5:45:09 PM ******/
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
/****** Object:  Table [dbo].[employees]    Script Date: 6/8/2020 5:45:09 PM ******/
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
/****** Object:  Table [dbo].[failed_jobs]    Script Date: 6/8/2020 5:45:09 PM ******/
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
/****** Object:  Table [dbo].[menu_items]    Script Date: 6/8/2020 5:45:09 PM ******/
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
/****** Object:  Table [dbo].[menus]    Script Date: 6/8/2020 5:45:09 PM ******/
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
/****** Object:  Table [dbo].[migrations]    Script Date: 6/8/2020 5:45:09 PM ******/
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
/****** Object:  Table [dbo].[permission_role]    Script Date: 6/8/2020 5:45:09 PM ******/
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
/****** Object:  Table [dbo].[permissions]    Script Date: 6/8/2020 5:45:09 PM ******/
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
/****** Object:  Table [dbo].[roles]    Script Date: 6/8/2020 5:45:09 PM ******/
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
/****** Object:  Table [dbo].[settings]    Script Date: 6/8/2020 5:45:09 PM ******/
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
/****** Object:  Table [dbo].[tasks]    Script Date: 6/8/2020 5:45:09 PM ******/
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
/****** Object:  Table [dbo].[tbl_ad_ticket]    Script Date: 6/8/2020 5:45:09 PM ******/
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
/****** Object:  Table [dbo].[tbl_admin]    Script Date: 6/8/2020 5:45:09 PM ******/
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
/****** Object:  Table [dbo].[tickets]    Script Date: 6/8/2020 5:45:09 PM ******/
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
/****** Object:  Table [dbo].[translations]    Script Date: 6/8/2020 5:45:09 PM ******/
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
/****** Object:  Table [dbo].[user_roles]    Script Date: 6/8/2020 5:45:09 PM ******/
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
/****** Object:  Table [dbo].[users]    Script Date: 6/8/2020 5:45:09 PM ******/
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
SET ANSI_PADDING ON
GO
/****** Object:  Index [data_types_name_unique]    Script Date: 6/8/2020 5:45:09 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [data_types_name_unique] ON [dbo].[data_types]
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [data_types_slug_unique]    Script Date: 6/8/2020 5:45:09 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [data_types_slug_unique] ON [dbo].[data_types]
(
	[slug] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [menus_name_unique]    Script Date: 6/8/2020 5:45:09 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [menus_name_unique] ON [dbo].[menus]
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [permission_role_permission_id_index]    Script Date: 6/8/2020 5:45:09 PM ******/
CREATE NONCLUSTERED INDEX [permission_role_permission_id_index] ON [dbo].[permission_role]
(
	[permission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [permission_role_role_id_index]    Script Date: 6/8/2020 5:45:09 PM ******/
CREATE NONCLUSTERED INDEX [permission_role_role_id_index] ON [dbo].[permission_role]
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [permissions_key_index]    Script Date: 6/8/2020 5:45:09 PM ******/
CREATE NONCLUSTERED INDEX [permissions_key_index] ON [dbo].[permissions]
(
	[key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [roles_name_unique]    Script Date: 6/8/2020 5:45:09 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [roles_name_unique] ON [dbo].[roles]
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [settings_key_unique]    Script Date: 6/8/2020 5:45:09 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [settings_key_unique] ON [dbo].[settings]
(
	[key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [translations_table_name_column_name_foreign_key_locale_unique]    Script Date: 6/8/2020 5:45:09 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [translations_table_name_column_name_foreign_key_locale_unique] ON [dbo].[translations]
(
	[table_name] ASC,
	[column_name] ASC,
	[foreign_key] ASC,
	[locale] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [user_roles_role_id_index]    Script Date: 6/8/2020 5:45:09 PM ******/
CREATE NONCLUSTERED INDEX [user_roles_role_id_index] ON [dbo].[user_roles]
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [user_roles_user_id_index]    Script Date: 6/8/2020 5:45:09 PM ******/
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

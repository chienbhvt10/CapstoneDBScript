USE [master]
GO
/****** Object:  Database [CapstoneData]    Script Date: 4/20/2023 3:53:41 PM ******/
CREATE DATABASE [CapstoneData]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CapstoneData', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CapstoneData.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CapstoneData_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CapstoneData_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CapstoneData] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CapstoneData].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CapstoneData] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CapstoneData] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CapstoneData] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CapstoneData] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CapstoneData] SET ARITHABORT OFF 
GO
ALTER DATABASE [CapstoneData] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CapstoneData] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CapstoneData] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CapstoneData] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CapstoneData] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CapstoneData] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CapstoneData] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CapstoneData] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CapstoneData] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CapstoneData] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CapstoneData] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CapstoneData] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CapstoneData] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CapstoneData] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CapstoneData] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CapstoneData] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CapstoneData] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CapstoneData] SET RECOVERY FULL 
GO
ALTER DATABASE [CapstoneData] SET  MULTI_USER 
GO
ALTER DATABASE [CapstoneData] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CapstoneData] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CapstoneData] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CapstoneData] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CapstoneData] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CapstoneData] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'CapstoneData', N'ON'
GO
ALTER DATABASE [CapstoneData] SET QUERY_STORE = OFF
GO
USE [CapstoneData]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 4/20/2023 3:53:42 PM ******/
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
/****** Object:  Table [dbo].[AreaSlotWeight]    Script Date: 4/20/2023 3:53:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AreaSlotWeight](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SlotId] [int] NULL,
	[AreaSlotId] [int] NULL,
	[AreaSlotWeight] [int] NULL,
	[DepartmentHeadId] [int] NULL,
	[SemesterId] [int] NULL,
 CONSTRAINT [PK_AreaSlotWeight] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Building]    Script Date: 4/20/2023 3:53:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Building](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[ShortName] [nvarchar](50) NULL,
	[DepartmentHeadId] [int] NULL,
	[SemesterId] [int] NULL,
 CONSTRAINT [PK_Building] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Classes]    Script Date: 4/20/2023 3:53:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Classes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[DepartmentHeadId] [int] NULL,
	[SemesterId] [int] NULL,
 CONSTRAINT [PK_Classes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DayOfWeeks]    Script Date: 4/20/2023 3:53:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DayOfWeeks](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_DayOfWeek] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 4/20/2023 3:53:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Department] [nvarchar](50) NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Distance]    Script Date: 4/20/2023 3:53:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Distance](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Building1Id] [int] NULL,
	[Building2Id] [int] NULL,
	[DistanceBetween] [int] NULL,
	[DepartmentHeadId] [int] NULL,
	[SemesterId] [int] NULL,
 CONSTRAINT [PK_Distance] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExecuteInfo]    Script Date: 4/20/2023 3:53:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExecuteInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ExecuteId] [nvarchar](max) NULL,
	[ExecuteTime] [datetime] NULL,
	[SemesterId] [int] NULL,
	[DepartmentHeadId] [int] NULL,
 CONSTRAINT [PK_ExecuteInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lecturer]    Script Date: 4/20/2023 3:53:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecturer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[ShortName] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Quota] [int] NULL,
	[MinQuota] [int] NULL,
	[DepartmentHeadId] [int] NULL,
	[SemesterId] [int] NULL,
 CONSTRAINT [PK_Lecturer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 4/20/2023 3:53:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[DepartmentHeadId] [int] NULL,
	[SemesterId] [int] NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SemesterInfo]    Script Date: 4/20/2023 3:53:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SemesterInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsNow] [bit] NULL,
	[Semester] [nvarchar](50) NULL,
	[Year] [int] NULL,
	[DepartmentHeadId] [int] NULL,
 CONSTRAINT [PK_Semester] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SlotPerDay]    Script Date: 4/20/2023 3:53:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SlotPerDay](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NumberOfSlots] [int] NULL,
	[SemesterId] [int] NULL,
 CONSTRAINT [PK_SlotDay] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SlotPreferenceLevel]    Script Date: 4/20/2023 3:53:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SlotPreferenceLevel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LecturerId] [int] NULL,
	[SlotId] [int] NULL,
	[PreferenceLevel] [int] NULL,
	[DepartmentHeadId] [int] NULL,
	[SemesterId] [int] NULL,
 CONSTRAINT [PK_SlotPreferenceLevel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubjectPreferenceLevel]    Script Date: 4/20/2023 3:53:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubjectPreferenceLevel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LecturerId] [int] NULL,
	[SubjectId] [int] NULL,
	[PreferenceLevel] [int] NULL,
	[DepartmentHeadId] [int] NULL,
	[SemesterId] [int] NULL,
 CONSTRAINT [PK_SubjectPreferenceLevel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subjects]    Script Date: 4/20/2023 3:53:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subjects](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[DepartmentHeadId] [int] NULL,
	[SemesterId] [int] NULL,
 CONSTRAINT [PK_Subjects] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaskAssign]    Script Date: 4/20/2023 3:53:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskAssign](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LecturerId] [int] NULL,
	[ClassId] [int] NULL,
	[SubjectId] [int] NULL,
	[TimeSlotId] [int] NULL,
	[Room1Id] [int] NULL,
	[PreAssign] [bit] NULL,
	[Status] [bit] NULL,
	[DepartmentHeadId] [int] NULL,
	[SemesterId] [int] NULL,
 CONSTRAINT [PK_TaskAssign] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeSlot]    Script Date: 4/20/2023 3:53:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSlot](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[AMorPM] [int] NULL,
	[DepartmentHeadId] [int] NULL,
	[SemesterId] [int] NULL,
 CONSTRAINT [PK_TimeSlot] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeSLotConflict]    Script Date: 4/20/2023 3:53:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSLotConflict](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SlotId] [int] NULL,
	[ConflictSlotId] [int] NULL,
	[Conflict] [bit] NULL,
	[DepartmentHeadId] [int] NULL,
	[SemesterId] [int] NULL,
 CONSTRAINT [PK_TimeSLotConflict] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeSlotSegment]    Script Date: 4/20/2023 3:53:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSlotSegment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SlotId] [int] NULL,
	[DayOfWeek] [int] NULL,
	[Segment] [int] NULL,
	[DepartmentHeadId] [int] NULL,
	[SemesterId] [int] NULL,
 CONSTRAINT [PK_TimeSlotSegment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 4/20/2023 3:53:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[DepartmentId] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_Distance_Building1Id]    Script Date: 4/20/2023 3:53:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_Distance_Building1Id] ON [dbo].[Distance]
(
	[Building1Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Distance_Building2Id]    Script Date: 4/20/2023 3:53:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_Distance_Building2Id] ON [dbo].[Distance]
(
	[Building2Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SlotPreferenceLevel_LecturerId]    Script Date: 4/20/2023 3:53:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_SlotPreferenceLevel_LecturerId] ON [dbo].[SlotPreferenceLevel]
(
	[LecturerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SlotPreferenceLevel_SemesterId]    Script Date: 4/20/2023 3:53:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_SlotPreferenceLevel_SemesterId] ON [dbo].[SlotPreferenceLevel]
(
	[SemesterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SubjectPreferenceLevel_LecturerId]    Script Date: 4/20/2023 3:53:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_SubjectPreferenceLevel_LecturerId] ON [dbo].[SubjectPreferenceLevel]
(
	[LecturerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SubjectPreferenceLevel_SemesterId]    Script Date: 4/20/2023 3:53:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_SubjectPreferenceLevel_SemesterId] ON [dbo].[SubjectPreferenceLevel]
(
	[SemesterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SubjectPreferenceLevel_SubjectId]    Script Date: 4/20/2023 3:53:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_SubjectPreferenceLevel_SubjectId] ON [dbo].[SubjectPreferenceLevel]
(
	[SubjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AreaSlotWeight]  WITH CHECK ADD  CONSTRAINT [FK_AreaSlotWeight_TimeSlot] FOREIGN KEY([SlotId])
REFERENCES [dbo].[TimeSlot] ([Id])
GO
ALTER TABLE [dbo].[AreaSlotWeight] CHECK CONSTRAINT [FK_AreaSlotWeight_TimeSlot]
GO
ALTER TABLE [dbo].[AreaSlotWeight]  WITH CHECK ADD  CONSTRAINT [FK_AreaSlotWeight_TimeSlot1] FOREIGN KEY([AreaSlotId])
REFERENCES [dbo].[TimeSlot] ([Id])
GO
ALTER TABLE [dbo].[AreaSlotWeight] CHECK CONSTRAINT [FK_AreaSlotWeight_TimeSlot1]
GO
ALTER TABLE [dbo].[Building]  WITH CHECK ADD  CONSTRAINT [FK_Building_SemesterInfo] FOREIGN KEY([SemesterId])
REFERENCES [dbo].[SemesterInfo] ([Id])
GO
ALTER TABLE [dbo].[Building] CHECK CONSTRAINT [FK_Building_SemesterInfo]
GO
ALTER TABLE [dbo].[Building]  WITH CHECK ADD  CONSTRAINT [FK_Building_User] FOREIGN KEY([DepartmentHeadId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Building] CHECK CONSTRAINT [FK_Building_User]
GO
ALTER TABLE [dbo].[Distance]  WITH CHECK ADD  CONSTRAINT [FK_Distance_Building_Building1Id] FOREIGN KEY([Building1Id])
REFERENCES [dbo].[Building] ([Id])
GO
ALTER TABLE [dbo].[Distance] CHECK CONSTRAINT [FK_Distance_Building_Building1Id]
GO
ALTER TABLE [dbo].[Distance]  WITH CHECK ADD  CONSTRAINT [FK_Distance_Building_Building2Id] FOREIGN KEY([Building2Id])
REFERENCES [dbo].[Building] ([Id])
GO
ALTER TABLE [dbo].[Distance] CHECK CONSTRAINT [FK_Distance_Building_Building2Id]
GO
ALTER TABLE [dbo].[ExecuteInfo]  WITH CHECK ADD  CONSTRAINT [FK_ExecuteInfo_User] FOREIGN KEY([DepartmentHeadId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[ExecuteInfo] CHECK CONSTRAINT [FK_ExecuteInfo_User]
GO
ALTER TABLE [dbo].[Lecturer]  WITH CHECK ADD  CONSTRAINT [FK_Lecturer_User] FOREIGN KEY([DepartmentHeadId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Lecturer] CHECK CONSTRAINT [FK_Lecturer_User]
GO
ALTER TABLE [dbo].[SemesterInfo]  WITH CHECK ADD  CONSTRAINT [FK_SemesterInfo_User] FOREIGN KEY([DepartmentHeadId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[SemesterInfo] CHECK CONSTRAINT [FK_SemesterInfo_User]
GO
ALTER TABLE [dbo].[SlotPreferenceLevel]  WITH CHECK ADD  CONSTRAINT [FK_SlotPreferenceLevel_Lecturer_LecturerId] FOREIGN KEY([LecturerId])
REFERENCES [dbo].[Lecturer] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SlotPreferenceLevel] CHECK CONSTRAINT [FK_SlotPreferenceLevel_Lecturer_LecturerId]
GO
ALTER TABLE [dbo].[SlotPreferenceLevel]  WITH CHECK ADD  CONSTRAINT [FK_SlotPreferenceLevel_Semester_SemesterId] FOREIGN KEY([SemesterId])
REFERENCES [dbo].[SemesterInfo] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SlotPreferenceLevel] CHECK CONSTRAINT [FK_SlotPreferenceLevel_Semester_SemesterId]
GO
ALTER TABLE [dbo].[SlotPreferenceLevel]  WITH CHECK ADD  CONSTRAINT [FK_SlotPreferenceLevel_TimeSlot] FOREIGN KEY([SlotId])
REFERENCES [dbo].[TimeSlot] ([Id])
GO
ALTER TABLE [dbo].[SlotPreferenceLevel] CHECK CONSTRAINT [FK_SlotPreferenceLevel_TimeSlot]
GO
ALTER TABLE [dbo].[SubjectPreferenceLevel]  WITH CHECK ADD  CONSTRAINT [FK_SubjectPreferenceLevel_Lecturer_LecturerId] FOREIGN KEY([LecturerId])
REFERENCES [dbo].[Lecturer] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SubjectPreferenceLevel] CHECK CONSTRAINT [FK_SubjectPreferenceLevel_Lecturer_LecturerId]
GO
ALTER TABLE [dbo].[SubjectPreferenceLevel]  WITH CHECK ADD  CONSTRAINT [FK_SubjectPreferenceLevel_Semester_SemesterId] FOREIGN KEY([SemesterId])
REFERENCES [dbo].[SemesterInfo] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SubjectPreferenceLevel] CHECK CONSTRAINT [FK_SubjectPreferenceLevel_Semester_SemesterId]
GO
ALTER TABLE [dbo].[SubjectPreferenceLevel]  WITH CHECK ADD  CONSTRAINT [FK_SubjectPreferenceLevel_Subjects_SubjectId] FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subjects] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SubjectPreferenceLevel] CHECK CONSTRAINT [FK_SubjectPreferenceLevel_Subjects_SubjectId]
GO
ALTER TABLE [dbo].[Subjects]  WITH CHECK ADD  CONSTRAINT [FK_Subjects_Semester] FOREIGN KEY([SemesterId])
REFERENCES [dbo].[SemesterInfo] ([Id])
GO
ALTER TABLE [dbo].[Subjects] CHECK CONSTRAINT [FK_Subjects_Semester]
GO
ALTER TABLE [dbo].[TaskAssign]  WITH CHECK ADD  CONSTRAINT [FK_TaskAssign_Classes] FOREIGN KEY([ClassId])
REFERENCES [dbo].[Classes] ([Id])
GO
ALTER TABLE [dbo].[TaskAssign] CHECK CONSTRAINT [FK_TaskAssign_Classes]
GO
ALTER TABLE [dbo].[TaskAssign]  WITH CHECK ADD  CONSTRAINT [FK_TaskAssign_Lecturer] FOREIGN KEY([LecturerId])
REFERENCES [dbo].[Lecturer] ([Id])
GO
ALTER TABLE [dbo].[TaskAssign] CHECK CONSTRAINT [FK_TaskAssign_Lecturer]
GO
ALTER TABLE [dbo].[TaskAssign]  WITH CHECK ADD  CONSTRAINT [FK_TaskAssign_Room] FOREIGN KEY([Room1Id])
REFERENCES [dbo].[Room] ([Id])
GO
ALTER TABLE [dbo].[TaskAssign] CHECK CONSTRAINT [FK_TaskAssign_Room]
GO
ALTER TABLE [dbo].[TaskAssign]  WITH CHECK ADD  CONSTRAINT [FK_TaskAssign_Semester] FOREIGN KEY([SemesterId])
REFERENCES [dbo].[SemesterInfo] ([Id])
GO
ALTER TABLE [dbo].[TaskAssign] CHECK CONSTRAINT [FK_TaskAssign_Semester]
GO
ALTER TABLE [dbo].[TaskAssign]  WITH CHECK ADD  CONSTRAINT [FK_TaskAssign_Subjects] FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subjects] ([Id])
GO
ALTER TABLE [dbo].[TaskAssign] CHECK CONSTRAINT [FK_TaskAssign_Subjects]
GO
ALTER TABLE [dbo].[TaskAssign]  WITH CHECK ADD  CONSTRAINT [FK_TaskAssign_TimeSlot] FOREIGN KEY([TimeSlotId])
REFERENCES [dbo].[TimeSlot] ([Id])
GO
ALTER TABLE [dbo].[TaskAssign] CHECK CONSTRAINT [FK_TaskAssign_TimeSlot]
GO
ALTER TABLE [dbo].[TaskAssign]  WITH CHECK ADD  CONSTRAINT [FK_TaskAssign_User] FOREIGN KEY([DepartmentHeadId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[TaskAssign] CHECK CONSTRAINT [FK_TaskAssign_User]
GO
ALTER TABLE [dbo].[TimeSlot]  WITH CHECK ADD  CONSTRAINT [FK_TimeSlot_User] FOREIGN KEY([DepartmentHeadId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[TimeSlot] CHECK CONSTRAINT [FK_TimeSlot_User]
GO
ALTER TABLE [dbo].[TimeSLotConflict]  WITH CHECK ADD  CONSTRAINT [FK_TimeSLotConflict_TimeSlot] FOREIGN KEY([ConflictSlotId])
REFERENCES [dbo].[TimeSlot] ([Id])
GO
ALTER TABLE [dbo].[TimeSLotConflict] CHECK CONSTRAINT [FK_TimeSLotConflict_TimeSlot]
GO
ALTER TABLE [dbo].[TimeSLotConflict]  WITH CHECK ADD  CONSTRAINT [FK_TimeSLotConflict_TimeSlot1] FOREIGN KEY([SlotId])
REFERENCES [dbo].[TimeSlot] ([Id])
GO
ALTER TABLE [dbo].[TimeSLotConflict] CHECK CONSTRAINT [FK_TimeSLotConflict_TimeSlot1]
GO
ALTER TABLE [dbo].[TimeSlotSegment]  WITH CHECK ADD  CONSTRAINT [FK_TimeSlotSegment_DayOfWeek] FOREIGN KEY([DayOfWeek])
REFERENCES [dbo].[DayOfWeeks] ([Id])
GO
ALTER TABLE [dbo].[TimeSlotSegment] CHECK CONSTRAINT [FK_TimeSlotSegment_DayOfWeek]
GO
ALTER TABLE [dbo].[TimeSlotSegment]  WITH CHECK ADD  CONSTRAINT [FK_TimeSlotSegment_TimeSlot1] FOREIGN KEY([SlotId])
REFERENCES [dbo].[TimeSlot] ([Id])
GO
ALTER TABLE [dbo].[TimeSlotSegment] CHECK CONSTRAINT [FK_TimeSlotSegment_TimeSlot1]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Department] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Department]
GO
USE [master]
GO
ALTER DATABASE [CapstoneData] SET  READ_WRITE 
GO

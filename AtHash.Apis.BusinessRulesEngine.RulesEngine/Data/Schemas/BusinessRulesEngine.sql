USE [BusinessRulesEngine]
GO
/****** Object:  Table [dbo].[Workflow]    Script Date: 2026/02/26 01:08:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Workflow]') AND type in (N'U'))
DROP TABLE [dbo].[Workflow]
GO
/****** Object:  Table [dbo].[RulesetCombination]    Script Date: 2026/02/26 01:08:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RulesetCombination]') AND type in (N'U'))
DROP TABLE [dbo].[RulesetCombination]
GO
/****** Object:  Table [dbo].[Ruleset]    Script Date: 2026/02/26 01:08:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ruleset]') AND type in (N'U'))
DROP TABLE [dbo].[Ruleset]
GO
/****** Object:  Table [dbo].[RuleExpressionParameterDataType]    Script Date: 2026/02/26 01:08:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RuleExpressionParameterDataType]') AND type in (N'U'))
DROP TABLE [dbo].[RuleExpressionParameterDataType]
GO
/****** Object:  Table [dbo].[RuleExpressionParameter]    Script Date: 2026/02/26 01:08:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RuleExpressionParameter]') AND type in (N'U'))
DROP TABLE [dbo].[RuleExpressionParameter]
GO
/****** Object:  Table [dbo].[RuleExpressionOperator]    Script Date: 2026/02/26 01:08:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RuleExpressionOperator]') AND type in (N'U'))
DROP TABLE [dbo].[RuleExpressionOperator]
GO
/****** Object:  Table [dbo].[RuleExpressionCombination]    Script Date: 2026/02/26 01:08:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RuleExpressionCombination]') AND type in (N'U'))
DROP TABLE [dbo].[RuleExpressionCombination]
GO
/****** Object:  Table [dbo].[RuleExpression]    Script Date: 2026/02/26 01:08:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RuleExpression]') AND type in (N'U'))
DROP TABLE [dbo].[RuleExpression]
GO
/****** Object:  Table [dbo].[RuleExecutionResult]    Script Date: 2026/02/26 01:08:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RuleExecutionResult]') AND type in (N'U'))
DROP TABLE [dbo].[RuleExecutionResult]
GO
/****** Object:  Table [dbo].[RuleCombination]    Script Date: 2026/02/26 01:08:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RuleCombination]') AND type in (N'U'))
DROP TABLE [dbo].[RuleCombination]
GO
/****** Object:  Table [dbo].[Rule]    Script Date: 2026/02/26 01:08:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Rule]') AND type in (N'U'))
DROP TABLE [dbo].[Rule]
GO
/****** Object:  Table [dbo].[CombinerType]    Script Date: 2026/02/26 01:08:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CombinerType]') AND type in (N'U'))
DROP TABLE [dbo].[CombinerType]
GO
USE [master]
GO
/****** Object:  Database [BusinessRulesEngine]    Script Date: 2026/02/26 01:08:17 ******/
DROP DATABASE [BusinessRulesEngine]
GO
/****** Object:  Database [BusinessRulesEngine]    Script Date: 2026/02/26 01:08:17 ******/
CREATE DATABASE [BusinessRulesEngine]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BusinessRulesEngine', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\BusinessRulesEngine.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BusinessRulesEngine_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\BusinessRulesEngine_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [BusinessRulesEngine] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BusinessRulesEngine].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BusinessRulesEngine] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BusinessRulesEngine] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BusinessRulesEngine] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BusinessRulesEngine] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BusinessRulesEngine] SET ARITHABORT OFF 
GO
ALTER DATABASE [BusinessRulesEngine] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BusinessRulesEngine] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BusinessRulesEngine] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BusinessRulesEngine] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BusinessRulesEngine] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BusinessRulesEngine] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BusinessRulesEngine] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BusinessRulesEngine] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BusinessRulesEngine] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BusinessRulesEngine] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BusinessRulesEngine] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BusinessRulesEngine] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BusinessRulesEngine] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BusinessRulesEngine] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BusinessRulesEngine] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BusinessRulesEngine] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BusinessRulesEngine] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BusinessRulesEngine] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BusinessRulesEngine] SET  MULTI_USER 
GO
ALTER DATABASE [BusinessRulesEngine] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BusinessRulesEngine] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BusinessRulesEngine] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BusinessRulesEngine] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BusinessRulesEngine] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BusinessRulesEngine] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BusinessRulesEngine] SET QUERY_STORE = ON
GO
ALTER DATABASE [BusinessRulesEngine] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [BusinessRulesEngine]
GO
/****** Object:  Table [dbo].[CombinerType]    Script Date: 2026/02/26 01:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CombinerType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
 CONSTRAINT [PK_CombinerType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rule]    Script Date: 2026/02/26 01:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rule](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[RulesetId] [int] NOT NULL,
 CONSTRAINT [PK_Rule] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RuleCombination]    Script Date: 2026/02/26 01:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RuleCombination](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[OrderSequence] [int] NOT NULL,
	[CombinerTypeId] [int] NOT NULL,
	[PreviousRuleId] [int] NOT NULL,
	[NextRuleId] [int] NOT NULL,
	[IsEnabled] [bit] NOT NULL,
 CONSTRAINT [PK_RuleCombination] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RuleExecutionResult]    Script Date: 2026/02/26 01:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RuleExecutionResult](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderSequence] [int] NOT NULL,
	[WorkflowId] [int] NOT NULL,
	[RulesetId] [int] NOT NULL,
	[RuleId] [int] NOT NULL,
	[RuleExpressionId] [int] NOT NULL,
	[RuleExpressionParameterId] [int] NOT NULL,
	[Message] [nvarchar](50) NULL,
	[IsEnabled] [bit] NOT NULL,
 CONSTRAINT [PK_RuleExecutionResult] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RuleExpression]    Script Date: 2026/02/26 01:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RuleExpression](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[RuleId] [int] NOT NULL,
	[RuleExpressionParameterId] [int] NOT NULL,
	[RuleExpressionOperatorId] [int] NOT NULL,
	[RuleExpressionParameterValue] [nvarchar](50) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_RuleExpression] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RuleExpressionCombination]    Script Date: 2026/02/26 01:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RuleExpressionCombination](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[OrderSequence] [int] NOT NULL,
	[CombinerTypeId] [int] NOT NULL,
	[PreviousRuleExpressionId] [int] NOT NULL,
	[NextRuleExpressionId] [int] NOT NULL,
	[IsEnabled] [bit] NOT NULL,
 CONSTRAINT [PK_RuleExpressionCombination] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RuleExpressionOperator]    Script Date: 2026/02/26 01:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RuleExpressionOperator](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Symbol] [nvarchar](50) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_RuleExpressionOperator] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RuleExpressionParameter]    Script Date: 2026/02/26 01:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RuleExpressionParameter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Value] [nvarchar](50) NOT NULL,
	[RuleExpressionParameterDataTypeId] [int] NOT NULL,
	[RuleExpressionId] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_RuleExpressionParameter] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RuleExpressionParameterDataType]    Script Date: 2026/02/26 01:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RuleExpressionParameterDataType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Alias] [varchar](50) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
 CONSTRAINT [PK_RuleExpressionParameterDataType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ruleset]    Script Date: 2026/02/26 01:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ruleset](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[WorkflowId] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Ruleset] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RulesetCombination]    Script Date: 2026/02/26 01:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RulesetCombination](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[OrderSequence] [int] NOT NULL,
	[CombinerTypeId] [int] NOT NULL,
	[PreviousRulesetId] [int] NOT NULL,
	[NextRulesetId] [int] NOT NULL,
	[IsEnabled] [bit] NOT NULL,
 CONSTRAINT [PK_RulesetCombination] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Workflow]    Script Date: 2026/02/26 01:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Workflow](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
 CONSTRAINT [PK_Workflow] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [BusinessRulesEngine] SET  READ_WRITE 
GO

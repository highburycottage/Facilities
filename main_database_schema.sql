USE [master]
GO
/****** Object:  Database [FMHelpdeskSQLV4]    Script Date: 12/01/2014 11:42:49 ******/
CREATE DATABASE [FMHelpdeskSQLV4] ON  PRIMARY 
( NAME = N'FMHelpdeskSQLV2_dat', FILENAME = N'E:\databases\FMHelpdeskSQLV4.mdf' , SIZE = 22720KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'FMHelpdeskSQLV2_log', FILENAME = N'E:\databases\FMHelpdeskSQLV4_log.ldf' , SIZE = 9216KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [FMHelpdeskSQLV4] SET COMPATIBILITY_LEVEL = 90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FMHelpdeskSQLV4].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FMHelpdeskSQLV4] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [FMHelpdeskSQLV4] SET ANSI_NULLS OFF
GO
ALTER DATABASE [FMHelpdeskSQLV4] SET ANSI_PADDING OFF
GO
ALTER DATABASE [FMHelpdeskSQLV4] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [FMHelpdeskSQLV4] SET ARITHABORT OFF
GO
ALTER DATABASE [FMHelpdeskSQLV4] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [FMHelpdeskSQLV4] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [FMHelpdeskSQLV4] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [FMHelpdeskSQLV4] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [FMHelpdeskSQLV4] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [FMHelpdeskSQLV4] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [FMHelpdeskSQLV4] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [FMHelpdeskSQLV4] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [FMHelpdeskSQLV4] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [FMHelpdeskSQLV4] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [FMHelpdeskSQLV4] SET  DISABLE_BROKER
GO
ALTER DATABASE [FMHelpdeskSQLV4] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [FMHelpdeskSQLV4] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [FMHelpdeskSQLV4] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [FMHelpdeskSQLV4] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [FMHelpdeskSQLV4] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [FMHelpdeskSQLV4] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [FMHelpdeskSQLV4] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [FMHelpdeskSQLV4] SET  READ_WRITE
GO
ALTER DATABASE [FMHelpdeskSQLV4] SET RECOVERY FULL
GO
ALTER DATABASE [FMHelpdeskSQLV4] SET  MULTI_USER
GO
ALTER DATABASE [FMHelpdeskSQLV4] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [FMHelpdeskSQLV4] SET DB_CHAINING OFF
GO
USE [FMHelpdeskSQLV4]
GO
/****** Object:  User [MARSHALL\MGSMXH01]    Script Date: 12/01/2014 11:42:49 ******/
CREATE USER [MARSHALL\MGSMXH01] FOR LOGIN [MARSHALL\MGSMXH01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [marshall\mgsjxh01]    Script Date: 12/01/2014 11:42:49 ******/
CREATE USER [marshall\mgsjxh01] FOR LOGIN [MARSHALL\MGSJXH01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [MARSHALL\mgsaxf01]    Script Date: 12/01/2014 11:42:49 ******/
CREATE USER [MARSHALL\mgsaxf01] FOR LOGIN [MARSHALL\MGSAXF01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [marshall\mbcfxm01]    Script Date: 12/01/2014 11:42:49 ******/
CREATE USER [marshall\mbcfxm01] FOR LOGIN [MARSHALL\mbcfxm01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[callOutFee]    Script Date: 12/01/2014 11:42:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[callOutFee](
	[callOutFee] [float] NOT NULL,
 CONSTRAINT [aaaaacallOutFee_PK] PRIMARY KEY NONCLUSTERED 
(
	[callOutFee] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutFee', @level2type=N'COLUMN',@level2name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutFee', @level2type=N'COLUMN',@level2name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutFee', @level2type=N'COLUMN',@level2name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutFee', @level2type=N'COLUMN',@level2name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutFee', @level2type=N'COLUMN',@level2name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutFee', @level2type=N'COLUMN',@level2name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutFee', @level2type=N'COLUMN',@level2name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutFee', @level2type=N'COLUMN',@level2name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutFee', @level2type=N'COLUMN',@level2name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutFee', @level2type=N'COLUMN',@level2name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutFee', @level2type=N'COLUMN',@level2name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutFee', @level2type=N'COLUMN',@level2name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'callOutFee' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutFee', @level2type=N'COLUMN',@level2name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutFee', @level2type=N'COLUMN',@level2name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutFee', @level2type=N'COLUMN',@level2name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutFee', @level2type=N'COLUMN',@level2name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutFee', @level2type=N'COLUMN',@level2name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'callOutFee' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutFee', @level2type=N'COLUMN',@level2name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'callOutFee' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutFee', @level2type=N'COLUMN',@level2name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutFee', @level2type=N'COLUMN',@level2name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutFee', @level2type=N'COLUMN',@level2name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'AlternateBackShade', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'AlternateBackThemeColorIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'AlternateBackTint', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'BackShade', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'BackTint', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetForeThemeColorIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetGridlinesThemeColorIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'30/09/2010 09:30:26' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'DisplayViewsOnSharePointSite', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterOnLoad', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'HideNewField', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'30/09/2010 09:31:45' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'callOutFee' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'ThemeFontIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutFee'
GO
/****** Object:  Table [dbo].[callOutRate]    Script Date: 12/01/2014 11:42:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[callOutRate](
	[rate] [int] NOT NULL,
 CONSTRAINT [aaaaacallOutRate_PK] PRIMARY KEY NONCLUSTERED 
(
	[rate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutRate', @level2type=N'COLUMN',@level2name=N'rate'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutRate', @level2type=N'COLUMN',@level2name=N'rate'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutRate', @level2type=N'COLUMN',@level2name=N'rate'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutRate', @level2type=N'COLUMN',@level2name=N'rate'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutRate', @level2type=N'COLUMN',@level2name=N'rate'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutRate', @level2type=N'COLUMN',@level2name=N'rate'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutRate', @level2type=N'COLUMN',@level2name=N'rate'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutRate', @level2type=N'COLUMN',@level2name=N'rate'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutRate', @level2type=N'COLUMN',@level2name=N'rate'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutRate', @level2type=N'COLUMN',@level2name=N'rate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutRate', @level2type=N'COLUMN',@level2name=N'rate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutRate', @level2type=N'COLUMN',@level2name=N'rate'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'rate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutRate', @level2type=N'COLUMN',@level2name=N'rate'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutRate', @level2type=N'COLUMN',@level2name=N'rate'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutRate', @level2type=N'COLUMN',@level2name=N'rate'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutRate', @level2type=N'COLUMN',@level2name=N'rate'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutRate', @level2type=N'COLUMN',@level2name=N'rate'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'rate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutRate', @level2type=N'COLUMN',@level2name=N'rate'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'callOutRate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutRate', @level2type=N'COLUMN',@level2name=N'rate'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutRate', @level2type=N'COLUMN',@level2name=N'rate'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutRate', @level2type=N'COLUMN',@level2name=N'rate'
GO
EXEC sys.sp_addextendedproperty @name=N'AlternateBackShade', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutRate'
GO
EXEC sys.sp_addextendedproperty @name=N'AlternateBackThemeColorIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutRate'
GO
EXEC sys.sp_addextendedproperty @name=N'AlternateBackTint', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutRate'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutRate'
GO
EXEC sys.sp_addextendedproperty @name=N'BackShade', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutRate'
GO
EXEC sys.sp_addextendedproperty @name=N'BackTint', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutRate'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetForeThemeColorIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutRate'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetGridlinesThemeColorIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutRate'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'07/10/2010 08:49:29' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutRate'
GO
EXEC sys.sp_addextendedproperty @name=N'DisplayViewsOnSharePointSite', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutRate'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterOnLoad', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutRate'
GO
EXEC sys.sp_addextendedproperty @name=N'HideNewField', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutRate'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'07/10/2010 08:50:02' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutRate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutRate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutRate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutRate'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'callOutRate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutRate'
GO
EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutRate'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'9' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutRate'
GO
EXEC sys.sp_addextendedproperty @name=N'ThemeFontIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutRate'
GO
EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutRate'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'callOutRate'
GO
/****** Object:  Table [dbo].[Current Status]    Script Date: 12/01/2014 11:42:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Current Status](
	[currentStatus] [nvarchar](50) NOT NULL,
 CONSTRAINT [aaaaaCurrent Status_PK] PRIMARY KEY NONCLUSTERED 
(
	[currentStatus] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Current Status', @level2type=N'COLUMN',@level2name=N'currentStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Current Status', @level2type=N'COLUMN',@level2name=N'currentStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Current Status', @level2type=N'COLUMN',@level2name=N'currentStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Current Status', @level2type=N'COLUMN',@level2name=N'currentStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Current Status', @level2type=N'COLUMN',@level2name=N'currentStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Current Status', @level2type=N'COLUMN',@level2name=N'currentStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Current Status', @level2type=N'COLUMN',@level2name=N'currentStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Current Status', @level2type=N'COLUMN',@level2name=N'currentStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Current Status', @level2type=N'COLUMN',@level2name=N'currentStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Current Status', @level2type=N'COLUMN',@level2name=N'currentStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Current Status', @level2type=N'COLUMN',@level2name=N'currentStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'currentStatus' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Current Status', @level2type=N'COLUMN',@level2name=N'currentStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Current Status', @level2type=N'COLUMN',@level2name=N'currentStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Current Status', @level2type=N'COLUMN',@level2name=N'currentStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Current Status', @level2type=N'COLUMN',@level2name=N'currentStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'currentStatus' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Current Status', @level2type=N'COLUMN',@level2name=N'currentStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Current Status' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Current Status', @level2type=N'COLUMN',@level2name=N'currentStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Current Status', @level2type=N'COLUMN',@level2name=N'currentStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Current Status', @level2type=N'COLUMN',@level2name=N'currentStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Current Status'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'13/08/2009 10:20:37' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Current Status'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'13/08/2009 10:20:37' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Current Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Current Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Current Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Current Status'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Current Status' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Current Status'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Current Status'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Current Status'
GO
/****** Object:  Table [dbo].[FMIncidents]    Script Date: 12/01/2014 11:42:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FMIncidents](
	[MBC Job No] [int] IDENTITY(1,1) NOT NULL,
	[Client Job No] [nvarchar](50) NULL,
	[SiteNo] [nvarchar](200) NULL,
	[OrderType] [nvarchar](50) NULL,
	[Trade] [nvarchar](50) NULL,
	[EnteredBy] [nvarchar](50) NULL,
	[Date] [datetime] NULL,
	[ReportedBy] [nvarchar](50) NULL,
	[SiteTelNo] [nvarchar](50) NULL,
	[DateOpened] [datetime] NULL,
	[Priority] [int] NULL,
	[ResponseTime] [nvarchar](50) NULL,
	[RequiredBy] [datetime] NULL,
	[DateClosed] [datetime] NULL,
	[SubContractor] [nvarchar](50) NULL,
	[Note] [ntext] NULL,
	[AddNewNotes] [ntext] NULL,
	[Problem] [ntext] NULL,
	[todaysDate] [datetime] NULL,
	[timeOnSite] [datetime] NULL,
	[timeOffSite] [datetime] NULL,
	[materials] [decimal](18, 2) NULL,
	[labour] [decimal](18, 2) NULL,
	[totalCost] [decimal](18, 2) NULL,
	[currentStatus] [nvarchar](50) NULL,
	[costingNotes] [ntext] NULL,
	[subContractorMaterials] [decimal](18, 2) NULL,
	[subContractorlabour] [decimal](18, 2) NULL,
	[subContractorcosts] [decimal](18, 2) NULL,
	[subContractorOverheads] [decimal](18, 2) NULL,
	[subContractorProfit] [decimal](18, 2) NULL,
	[subContractorTotal] [decimal](18, 2) NULL,
	[siteName] [nvarchar](50) NULL,
	[siteAddress] [nvarchar](50) NULL,
	[siteAddress2] [nvarchar](50) NULL,
	[siteStreet] [nvarchar](50) NULL,
	[siteTown] [nvarchar](50) NULL,
	[siteCounty] [nvarchar](50) NULL,
	[sitePostCode] [nvarchar](50) NULL,
	[Invoiced] [nvarchar](50) NULL,
	[jobLimits] [nvarchar](50) NULL,
	[estimatedTimeOfCompletion] [nvarchar](255) NULL,
	[UpliftApprovedBy] [nvarchar](255) NULL,
	[totalTimeOnSite] [datetime] NULL,
	[overHeads] [decimal](18, 2) NULL,
	[materialsProfit] [decimal](18, 2) NULL,
	[profitOnPlant] [decimal](18, 2) NULL,
	[jobSheetSigned] [bit] NULL,
	[callOutRate] [int] NULL,
	[initialCallOut] [nvarchar](255) NULL,
	[callOutFee] [decimal](18, 2) NULL,
	[totalToInvoice] [decimal](18, 2) NULL,
	[siteAllocation] [nvarchar](50) NULL,
	[subContractorInvoiceNumber] [nvarchar](50) NULL,
	[subContractorInvoiceDate] [date] NULL,
	[subContractorInvoicePaid] [nvarchar](50) NULL,
	[quotationDated] [datetime] NULL,
	[quotationApprovedDate] [datetime] NULL,
	[timeOnSite2] [datetime] NULL,
	[timeOffSite2] [datetime] NULL,
	[timeOnSite3] [datetime] NULL,
	[timeOffSite3] [datetime] NULL,
	[timeOnSite4] [datetime] NULL,
	[timeOffSite4] [datetime] NULL,
	[siteNotes] [ntext] NULL,
	[addSiteNotes] [ntext] NULL,
 CONSTRAINT [aaaaaFMIncidents_PK] PRIMARY KEY NONCLUSTERED 
(
	[MBC Job No] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'MBC Job No'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'MBC Job No'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'MBC Job No'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'MBC Job No'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'MBC Job No'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'MBC Job No'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'MBC Job No'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'MBC Job No'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'MBC Job No'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'MBC Job No'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'"232-"#' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'MBC Job No'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MBC Job No' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'MBC Job No'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'MBC Job No'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'MBC Job No'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'MBC Job No'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'MBC Job No'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MBC Job No' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'MBC Job No'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'MBC Job No'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'MBC Job No'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'MBC Job No'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Client Job No'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Client Job No'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Client Job No'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Client Job No'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Client Job No'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Client Job No'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Client Job No'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Client Job No'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Client Job No'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Client Job No'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Client Job No'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Client Job No'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Client Job No'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Client Job No' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Client Job No'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Client Job No'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Client Job No'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Client Job No'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Client Job No'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Client Job No' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Client Job No'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Client Job No'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Client Job No'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Client Job No'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Client Job No'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteNo'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowValueListEdits', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteNo'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteNo'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteNo'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteNo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteNo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteNo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteNo'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteNo'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_BoundColumn', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHeads', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidths', @value=N'1440;1440;1440;1440;1440;1440' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'111' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_LimitToList', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ListRows', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ListWidth', @value=N'8640twip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_RowSourceType', @value=N'Table/View/StoredProc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'SiteNo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteNo'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteNo'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteNo'
GO
EXEC sys.sp_addextendedproperty @name=N'ShowOnlyRowSourceValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'200' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteNo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'SiteNo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteNo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteNo'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteNo'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteNo'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'OrderType'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'OrderType'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'OrderType'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'OrderType'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'OrderType'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'OrderType'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'OrderType'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'OrderType'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'OrderType'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'OrderType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'OrderType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'OrderType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'OrderType'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'OrderType' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'OrderType'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'OrderType'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'OrderType'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'OrderType'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'OrderType'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'OrderType' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'OrderType'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'OrderType'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'OrderType'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'OrderType'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'OrderType'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Trade'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Trade'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Trade'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Trade'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Trade'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Trade'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Trade'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Trade'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Trade'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Trade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Trade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Trade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Trade'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Trade' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Trade'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Trade'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Trade'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Trade'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Trade'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Trade' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Trade'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Trade'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Trade'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Trade'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Trade'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'EnteredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'EnteredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'EnteredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'EnteredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'EnteredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'EnteredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'EnteredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'EnteredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'EnteredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'EnteredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'EnteredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'EnteredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'EnteredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'EnteredBy' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'EnteredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'EnteredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'EnteredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'EnteredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'EnteredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'EnteredBy' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'EnteredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'EnteredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'EnteredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'EnteredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'EnteredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Date'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Date'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Date'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Date'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Date'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Date'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Date'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Date'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Date'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Date'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Date'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Date'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Date'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Date'
GO
EXEC sys.sp_addextendedproperty @name=N'ShowDatePicker', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Date'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Date'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Date'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Date'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Date'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Date'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'ReportedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'ReportedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'ReportedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'ReportedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'ReportedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'ReportedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'ReportedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'ReportedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'ReportedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'ReportedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'ReportedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'ReportedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'ReportedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ReportedBy' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'ReportedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'ReportedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'ReportedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'ReportedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'ReportedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ReportedBy' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'ReportedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'ReportedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'ReportedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'ReportedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'ReportedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteTelNo'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteTelNo'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteTelNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteTelNo'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteTelNo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteTelNo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteTelNo'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteTelNo'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteTelNo'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteTelNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteTelNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteTelNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteTelNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'SiteTelNo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteTelNo'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteTelNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteTelNo'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteTelNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteTelNo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'SiteTelNo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteTelNo'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteTelNo'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteTelNo'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteTelNo'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SiteTelNo'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'DateOpened'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'DateOpened'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'DateOpened'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'DateOpened'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'DateOpened'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'DateOpened'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'DateOpened'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'DateOpened'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'DateOpened'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'DateOpened'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'General Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'DateOpened'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'DateOpened'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'DateOpened'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'DateOpened' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'DateOpened'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'9' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'DateOpened'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'DateOpened'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'DateOpened'
GO
EXEC sys.sp_addextendedproperty @name=N'ShowDatePicker', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'DateOpened'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'DateOpened'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'DateOpened' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'DateOpened'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'DateOpened'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'DateOpened'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'DateOpened'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Priority'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Priority'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Priority'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Priority'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Priority'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Priority'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Priority'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Priority'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Priority'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Priority'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Priority'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Priority'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Priority'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Priority' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Priority'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Priority'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Priority'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Priority'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Priority'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Priority' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Priority'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Priority'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Priority'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Priority'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ResponseTime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'11' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ResponseTime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'RequiredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'RequiredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'RequiredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'RequiredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'RequiredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'RequiredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'RequiredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'RequiredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'RequiredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'RequiredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'Medium Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'RequiredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'RequiredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'RequiredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'RequiredBy' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'RequiredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'RequiredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'RequiredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'RequiredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'ShowDatePicker', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'RequiredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'RequiredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'RequiredBy' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'RequiredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'RequiredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'RequiredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'RequiredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'DateClosed'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'DateClosed'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'DateClosed'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'DateClosed'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'DateClosed'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'DateClosed'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'DateClosed'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'DateClosed'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'DateClosed'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'DateClosed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'Short Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'DateClosed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'DateClosed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'DateClosed'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'DateClosed' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'DateClosed'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'13' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'DateClosed'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'DateClosed'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'DateClosed'
GO
EXEC sys.sp_addextendedproperty @name=N'ShowDatePicker', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'DateClosed'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'DateClosed'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'DateClosed' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'DateClosed'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'DateClosed'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'DateClosed'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'DateClosed'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SubContractor'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SubContractor'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SubContractor'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SubContractor'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SubContractor'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SubContractor'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SubContractor'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SubContractor'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SubContractor'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SubContractor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SubContractor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SubContractor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SubContractor'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'SubContractor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SubContractor'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'14' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SubContractor'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SubContractor'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SubContractor'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SubContractor'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'SubContractor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SubContractor'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SubContractor'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SubContractor'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SubContractor'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'SubContractor'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Note'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Note'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Note'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Note'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Note'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Note'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Note'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Note'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Note'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Note'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Note'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Note'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Note' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Note'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'15' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Note'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Note'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Note'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Note'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Note' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Note'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Note'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Note'
GO
EXEC sys.sp_addextendedproperty @name=N'TextFormat', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Note'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Note'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Note'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'AddNewNotes'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'AddNewNotes'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'AddNewNotes'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'AddNewNotes'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'AddNewNotes'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'AddNewNotes'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'AddNewNotes'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'AddNewNotes'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'AddNewNotes'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'AddNewNotes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'AddNewNotes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'AddNewNotes'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'AddNewNotes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'AddNewNotes'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'AddNewNotes'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'AddNewNotes'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'AddNewNotes'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'AddNewNotes'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'AddNewNotes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'AddNewNotes'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'AddNewNotes'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'AddNewNotes'
GO
EXEC sys.sp_addextendedproperty @name=N'TextFormat', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'AddNewNotes'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'AddNewNotes'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'AddNewNotes'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Problem'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Problem'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Problem'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Problem'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Problem'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Problem'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Problem'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Problem'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Problem'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Problem'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Problem'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Problem'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Problem'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Problem' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Problem'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Problem'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Problem'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Problem'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'512' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Problem'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Problem' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Problem'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Problem'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Problem'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Problem'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Problem'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'todaysDate'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'todaysDate'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'todaysDate'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'todaysDate'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'todaysDate'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'todaysDate'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'todaysDate'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'todaysDate'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'todaysDate'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'todaysDate'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'Date()' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'todaysDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'todaysDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'todaysDate'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'todaysDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'todaysDate'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'18' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'todaysDate'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'todaysDate'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'todaysDate'
GO
EXEC sys.sp_addextendedproperty @name=N'ShowDatePicker', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'todaysDate'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'todaysDate'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'todaysDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'todaysDate'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'todaysDate'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'todaysDate'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'todaysDate'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'timeOnSite'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'timeOnSite'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'timeOnSite'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'timeOnSite'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'timeOnSite'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'timeOnSite'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'timeOnSite'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'timeOnSite'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'timeOnSite'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'timeOnSite'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'timeOnSite'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'timeOnSite'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'timeOnSite' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'timeOnSite'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'19' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'timeOnSite'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'timeOnSite'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'timeOnSite'
GO
EXEC sys.sp_addextendedproperty @name=N'ShowDatePicker', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'timeOnSite'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'timeOnSite'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'timeOnSite' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'timeOnSite'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'timeOnSite'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'timeOnSite'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'timeOnSite'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'timeOffSite'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'timeOffSite'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'timeOffSite'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'timeOffSite'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'timeOffSite'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'timeOffSite'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'timeOffSite'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'timeOffSite'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'timeOffSite'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'timeOffSite'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'timeOffSite'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'timeOffSite'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'timeOffSite' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'timeOffSite'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'20' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'timeOffSite'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'timeOffSite'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'timeOffSite'
GO
EXEC sys.sp_addextendedproperty @name=N'ShowDatePicker', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'timeOffSite'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'timeOffSite'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'timeOffSite' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'timeOffSite'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'timeOffSite'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'timeOffSite'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'timeOffSite'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'materials'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'materials'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'materials'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'materials'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'18' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'materials'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'materials'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'materials'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'materials'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'materials'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'materials'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'materials'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'materials'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'materials'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'£#,##0.00;-£#,##0.00' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'materials'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'materials' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'materials'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'21' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'materials'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'materials'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'materials'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'materials'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'materials' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'materials'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'materials'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'materials'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'20' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'materials'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'labour'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'labour'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'labour'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'labour'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'18' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'labour'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'labour'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'labour'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'labour'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'labour'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'labour'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'labour'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'labour'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'labour'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'£#,##0.00;-£#,##0.00' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'labour'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'labour' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'labour'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'22' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'labour'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'labour'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'labour'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'labour'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'labour' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'labour'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'labour'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'labour'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'20' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'labour'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalCost'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalCost'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalCost'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalCost'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'18' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalCost'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalCost'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalCost'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalCost'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalCost'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalCost'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalCost'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalCost'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'materials + labour' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalCost'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalCost'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'£#,##0.00;-£#,##0.00' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalCost'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'totalCost' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalCost'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'23' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalCost'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalCost'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalCost'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalCost'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'totalCost' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalCost'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalCost'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalCost'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'20' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalCost'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'currentStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'currentStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'currentStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'currentStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'currentStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'currentStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'currentStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'currentStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'currentStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'currentStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'currentStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'currentStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'currentStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'currentStatus' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'currentStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'24' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'currentStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'currentStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'currentStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'currentStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'currentStatus' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'currentStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'currentStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'currentStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'currentStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'currentStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'costingNotes'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'costingNotes'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'costingNotes'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'costingNotes'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'costingNotes'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'costingNotes'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'costingNotes'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'costingNotes'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'costingNotes'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'costingNotes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'costingNotes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'costingNotes'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'costingNotes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'costingNotes'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'25' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'costingNotes'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'costingNotes'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'costingNotes'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'costingNotes'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'costingNotes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'costingNotes'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'costingNotes'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'costingNotes'
GO
EXEC sys.sp_addextendedproperty @name=N'TextFormat', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'costingNotes'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'costingNotes'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'costingNotes'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorMaterials'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorMaterials'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorMaterials'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorMaterials'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'18' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorMaterials'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorMaterials'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorMaterials'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorMaterials'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorMaterials'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorMaterials'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorMaterials'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorMaterials'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorMaterials'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'£#,##0.00;-£#,##0.00' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorMaterials'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'subContractorMaterials' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorMaterials'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'26' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorMaterials'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorMaterials'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorMaterials'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorMaterials'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'subContractorMaterials' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorMaterials'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorMaterials'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorMaterials'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'20' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorMaterials'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorlabour'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorlabour'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorlabour'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorlabour'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'18' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorlabour'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorlabour'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorlabour'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorlabour'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorlabour'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorlabour'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorlabour'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorlabour'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorlabour'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'£#,##0.00;-£#,##0.00' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorlabour'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'subContractorlabour' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorlabour'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'27' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorlabour'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorlabour'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorlabour'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorlabour'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'subContractorlabour' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorlabour'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorlabour'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorlabour'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'20' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorlabour'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorcosts'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorcosts'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorcosts'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorcosts'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'18' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorcosts'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorcosts'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorcosts'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorcosts'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorcosts'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorcosts'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorcosts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorcosts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorcosts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'£#,##0.00;-£#,##0.00' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorcosts'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'subContractorcosts' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorcosts'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'28' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorcosts'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorcosts'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorcosts'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorcosts'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'subContractorcosts' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorcosts'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorcosts'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorcosts'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'20' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorcosts'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorOverheads'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorOverheads'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorOverheads'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorOverheads'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'18' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorOverheads'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorOverheads'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorOverheads'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorOverheads'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorOverheads'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorOverheads'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorOverheads'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorOverheads'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorOverheads'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'£#,##0.00;-£#,##0.00' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorOverheads'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'subContractorOverheads' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorOverheads'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'29' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorOverheads'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorOverheads'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorOverheads'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorOverheads'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'subContractorOverheads' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorOverheads'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorOverheads'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorOverheads'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'20' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorOverheads'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorProfit'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorProfit'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorProfit'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorProfit'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'18' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorProfit'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorProfit'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorProfit'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorProfit'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorProfit'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorProfit'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorProfit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorProfit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'sub materials + labour' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorProfit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorProfit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'£#,##0.00;-£#,##0.00' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorProfit'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'subContractorProfit' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorProfit'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'30' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorProfit'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorProfit'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorProfit'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorProfit'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'subContractorProfit' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorProfit'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorProfit'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorProfit'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'20' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'subContractorProfit'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteName'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteName'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteName'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteName'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteName'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteName'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteName'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteName'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteName'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteName'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'siteName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteName'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'31' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteName'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteName'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteName'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteName'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'siteName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteName'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteName'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteName'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteName'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteName'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'siteAddress' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'32' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'siteAddress' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteAddress2'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteAddress2'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteAddress2'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteAddress2'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteAddress2'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteAddress2'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteAddress2'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteAddress2'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteAddress2'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteAddress2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteAddress2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteAddress2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteAddress2'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'siteAddress2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteAddress2'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'33' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteAddress2'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteAddress2'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteAddress2'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteAddress2'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'siteAddress2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteAddress2'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteAddress2'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteAddress2'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteAddress2'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteAddress2'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteStreet'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteStreet'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteStreet'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteStreet'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteStreet'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteStreet'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteStreet'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteStreet'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteStreet'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteStreet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteStreet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteStreet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteStreet'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'siteStreet' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteStreet'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'34' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteStreet'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteStreet'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteStreet'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteStreet'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'siteStreet' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteStreet'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteStreet'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteStreet'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteStreet'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteStreet'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteTown'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteTown'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteTown'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteTown'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteTown'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteTown'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteTown'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteTown'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteTown'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteTown'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteTown'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteTown'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteTown'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'siteTown' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteTown'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'35' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteTown'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteTown'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteTown'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteTown'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'siteTown' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteTown'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteTown'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteTown'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteTown'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteTown'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteCounty'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteCounty'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteCounty'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteCounty'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteCounty'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteCounty'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteCounty'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteCounty'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteCounty'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteCounty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteCounty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteCounty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteCounty'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'siteCounty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteCounty'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'36' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteCounty'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteCounty'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteCounty'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteCounty'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'siteCounty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteCounty'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteCounty'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteCounty'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteCounty'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'siteCounty'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'sitePostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'sitePostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'sitePostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'sitePostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'sitePostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'sitePostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'sitePostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'sitePostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'sitePostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'sitePostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'sitePostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'sitePostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'sitePostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'sitePostCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'sitePostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'37' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'sitePostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'sitePostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'sitePostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'sitePostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'sitePostCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'sitePostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'sitePostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'sitePostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'sitePostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'sitePostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Invoiced'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Invoiced'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Invoiced'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Invoiced'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Invoiced'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Invoiced'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Invoiced'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Invoiced'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Invoiced'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Invoiced'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'No' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Invoiced'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Invoiced'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Invoiced'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Invoiced'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Invoiced' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Invoiced'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'38' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Invoiced'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Invoiced'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Invoiced'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Invoiced'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Invoiced' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Invoiced'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Invoiced'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Invoiced'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Invoiced'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'Invoiced'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'jobLimits'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'jobLimits'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'jobLimits'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'jobLimits'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'jobLimits'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'jobLimits'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'jobLimits'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'jobLimits'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'jobLimits'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'jobLimits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'jobLimits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'jobLimits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'jobLimits'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'jobLimits' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'jobLimits'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'39' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'jobLimits'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'jobLimits'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'jobLimits'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'jobLimits'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'jobLimits' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'jobLimits'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'jobLimits'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'jobLimits'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'jobLimits'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'jobLimits'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'estimatedTimeOfCompletion'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'estimatedTimeOfCompletion'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'estimatedTimeOfCompletion'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'estimatedTimeOfCompletion'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'estimatedTimeOfCompletion'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'estimatedTimeOfCompletion'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'estimatedTimeOfCompletion'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'estimatedTimeOfCompletion'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'estimatedTimeOfCompletion'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'estimatedTimeOfCompletion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'estimatedTimeOfCompletion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'estimatedTimeOfCompletion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'estimatedTimeOfCompletion'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'estimatedTimeOfCompletion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'estimatedTimeOfCompletion'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'40' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'estimatedTimeOfCompletion'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'estimatedTimeOfCompletion'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'estimatedTimeOfCompletion'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'estimatedTimeOfCompletion'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'estimatedTimeOfCompletion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'estimatedTimeOfCompletion'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'estimatedTimeOfCompletion'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'estimatedTimeOfCompletion'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'estimatedTimeOfCompletion'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'estimatedTimeOfCompletion'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'UpliftApprovedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'UpliftApprovedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'UpliftApprovedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'UpliftApprovedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'UpliftApprovedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'UpliftApprovedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'UpliftApprovedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'UpliftApprovedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'UpliftApprovedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'UpliftApprovedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'UpliftApprovedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'UpliftApprovedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'UpliftApprovedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'UpliftApprovedBy' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'UpliftApprovedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'41' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'UpliftApprovedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'UpliftApprovedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'UpliftApprovedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'UpliftApprovedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'UpliftApprovedBy' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'UpliftApprovedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'UpliftApprovedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'UpliftApprovedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'UpliftApprovedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'UpliftApprovedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalTimeOnSite'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalTimeOnSite'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalTimeOnSite'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalTimeOnSite'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalTimeOnSite'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalTimeOnSite'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalTimeOnSite'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalTimeOnSite'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalTimeOnSite'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalTimeOnSite'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalTimeOnSite'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalTimeOnSite'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'totalTimeOnSite' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalTimeOnSite'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'42' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalTimeOnSite'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalTimeOnSite'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalTimeOnSite'
GO
EXEC sys.sp_addextendedproperty @name=N'ShowDatePicker', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalTimeOnSite'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalTimeOnSite'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'totalTimeOnSite' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalTimeOnSite'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalTimeOnSite'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalTimeOnSite'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalTimeOnSite'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'overHeads'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'overHeads'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'overHeads'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'overHeads'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'18' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'overHeads'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'overHeads'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'overHeads'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'overHeads'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'overHeads'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'overHeads'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'overHeads'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'overHeads'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'overHeads'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'£#,##0.00;-£#,##0.00' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'overHeads'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'overHeads' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'overHeads'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'43' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'overHeads'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'overHeads'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'overHeads'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'overHeads'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'overHeads' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'overHeads'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'overHeads'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'overHeads'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'20' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'overHeads'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'materialsProfit'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'materialsProfit'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'materialsProfit'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'materialsProfit'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'18' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'materialsProfit'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'materialsProfit'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'materialsProfit'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'materialsProfit'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'materialsProfit'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'materialsProfit'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'materialsProfit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'materialsProfit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'materialsProfit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'£#,##0.00;-£#,##0.00' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'materialsProfit'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'materialsProfit' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'materialsProfit'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'44' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'materialsProfit'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'materialsProfit'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'materialsProfit'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'materialsProfit'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'materialsProfit' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'materialsProfit'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'materialsProfit'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'materialsProfit'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'20' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'materialsProfit'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'profitOnPlant'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'profitOnPlant'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'profitOnPlant'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'profitOnPlant'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'18' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'profitOnPlant'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'profitOnPlant'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'profitOnPlant'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'profitOnPlant'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'profitOnPlant'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'profitOnPlant'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'profitOnPlant'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'profitOnPlant'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'profitOnPlant'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'£#,##0.00;-£#,##0.00' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'profitOnPlant'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'profitOnPlant' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'profitOnPlant'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'45' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'profitOnPlant'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'profitOnPlant'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'profitOnPlant'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'profitOnPlant'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'profitOnPlant' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'profitOnPlant'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'profitOnPlant'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'profitOnPlant'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'20' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'profitOnPlant'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'jobSheetSigned'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'jobSheetSigned'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'jobSheetSigned'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'jobSheetSigned'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'jobSheetSigned'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'jobSheetSigned'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'jobSheetSigned'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'jobSheetSigned'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'jobSheetSigned'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'jobSheetSigned'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'No' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'jobSheetSigned'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'106' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'jobSheetSigned'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'Yes/No' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'jobSheetSigned'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'jobSheetSigned' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'jobSheetSigned'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'46' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'jobSheetSigned'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'jobSheetSigned'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'jobSheetSigned'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'jobSheetSigned'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'jobSheetSigned' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'jobSheetSigned'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'jobSheetSigned'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'jobSheetSigned'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'jobSheetSigned'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'callOutRate'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'callOutRate'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'callOutRate'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'callOutRate'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'callOutRate'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'callOutRate'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'callOutRate'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'callOutRate'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'callOutRate'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'callOutRate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'callOutRate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'callOutRate'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'callOutRate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'callOutRate'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'47' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'callOutRate'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'callOutRate'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'callOutRate'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'callOutRate'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'callOutRate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'callOutRate'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'callOutRate'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'callOutRate'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'callOutRate'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'initialCallOut' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'48' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'initialCallOut' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'18' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'£#,##0.00;-£#,##0.00' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'callOutFee' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'49' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'callOutFee' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'20' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'callOutFee'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalToInvoice'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalToInvoice'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalToInvoice'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalToInvoice'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'18' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalToInvoice'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalToInvoice'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalToInvoice'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalToInvoice'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalToInvoice'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalToInvoice'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalToInvoice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalToInvoice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalToInvoice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'£#,##0.00;-£#,##0.00' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalToInvoice'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'totalToInvoice' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalToInvoice'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalToInvoice'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalToInvoice'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalToInvoice'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalToInvoice'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'totalToInvoice' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalToInvoice'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalToInvoice'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalToInvoice'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'20' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents', @level2type=N'COLUMN',@level2name=N'totalToInvoice'
GO
EXEC sys.sp_addextendedproperty @name=N'AlternateBackShade', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents'
GO
EXEC sys.sp_addextendedproperty @name=N'AlternateBackThemeColorIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents'
GO
EXEC sys.sp_addextendedproperty @name=N'AlternateBackTint', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents'
GO
EXEC sys.sp_addextendedproperty @name=N'BackShade', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents'
GO
EXEC sys.sp_addextendedproperty @name=N'BackTint', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetForeThemeColorIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetGridlinesThemeColorIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'13/08/2009 10:20:37' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents'
GO
EXEC sys.sp_addextendedproperty @name=N'DisplayViewsOnSharePointSite', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterOnLoad', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents'
GO
EXEC sys.sp_addextendedproperty @name=N'HideNewField', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'08/10/2010 11:15:57' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'FMIncidents' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents'
GO
EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents'
GO
EXEC sys.sp_addextendedproperty @name=N'ThemeFontIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents'
GO
EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidents'
GO
/****** Object:  Table [dbo].[initialCallOut]    Script Date: 12/01/2014 11:42:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[initialCallOut](
	[initialCallOut] [nvarchar](255) NOT NULL,
 CONSTRAINT [aaaaainitialCallOut_PK] PRIMARY KEY NONCLUSTERED 
(
	[initialCallOut] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'initialCallOut', @level2type=N'COLUMN',@level2name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'initialCallOut', @level2type=N'COLUMN',@level2name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'initialCallOut', @level2type=N'COLUMN',@level2name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'initialCallOut', @level2type=N'COLUMN',@level2name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'initialCallOut', @level2type=N'COLUMN',@level2name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'initialCallOut', @level2type=N'COLUMN',@level2name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'initialCallOut', @level2type=N'COLUMN',@level2name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'initialCallOut', @level2type=N'COLUMN',@level2name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'initialCallOut', @level2type=N'COLUMN',@level2name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'initialCallOut', @level2type=N'COLUMN',@level2name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'initialCallOut', @level2type=N'COLUMN',@level2name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'initialCallOut', @level2type=N'COLUMN',@level2name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'initialCallOut', @level2type=N'COLUMN',@level2name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'initialCallOut' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'initialCallOut', @level2type=N'COLUMN',@level2name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'initialCallOut', @level2type=N'COLUMN',@level2name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'initialCallOut', @level2type=N'COLUMN',@level2name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'initialCallOut', @level2type=N'COLUMN',@level2name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'initialCallOut', @level2type=N'COLUMN',@level2name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'initialCallOut' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'initialCallOut', @level2type=N'COLUMN',@level2name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'initialCallOut' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'initialCallOut', @level2type=N'COLUMN',@level2name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'initialCallOut', @level2type=N'COLUMN',@level2name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'initialCallOut', @level2type=N'COLUMN',@level2name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'initialCallOut', @level2type=N'COLUMN',@level2name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'AlternateBackShade', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'AlternateBackThemeColorIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'AlternateBackTint', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'BackShade', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'BackTint', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetForeThemeColorIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetGridlinesThemeColorIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'30/09/2010 09:28:51' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'DisplayViewsOnSharePointSite', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterOnLoad', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'HideNewField', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'30/09/2010 09:29:23' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'initialCallOut' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'ThemeFontIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'initialCallOut'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'initialCallOut'
GO
/****** Object:  Table [dbo].[FMIncidentsFM261]    Script Date: 12/01/2014 11:42:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FMIncidentsFM261](
	[MBC Job No] [int] IDENTITY(1,1) NOT NULL,
	[Client Job No] [nvarchar](50) NULL,
	[SiteNo] [nvarchar](200) NULL,
	[OrderType] [nvarchar](50) NULL,
	[Trade] [nvarchar](50) NULL,
	[EnteredBy] [nvarchar](50) NULL,
	[Date] [datetime] NULL,
	[ReportedBy] [nvarchar](50) NULL,
	[SiteTelNo] [nvarchar](50) NULL,
	[DateOpened] [datetime] NULL,
	[Priority] [int] NULL,
	[ResponseTime] [nvarchar](50) NULL,
	[RequiredBy] [datetime] NULL,
	[DateClosed] [datetime] NULL,
	[SubContractor] [nvarchar](50) NULL,
	[Note] [ntext] NULL,
	[AddNewNotes] [ntext] NULL,
	[Problem] [ntext] NULL,
	[todaysDate] [datetime] NULL,
	[timeOnSite] [datetime] NULL,
	[timeOffSite] [datetime] NULL,
	[materials] [decimal](18, 2) NULL,
	[labour] [decimal](18, 2) NOT NULL,
	[totalCost] [decimal](18, 2) NULL,
	[currentStatus] [nvarchar](50) NULL,
	[costingNotes] [ntext] NULL,
	[subContractorMaterials] [decimal](18, 2) NULL,
	[subContractorlabour] [decimal](18, 2) NULL,
	[subContractorcosts] [decimal](18, 2) NULL,
	[subContractorOverheads] [decimal](18, 2) NULL,
	[subContractorProfit] [decimal](18, 2) NULL,
	[subContractorTotal] [decimal](18, 2) NULL,
	[siteName] [nvarchar](50) NULL,
	[siteAddress] [nvarchar](50) NULL,
	[siteAddress2] [nvarchar](50) NULL,
	[siteStreet] [nvarchar](50) NULL,
	[siteTown] [nvarchar](50) NULL,
	[siteCounty] [nvarchar](50) NULL,
	[sitePostCode] [nvarchar](50) NULL,
	[Invoiced] [nvarchar](50) NULL,
	[jobLimits] [nvarchar](50) NULL,
	[estimatedTimeOfCompletion] [nvarchar](255) NULL,
	[UpliftApprovedBy] [nvarchar](255) NULL,
	[totalTimeOnSite] [datetime] NULL,
	[overHeads] [decimal](18, 2) NULL,
	[materialsProfit] [decimal](18, 2) NULL,
	[profitOnPlant] [decimal](18, 2) NULL,
	[jobSheetSigned] [bit] NULL,
	[callOutRate] [int] NULL,
	[initialCallOut] [nvarchar](255) NULL,
	[callOutFee] [decimal](18, 2) NULL,
	[totalToInvoice] [decimal](18, 2) NULL,
	[siteAllocation] [nvarchar](50) NULL,
	[subContractorInvoiceNumber] [nvarchar](50) NULL,
	[subContractorInvoiceDate] [date] NULL,
	[subContractorInvoicePaid] [nvarchar](50) NULL,
	[quotationDated] [datetime] NULL,
	[quotationApprovedDate] [datetime] NULL,
	[timeOnSite2] [datetime] NULL,
	[timeOffSite2] [datetime] NULL,
	[timeOnSite3] [datetime] NULL,
	[timeOffSite3] [datetime] NULL,
	[timeOnSite4] [datetime] NULL,
	[timeOffSite4] [datetime] NULL,
	[siteNotes] [ntext] NULL,
	[addSiteNotes] [ntext] NULL,
	[TimeStamp] [timestamp] NULL,
 CONSTRAINT [PK_FMIncidentsFM261] PRIMARY KEY CLUSTERED 
(
	[MBC Job No] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'AlternateBackShade', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidentsFM261'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidentsFM261'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidentsFM261'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidentsFM261'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'FMIncidentsFM261' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidentsFM261'
GO
EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidentsFM261'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidentsFM261'
GO
EXEC sys.sp_addextendedproperty @name=N'ThemeFontIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidentsFM261'
GO
EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidentsFM261'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FMIncidentsFM261'
GO
/****** Object:  Table [dbo].[Order Type]    Script Date: 12/01/2014 11:42:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order Type](
	[ordertype] [nvarchar](50) NOT NULL,
 CONSTRAINT [aaaaaOrder Type_PK] PRIMARY KEY NONCLUSTERED 
(
	[ordertype] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order Type', @level2type=N'COLUMN',@level2name=N'ordertype'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order Type', @level2type=N'COLUMN',@level2name=N'ordertype'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order Type', @level2type=N'COLUMN',@level2name=N'ordertype'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order Type', @level2type=N'COLUMN',@level2name=N'ordertype'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order Type', @level2type=N'COLUMN',@level2name=N'ordertype'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order Type', @level2type=N'COLUMN',@level2name=N'ordertype'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order Type', @level2type=N'COLUMN',@level2name=N'ordertype'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order Type', @level2type=N'COLUMN',@level2name=N'ordertype'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order Type', @level2type=N'COLUMN',@level2name=N'ordertype'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order Type', @level2type=N'COLUMN',@level2name=N'ordertype'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order Type', @level2type=N'COLUMN',@level2name=N'ordertype'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ordertype' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order Type', @level2type=N'COLUMN',@level2name=N'ordertype'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order Type', @level2type=N'COLUMN',@level2name=N'ordertype'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order Type', @level2type=N'COLUMN',@level2name=N'ordertype'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order Type', @level2type=N'COLUMN',@level2name=N'ordertype'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ordertype' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order Type', @level2type=N'COLUMN',@level2name=N'ordertype'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Order Type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order Type', @level2type=N'COLUMN',@level2name=N'ordertype'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order Type', @level2type=N'COLUMN',@level2name=N'ordertype'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order Type', @level2type=N'COLUMN',@level2name=N'ordertype'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order Type'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'13/08/2009 10:20:38' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order Type'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'13/08/2009 10:20:38' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order Type'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Order Type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order Type'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order Type'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order Type'
GO
/****** Object:  Table [dbo].[little_chef]    Script Date: 12/01/2014 11:42:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[little_chef](
	[MBC Job No] [int] IDENTITY(1,1) NOT NULL,
	[Client Job No] [nvarchar](50) NULL,
	[JobAddress] [nvarchar](200) NULL,
	[OrderType] [nvarchar](50) NULL,
	[Trade] [nvarchar](50) NULL,
	[EnteredBy] [nvarchar](50) NULL,
	[Date] [nvarchar](50) NULL,
	[ReportedBy] [nvarchar](50) NULL,
	[Client] [nvarchar](50) NULL,
	[DateOpened] [datetime] NULL,
	[Priority] [int] NULL,
	[ResponseTime] [nvarchar](50) NULL,
	[RequiredBy] [datetime] NULL,
	[DateClosed] [datetime] NULL,
	[SubContractor] [nvarchar](50) NULL,
	[Note] [ntext] NULL,
	[AddNewNotes] [ntext] NULL,
	[Problem] [nvarchar](255) NULL,
	[todaysDate] [datetime] NULL,
	[timeOnSite] [nvarchar](50) NULL,
	[timeOffSite] [nvarchar](50) NULL,
	[materials] [decimal](18, 2) NULL,
	[labour] [decimal](18, 2) NULL,
	[totalCost] [decimal](18, 2) NULL,
	[currentStatus] [nvarchar](50) NULL,
	[costingNotes] [ntext] NULL,
	[subContractorMaterials] [decimal](18, 2) NULL,
	[subContractorlabour] [decimal](18, 2) NULL,
	[subContractorcosts] [decimal](18, 2) NULL,
	[siteName] [nvarchar](50) NULL,
	[siteAddress] [nvarchar](50) NULL,
	[siteAddress2] [nvarchar](50) NULL,
	[siteStreet] [nvarchar](50) NULL,
	[siteTown] [nvarchar](50) NULL,
	[siteCounty] [nvarchar](50) NULL,
	[sitePostCode] [nvarchar](50) NULL,
	[Invoiced] [nvarchar](50) NULL,
	[jobLimits] [nvarchar](50) NULL,
	[InvoiceAddress] [ntext] NULL,
	[sitePhone] [nchar](50) NULL,
	[invoiceTotal] [decimal](18, 2) NULL,
	[materialsProfit] [decimal](18, 2) NULL,
	[subContractorProfit] [decimal](18, 2) NULL,
	[subContractorInvoiceNumber] [nvarchar](50) NULL,
	[subContractorInvoiceDate] [datetime] NULL,
	[subContractorInvoicePaid] [nvarchar](50) NULL,
 CONSTRAINT [PK_little_chef_1] PRIMARY KEY CLUSTERED 
(
	[MBC Job No] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResponseTime]    Script Date: 12/01/2014 11:42:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResponseTime](
	[ResponseTime] [nvarchar](50) NOT NULL,
 CONSTRAINT [aaaaaResponseTime_PK] PRIMARY KEY NONCLUSTERED 
(
	[ResponseTime] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ResponseTime', @level2type=N'COLUMN',@level2name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ResponseTime', @level2type=N'COLUMN',@level2name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ResponseTime', @level2type=N'COLUMN',@level2name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ResponseTime', @level2type=N'COLUMN',@level2name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ResponseTime', @level2type=N'COLUMN',@level2name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ResponseTime', @level2type=N'COLUMN',@level2name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ResponseTime', @level2type=N'COLUMN',@level2name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ResponseTime', @level2type=N'COLUMN',@level2name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ResponseTime', @level2type=N'COLUMN',@level2name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ResponseTime', @level2type=N'COLUMN',@level2name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ResponseTime', @level2type=N'COLUMN',@level2name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ResponseTime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ResponseTime', @level2type=N'COLUMN',@level2name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ResponseTime', @level2type=N'COLUMN',@level2name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ResponseTime', @level2type=N'COLUMN',@level2name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ResponseTime', @level2type=N'COLUMN',@level2name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ResponseTime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ResponseTime', @level2type=N'COLUMN',@level2name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ResponseTime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ResponseTime', @level2type=N'COLUMN',@level2name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ResponseTime', @level2type=N'COLUMN',@level2name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ResponseTime', @level2type=N'COLUMN',@level2name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'13/08/2009 10:20:38' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'13/08/2009 10:20:38' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ResponseTime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ResponseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ResponseTime'
GO
/****** Object:  Table [dbo].[reactiveCallOut.org]    Script Date: 12/01/2014 11:42:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reactiveCallOut.org](
	[MBC Job No] [int] IDENTITY(10577,1) NOT NULL,
	[Client Job No] [nvarchar](50) NULL,
	[JobAddress] [nvarchar](200) NULL,
	[OrderType] [nvarchar](50) NULL,
	[Trade] [nvarchar](50) NULL,
	[EnteredBy] [nvarchar](50) NULL,
	[Date] [nvarchar](50) NULL,
	[ReportedBy] [nvarchar](50) NULL,
	[Client] [nvarchar](50) NULL,
	[DateOpened] [datetime] NULL,
	[Priority] [int] NULL,
	[ResponseTime] [nvarchar](50) NULL,
	[RequiredBy] [datetime] NULL,
	[DateClosed] [datetime] NULL,
	[SubContractor] [nvarchar](50) NULL,
	[Note] [ntext] NULL,
	[AddNewNotes] [ntext] NULL,
	[Problem] [nvarchar](255) NULL,
	[todaysDate] [datetime] NULL,
	[timeOnSite] [nvarchar](50) NULL,
	[timeOffSite] [nvarchar](50) NULL,
	[materials] [decimal](18, 2) NULL,
	[labour] [decimal](18, 2) NULL,
	[totalCost] [decimal](18, 2) NULL,
	[currentStatus] [nvarchar](50) NULL,
	[costingNotes] [ntext] NULL,
	[subContractorMaterials] [decimal](18, 2) NULL,
	[subContractorlabour] [decimal](18, 2) NULL,
	[subContractorcosts] [decimal](18, 2) NULL,
	[siteName] [nvarchar](50) NULL,
	[siteAddress] [nvarchar](50) NULL,
	[siteAddress2] [nvarchar](50) NULL,
	[siteStreet] [nvarchar](50) NULL,
	[siteTown] [nvarchar](50) NULL,
	[siteCounty] [nvarchar](50) NULL,
	[sitePostCode] [nvarchar](50) NULL,
	[Invoiced] [nvarchar](50) NULL,
	[jobLimits] [nvarchar](50) NULL,
	[InvoiceAddress] [ntext] NULL,
	[sitePhone] [nchar](50) NULL,
	[invoiceTotal] [decimal](18, 2) NULL,
	[materialsProfit] [decimal](18, 2) NULL,
	[subContractorProfit] [decimal](18, 2) NULL,
 CONSTRAINT [PK_reactiveCallOut_1] PRIMARY KEY CLUSTERED 
(
	[MBC Job No] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reactiveCallOut]    Script Date: 12/01/2014 11:42:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reactiveCallOut](
	[MBC Job No] [int] IDENTITY(10577,1) NOT NULL,
	[Client Job No] [nvarchar](50) NULL,
	[JobAddress] [nvarchar](200) NULL,
	[OrderType] [nvarchar](50) NULL,
	[Trade] [nvarchar](50) NULL,
	[EnteredBy] [nvarchar](50) NULL,
	[Date] [nvarchar](50) NULL,
	[ReportedBy] [nvarchar](50) NULL,
	[Client] [nvarchar](50) NULL,
	[DateOpened] [datetime] NULL,
	[Priority] [int] NULL,
	[ResponseTime] [nvarchar](50) NULL,
	[RequiredBy] [datetime] NULL,
	[DateClosed] [datetime] NULL,
	[SubContractor] [nvarchar](50) NULL,
	[Note] [nvarchar](max) NULL,
	[AddNewNotes] [nvarchar](max) NULL,
	[Problem] [nvarchar](max) NULL,
	[todaysDate] [datetime] NULL,
	[timeOnSite] [nvarchar](50) NULL,
	[timeOffSite] [nvarchar](50) NULL,
	[materials] [decimal](18, 2) NULL,
	[labour] [decimal](18, 2) NULL,
	[totalCost] [decimal](18, 2) NULL,
	[currentStatus] [nvarchar](50) NULL,
	[costingNotes] [nvarchar](max) NULL,
	[subContractorMaterials] [decimal](18, 2) NULL,
	[subContractorlabour] [decimal](18, 2) NULL,
	[subContractorcosts] [decimal](18, 2) NULL,
	[siteName] [nvarchar](50) NULL,
	[siteAddress] [nvarchar](50) NULL,
	[siteAddress2] [nvarchar](50) NULL,
	[siteStreet] [nvarchar](50) NULL,
	[siteTown] [nvarchar](50) NULL,
	[siteCounty] [nvarchar](50) NULL,
	[sitePostCode] [nvarchar](50) NULL,
	[Invoiced] [nvarchar](50) NULL,
	[jobLimits] [nvarchar](50) NULL,
	[InvoiceAddress] [nvarchar](max) NULL,
	[sitePhone] [nchar](50) NULL,
	[invoiceTotal] [decimal](18, 2) NULL,
	[materialsProfit] [decimal](18, 2) NULL,
	[subContractorProfit] [decimal](18, 2) NULL,
	[subContractorInvoiceNumber] [nvarchar](50) NULL,
	[subContractorInvoiceDate] [datetime] NULL,
	[subContractorInvoicePaid] [nvarchar](50) NULL,
 CONSTRAINT [PK_reactiveCallOut] PRIMARY KEY CLUSTERED 
(
	[MBC Job No] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReActiveAddresses]    Script Date: 12/01/2014 11:42:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReActiveAddresses](
	[JobAddress] [nvarchar](255) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[Address2] [nvarchar](255) NULL,
	[Address3] [nvarchar](255) NULL,
	[Address4] [nvarchar](255) NULL,
	[Town/City] [nvarchar](255) NULL,
	[County] [nvarchar](255) NULL,
	[Post Code] [nvarchar](255) NULL,
 CONSTRAINT [aaaaaReActiveAddresses_PK] PRIMARY KEY NONCLUSTERED 
(
	[JobAddress] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'JobAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'JobAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'JobAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'JobAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'JobAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'JobAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'JobAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'JobAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'JobAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'JobAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'JobAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'JobAddress' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'JobAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'JobAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'JobAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'JobAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'JobAddress' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'JobAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ReActiveAddresses' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'JobAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'JobAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'JobAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'3450' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ReActiveAddresses' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'2640' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Address' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Address' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ReActiveAddresses' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address2'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address2'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address2'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address2'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address2'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address2'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'2385' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address2'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address2'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Address2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address2'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address2'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address2'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address2'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Address2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address2'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ReActiveAddresses' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address2'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address2'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address2'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address3'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address3'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address3'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address3'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address3'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address3'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address3'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address3'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Address3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address3'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address3'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address3'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address3'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Address3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address3'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ReActiveAddresses' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address3'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address3'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address3'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address4'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address4'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address4'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address4'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address4'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address4'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address4'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address4'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Address4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address4'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address4'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address4'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address4'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Address4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address4'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ReActiveAddresses' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address4'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address4'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Address4'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Town/City'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Town/City'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Town/City'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Town/City'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Town/City'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Town/City'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Town/City'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Town/City'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Town/City'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Town/City'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Town/City'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Town/City' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Town/City'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Town/City'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Town/City'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Town/City'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Town/City' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Town/City'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ReActiveAddresses' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Town/City'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Town/City'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Town/City'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'County'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'County'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'County'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'County'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'County'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'County'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'County'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'County'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'County'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'County'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'County'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'County' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'County'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'County'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'County'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'County'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'County' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'County'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ReActiveAddresses' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'County'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'County'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'County'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Post Code'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Post Code'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Post Code'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Post Code'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Post Code'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Post Code'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Post Code'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Post Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Post Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Post Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Post Code'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Post Code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Post Code'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Post Code'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Post Code'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Post Code'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Post Code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Post Code'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ReActiveAddresses' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Post Code'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Post Code'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses', @level2type=N'COLUMN',@level2name=N'Post Code'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'03/09/2009 11:35:53' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'03/09/2009 11:36:14' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ReActiveAddresses' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReActiveAddresses'
GO
/****** Object:  Table [dbo].[Priority]    Script Date: 12/01/2014 11:42:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Priority](
	[priority] [nvarchar](50) NOT NULL,
 CONSTRAINT [aaaaaPriority_PK] PRIMARY KEY NONCLUSTERED 
(
	[priority] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Priority', @level2type=N'COLUMN',@level2name=N'priority'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Priority', @level2type=N'COLUMN',@level2name=N'priority'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Priority', @level2type=N'COLUMN',@level2name=N'priority'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Priority', @level2type=N'COLUMN',@level2name=N'priority'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Priority', @level2type=N'COLUMN',@level2name=N'priority'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Priority', @level2type=N'COLUMN',@level2name=N'priority'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Priority', @level2type=N'COLUMN',@level2name=N'priority'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Priority', @level2type=N'COLUMN',@level2name=N'priority'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Priority', @level2type=N'COLUMN',@level2name=N'priority'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Priority', @level2type=N'COLUMN',@level2name=N'priority'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Priority', @level2type=N'COLUMN',@level2name=N'priority'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'priority' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Priority', @level2type=N'COLUMN',@level2name=N'priority'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Priority', @level2type=N'COLUMN',@level2name=N'priority'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Priority', @level2type=N'COLUMN',@level2name=N'priority'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Priority', @level2type=N'COLUMN',@level2name=N'priority'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'priority' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Priority', @level2type=N'COLUMN',@level2name=N'priority'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Priority' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Priority', @level2type=N'COLUMN',@level2name=N'priority'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Priority', @level2type=N'COLUMN',@level2name=N'priority'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Priority', @level2type=N'COLUMN',@level2name=N'priority'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Priority'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'13/08/2009 10:20:38' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Priority'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'13/08/2009 10:20:38' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Priority'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Priority'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Priority'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Priority'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Priority' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Priority'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Priority'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Priority'
GO
/****** Object:  Table [dbo].[primaryCallOutFee]    Script Date: 12/01/2014 11:42:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[primaryCallOutFee](
	[callOutFee] [float] NOT NULL,
 CONSTRAINT [PK_primaryCallOutFee] PRIMARY KEY CLUSTERED 
(
	[callOutFee] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[jobLimits]    Script Date: 12/01/2014 11:42:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jobLimits](
	[joblimits] [nvarchar](50) NOT NULL,
 CONSTRAINT [aaaaajobLimits_PK] PRIMARY KEY NONCLUSTERED 
(
	[joblimits] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'jobLimits', @level2type=N'COLUMN',@level2name=N'joblimits'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'jobLimits', @level2type=N'COLUMN',@level2name=N'joblimits'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'jobLimits', @level2type=N'COLUMN',@level2name=N'joblimits'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'jobLimits', @level2type=N'COLUMN',@level2name=N'joblimits'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'jobLimits', @level2type=N'COLUMN',@level2name=N'joblimits'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'jobLimits', @level2type=N'COLUMN',@level2name=N'joblimits'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'jobLimits', @level2type=N'COLUMN',@level2name=N'joblimits'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1935' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'jobLimits', @level2type=N'COLUMN',@level2name=N'joblimits'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'jobLimits', @level2type=N'COLUMN',@level2name=N'joblimits'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'jobLimits', @level2type=N'COLUMN',@level2name=N'joblimits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'jobLimits', @level2type=N'COLUMN',@level2name=N'joblimits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'jobLimits', @level2type=N'COLUMN',@level2name=N'joblimits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'jobLimits', @level2type=N'COLUMN',@level2name=N'joblimits'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'joblimits' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'jobLimits', @level2type=N'COLUMN',@level2name=N'joblimits'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'jobLimits', @level2type=N'COLUMN',@level2name=N'joblimits'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'jobLimits', @level2type=N'COLUMN',@level2name=N'joblimits'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'jobLimits', @level2type=N'COLUMN',@level2name=N'joblimits'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'joblimits' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'jobLimits', @level2type=N'COLUMN',@level2name=N'joblimits'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'jobLimits' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'jobLimits', @level2type=N'COLUMN',@level2name=N'joblimits'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'jobLimits', @level2type=N'COLUMN',@level2name=N'joblimits'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'jobLimits', @level2type=N'COLUMN',@level2name=N'joblimits'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'jobLimits', @level2type=N'COLUMN',@level2name=N'joblimits'
GO
EXEC sys.sp_addextendedproperty @name=N'AlternateBackShade', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'jobLimits'
GO
EXEC sys.sp_addextendedproperty @name=N'AlternateBackThemeColorIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'jobLimits'
GO
EXEC sys.sp_addextendedproperty @name=N'AlternateBackTint', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'jobLimits'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'jobLimits'
GO
EXEC sys.sp_addextendedproperty @name=N'BackShade', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'jobLimits'
GO
EXEC sys.sp_addextendedproperty @name=N'BackTint', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'jobLimits'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetForeThemeColorIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'jobLimits'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetGridlinesThemeColorIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'jobLimits'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'26/08/2009 16:44:19' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'jobLimits'
GO
EXEC sys.sp_addextendedproperty @name=N'DisplayViewsOnSharePointSite', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'jobLimits'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterOnLoad', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'jobLimits'
GO
EXEC sys.sp_addextendedproperty @name=N'HideNewField', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'jobLimits'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'30/09/2010 09:27:49' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'jobLimits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'jobLimits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'jobLimits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'jobLimits'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'jobLimits' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'jobLimits'
GO
EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'jobLimits'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'11' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'jobLimits'
GO
EXEC sys.sp_addextendedproperty @name=N'ThemeFontIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'jobLimits'
GO
EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'jobLimits'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'jobLimits'
GO
/****** Object:  Table [dbo].[secondaryCallOutFee]    Script Date: 12/01/2014 11:42:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[secondaryCallOutFee](
	[callOutFee] [float] NOT NULL,
 CONSTRAINT [PK_secondaryCallOutFee] PRIMARY KEY CLUSTERED 
(
	[callOutFee] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subcontractor]    Script Date: 12/01/2014 11:42:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subcontractor](
	[SubContractor] [nvarchar](255) NOT NULL,
	[Address] [nvarchar](255) NULL,
	[Address2] [nvarchar](255) NULL,
	[Town/City] [nvarchar](255) NULL,
	[County] [nvarchar](255) NULL,
	[PostCode] [nvarchar](255) NULL,
	[Email Address] [nvarchar](255) NULL,
	[Phone No] [nvarchar](255) NULL,
 CONSTRAINT [PK_Subcontractor] PRIMARY KEY CLUSTERED 
(
	[SubContractor] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'SubContractor'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'SubContractor'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'SubContractor'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'SubContractor'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'SubContractor'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'SubContractor'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'SubContractor'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'4050' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'SubContractor'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'SubContractor'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'SubContractor'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'SubContractor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'SubContractor'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'SubContractor'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'SubContractor'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'SubContractor'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'SubContractor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'SubContractor'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Subcontractor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'SubContractor'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'SubContractor'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'SubContractor'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Address' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Address' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Subcontractor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Address2'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Address2'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Address2'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Address2'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Address2'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Address2'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Address2'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Address2'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Address2'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Address2'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Address2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Address2'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Address2'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Address2'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Address2'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Address2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Address2'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Subcontractor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Address2'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Address2'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Address2'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Town/City'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Town/City'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Town/City'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Town/City'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Town/City'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Town/City'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Town/City'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Town/City'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Town/City'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Town/City'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Town/City' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Town/City'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Town/City'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Town/City'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Town/City'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Town/City' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Town/City'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Subcontractor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Town/City'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Town/City'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Town/City'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'County'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'County'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'County'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'County'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'County'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'County'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'County'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'County'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'County'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'County'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'County' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'County'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'County'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'County'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'County'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'County' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'County'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Subcontractor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'County'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'County'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'County'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'PostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'PostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'PostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'PostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'PostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'PostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'PostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'PostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'PostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'PostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'PostCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'PostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'PostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'PostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'PostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'PostCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'PostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Subcontractor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'PostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'PostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'PostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Email Address'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Email Address'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Email Address'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Email Address'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Email Address'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Email Address'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Email Address'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Email Address'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Email Address'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Email Address'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Email Address' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Email Address'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Email Address'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Email Address'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Email Address'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Email Address' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Email Address'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Subcontractor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Email Address'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Email Address'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Email Address'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Phone No'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Phone No'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Phone No'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Phone No'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Phone No'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Phone No'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Phone No'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Phone No'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Phone No'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Phone No'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Phone No' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Phone No'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Phone No'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Phone No'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Phone No'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Phone No' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Phone No'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Subcontractor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Phone No'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Phone No'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor', @level2type=N'COLUMN',@level2name=N'Phone No'
GO
EXEC sys.sp_addextendedproperty @name=N'AlternateBackShade', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor'
GO
EXEC sys.sp_addextendedproperty @name=N'AlternateBackThemeColorIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor'
GO
EXEC sys.sp_addextendedproperty @name=N'AlternateBackTint', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor'
GO
EXEC sys.sp_addextendedproperty @name=N'BackShade', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor'
GO
EXEC sys.sp_addextendedproperty @name=N'BackTint', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetForeThemeColorIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetGridlinesThemeColorIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'07/10/2010 15:49:48' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor'
GO
EXEC sys.sp_addextendedproperty @name=N'DisplayViewsOnSharePointSite', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterOnLoad', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor'
GO
EXEC sys.sp_addextendedproperty @name=N'HideNewField', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'07/10/2010 15:55:25' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=N'[Subcontractor].[SubContractor]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Subcontractor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor'
GO
EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'54' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor'
GO
EXEC sys.sp_addextendedproperty @name=N'ThemeFontIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor'
GO
EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Subcontractor'
GO
/****** Object:  Table [dbo].[Switchboard Items]    Script Date: 12/01/2014 11:42:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Switchboard Items](
	[SwitchboardID] [int] NOT NULL,
	[ItemNumber] [smallint] NOT NULL,
	[ItemText] [nvarchar](255) NULL,
	[Command] [smallint] NULL,
	[Argument] [nvarchar](50) NULL,
 CONSTRAINT [aaaaaSwitchboard Items_PK] PRIMARY KEY NONCLUSTERED 
(
	[SwitchboardID] ASC,
	[ItemNumber] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'SwitchboardID'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'SwitchboardID'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'SwitchboardID'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'SwitchboardID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'SwitchboardID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'SwitchboardID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'SwitchboardID'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'SwitchboardID'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'SwitchboardID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'SwitchboardID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'SwitchboardID'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'SwitchboardID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'SwitchboardID'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'SwitchboardID'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'SwitchboardID'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'SwitchboardID'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'SwitchboardID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'SwitchboardID'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Switchboard Items' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'SwitchboardID'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'SwitchboardID'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'ItemNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'ItemNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'ItemNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'ItemNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'ItemNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'ItemNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'ItemNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'ItemNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'ItemNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterLookup', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'ItemNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'ItemNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'ItemNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ItemNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'ItemNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'ItemNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'ItemNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'ItemNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ItemNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'ItemNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Switchboard Items' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'ItemNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'ItemNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'ItemText'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'ItemText'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'ItemText'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'ItemText'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'ItemText'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'ItemText'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'4815' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'ItemText'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'ItemText'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterLookup', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'ItemText'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'ItemText'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ItemText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'ItemText'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'ItemText'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'ItemText'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'ItemText'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ItemText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'ItemText'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Switchboard Items' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'ItemText'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'ItemText'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'Command'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'Command'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'Command'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'Command'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'Command'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'Command'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'Command'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'Command'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'Command'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterLookup', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'Command'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'Command'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'Command'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Command' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'Command'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'Command'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'Command'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'Command'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Command' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'Command'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Switchboard Items' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'Command'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'Command'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'Argument'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'Argument'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'Argument'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'Argument'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'Argument'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'Argument'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'3150' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'Argument'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'Argument'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterLookup', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'Argument'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'Argument'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Argument' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'Argument'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'Argument'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'Argument'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'Argument'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Argument' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'Argument'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Switchboard Items' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'Argument'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items', @level2type=N'COLUMN',@level2name=N'Argument'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'06/10/2010 15:13:01' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'06/10/2010 15:13:01' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Switchboard Items' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'31' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Switchboard Items'
GO
/****** Object:  Table [dbo].[Travelodge]    Script Date: 12/01/2014 11:42:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Travelodge](
	[SiteNo] [nvarchar](255) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[Address2] [nvarchar](255) NULL,
	[Address3] [nvarchar](255) NULL,
	[Address4] [nvarchar](255) NULL,
	[Town/City] [nvarchar](255) NULL,
	[County] [nvarchar](255) NULL,
	[Post Code] [nvarchar](255) NULL,
	[Allocation] [nvarchar](255) NULL,
 CONSTRAINT [PK_Travelodge] PRIMARY KEY CLUSTERED 
(
	[SiteNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trades]    Script Date: 12/01/2014 11:42:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trades](
	[trades] [nvarchar](50) NULL
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Trades', @level2type=N'COLUMN',@level2name=N'trades'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Trades', @level2type=N'COLUMN',@level2name=N'trades'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Trades', @level2type=N'COLUMN',@level2name=N'trades'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Trades', @level2type=N'COLUMN',@level2name=N'trades'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Trades', @level2type=N'COLUMN',@level2name=N'trades'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'trades' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Trades', @level2type=N'COLUMN',@level2name=N'trades'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Trades', @level2type=N'COLUMN',@level2name=N'trades'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Trades', @level2type=N'COLUMN',@level2name=N'trades'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Trades', @level2type=N'COLUMN',@level2name=N'trades'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'trades' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Trades', @level2type=N'COLUMN',@level2name=N'trades'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Trades' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Trades', @level2type=N'COLUMN',@level2name=N'trades'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Trades', @level2type=N'COLUMN',@level2name=N'trades'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Trades'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'07/10/2010 09:08:54' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Trades'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'07/10/2010 09:09:20' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Trades'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Trades' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Trades'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'14' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Trades'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Trades'
GO
/****** Object:  Table [dbo].[Users]    Script Date: 12/01/2014 11:42:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[enteredby] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[enteredby] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'enteredby'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'enteredby'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'enteredby'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'enteredby'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'enteredby'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'enteredby'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'enteredby'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'2055' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'enteredby'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'enteredby'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'enteredby'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'enteredby' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'enteredby'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'enteredby'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'enteredby'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'enteredby'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'enteredby' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'enteredby'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Users' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'enteredby'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'enteredby'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'enteredby'
GO
EXEC sys.sp_addextendedproperty @name=N'AlternateBackShade', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users'
GO
EXEC sys.sp_addextendedproperty @name=N'AlternateBackThemeColorIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users'
GO
EXEC sys.sp_addextendedproperty @name=N'AlternateBackTint', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users'
GO
EXEC sys.sp_addextendedproperty @name=N'BackShade', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users'
GO
EXEC sys.sp_addextendedproperty @name=N'BackTint', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetForeThemeColorIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetGridlinesThemeColorIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'07/10/2010 09:09:42' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users'
GO
EXEC sys.sp_addextendedproperty @name=N'DisplayViewsOnSharePointSite', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterOnLoad', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users'
GO
EXEC sys.sp_addextendedproperty @name=N'HideNewField', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'07/10/2010 09:10:05' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Users' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users'
GO
EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users'
GO
EXEC sys.sp_addextendedproperty @name=N'ThemeFontIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users'
GO
EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users'
GO
/****** Object:  View [dbo].[TravelodgeNameQuery]    Script Date: 12/01/2014 11:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[TravelodgeNameQuery]
AS
SELECT Travelodge.Name
FROM Travelodge
GO
/****** Object:  UserDefinedFunction [dbo].[Travelodge History]    Script Date: 12/01/2014 11:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Travelodge History] (@Forms___Travelodge___SiteNo1 varchar (255)
) 
RETURNS TABLE 
AS RETURN (SELECT FMIncidents."MBC Job No", FMIncidents.SiteNo, FMIncidents."Client Job No", FMIncidents.Problem, FMIncidents.Priority, FMIncidents.DateOpened, FMIncidents.DateClosed, FMIncidents.SubContractor
FROM FMIncidents
WHERE (((FMIncidents.SiteNo)=@Forms___Travelodge___SiteNo1)))
GO
/****** Object:  UserDefinedFunction [dbo].[Travelodge Address Query]    Script Date: 12/01/2014 11:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Travelodge Address Query] () 
RETURNS TABLE 
AS RETURN (SELECT TOP 100 PERCENT Travelodge.SiteNo
FROM Travelodge
ORDER BY Travelodge.SiteNo)
GO
/****** Object:  View [dbo].[Trade Type Query]    Script Date: 12/01/2014 11:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Trade Type Query]
AS
SELECT Trades.trades
FROM Trades
GO
/****** Object:  UserDefinedFunction [dbo].[Subcontractor Query]    Script Date: 12/01/2014 11:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Subcontractor Query] () 
RETURNS TABLE 
AS RETURN (SELECT TOP 100 PERCENT Subcontractor.SubContractor
FROM Subcontractor
ORDER BY Subcontractor.SubContractor)
GO
/****** Object:  View [dbo].[siteno]    Script Date: 12/01/2014 11:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[siteno]
AS
SELECT Travelodge.SiteNo
FROM Travelodge
GO
/****** Object:  View [dbo].[ResponseTime Query]    Script Date: 12/01/2014 11:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ResponseTime Query]
AS
SELECT ResponseTime.ResponseTime
FROM ResponseTime
GO
/****** Object:  View [dbo].[initialCallOut Query]    Script Date: 12/01/2014 11:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[initialCallOut Query]
AS
SELECT initialCallOut.initialCallOut
FROM initialCallOut
GO
/****** Object:  View [dbo].[Order Type Query]    Script Date: 12/01/2014 11:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Order Type Query]
AS
SELECT "Order Type".ordertype
FROM "Order Type"
GO
/****** Object:  View [dbo].[qryOpenReactiveCalls]    Script Date: 12/01/2014 11:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[qryOpenReactiveCalls]
AS
SELECT reactiveCallOut."MBC Job No", reactiveCallOut."Client Job No", reactiveCallOut.siteName, reactiveCallOut.Priority, reactiveCallOut.OrderType, reactiveCallOut.Problem, reactiveCallOut.currentStatus
FROM reactiveCallOut
WHERE (((reactiveCallOut.currentStatus)<>'CLOSED'))
GO
/****** Object:  View [dbo].[qryOpenCalls]    Script Date: 12/01/2014 11:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[qryOpenCalls]
AS
SELECT     [MBC Job No], [Client Job No], siteName, Priority, OrderType, currentStatus, SubContractor
FROM         dbo.FMIncidentsFM261
WHERE     (currentStatus <> 'CLOSED')
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "FMIncidentsFM261"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 236
               Right = 259
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 3090
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'qryOpenCalls'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'qryOpenCalls'
GO
/****** Object:  UserDefinedFunction [dbo].[qryInvoice]    Script Date: 12/01/2014 11:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[qryInvoice] (@Me___MBC_Job_No1 varchar (255)
) 
RETURNS TABLE 
AS RETURN (SELECT FMIncidents."MBC Job No", FMIncidents."Client Job No", FMIncidents.SiteNo, FMIncidents.OrderType, FMIncidents.Priority, FMIncidents.Problem, FMIncidents.materials, FMIncidents.labour, FMIncidents.totalCost
FROM FMIncidents
WHERE (((FMIncidents."MBC Job No")='[MBC Job No] = ' + @Me___MBC_Job_No1)))
GO
/****** Object:  View [dbo].[qryClosedReactiveCalls]    Script Date: 12/01/2014 11:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[qryClosedReactiveCalls]
AS
SELECT reactiveCallOut."MBC Job No", reactiveCallOut."Client Job No", reactiveCallOut.siteName, reactiveCallOut.Priority, reactiveCallOut.OrderType, reactiveCallOut.Problem, reactiveCallOut.currentStatus
FROM reactiveCallOut
WHERE (((reactiveCallOut.currentStatus)='CLOSED'))
GO
/****** Object:  View [dbo].[qryClosedCalls]    Script Date: 12/01/2014 11:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[qryClosedCalls]
AS
SELECT FMIncidents."MBC Job No", FMIncidents."Client Job No", FMIncidents.siteName, FMIncidents.Priority, FMIncidents.OrderType, FMIncidents.currentStatus, FMIncidents.SubContractor
FROM FMIncidents
WHERE (((FMIncidents.currentStatus)='CLOSED'))
GO
/****** Object:  View [dbo].[Priority Query]    Script Date: 12/01/2014 11:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Priority Query]
AS
SELECT Priority.priority
FROM Priority
GO
/****** Object:  View [dbo].[Jobs with Approval]    Script Date: 12/01/2014 11:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Jobs with Approval]
AS
SELECT FMIncidents."MBC Job No", FMIncidents."Client Job No", FMIncidents.SiteNo, FMIncidents.currentStatus, FMIncidents.siteName, FMIncidents.siteAddress, FMIncidents.siteStreet, FMIncidents.siteTown, FMIncidents.sitePostCode
FROM FMIncidents
WHERE (((FMIncidents.currentStatus)='Uplift Approved'))
GO
/****** Object:  View [dbo].[Jobs Awaiting Approval]    Script Date: 12/01/2014 11:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Jobs Awaiting Approval]
AS
SELECT FMIncidents."MBC Job No", FMIncidents."Client Job No", FMIncidents.SiteNo, FMIncidents.currentStatus, FMIncidents.siteName, FMIncidents.siteAddress, FMIncidents.siteStreet, FMIncidents.siteTown, FMIncidents.sitePostCode
FROM FMIncidents
WHERE (((FMIncidents.currentStatus)='Quote/Uplift'))
GO
/****** Object:  UserDefinedFunction [dbo].[jobLimitsqry]    Script Date: 12/01/2014 11:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[jobLimitsqry] () 
RETURNS TABLE 
AS RETURN (SELECT TOP 100 PERCENT jobLimits.joblimits
FROM jobLimits
ORDER BY jobLimits.joblimits)
GO
/****** Object:  View [dbo].[FMIncidents Query1]    Script Date: 12/01/2014 11:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[FMIncidents Query1]
AS
SELECT FMIncidents.totalTimeOnSite
FROM FMIncidents
GO
/****** Object:  View [dbo].[FMIncidents Query]    Script Date: 12/01/2014 11:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[FMIncidents Query]
AS
SELECT FMIncidents.timeOnSite, FMIncidents.timeOffSite
FROM FMIncidents
GO
/****** Object:  UserDefinedFunction [dbo].[Entered By Query]    Script Date: 12/01/2014 11:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Entered By Query] () 
RETURNS TABLE 
AS RETURN (SELECT TOP 100 PERCENT Users.enteredby
FROM Users
ORDER BY Users.enteredby)
GO
/****** Object:  View [dbo].[Current Status Query]    Script Date: 12/01/2014 11:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Current Status Query]
AS
SELECT "Current Status".currentStatus
FROM "Current Status"
GO
/****** Object:  View [dbo].[Closed Jobs + 6 Days Query]    Script Date: 12/01/2014 11:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Closed Jobs + 6 Days Query]
AS
SELECT FMIncidents."MBC Job No", FMIncidents."Client Job No", FMIncidents.SiteNo, FMIncidents.currentStatus, FMIncidents.siteName, FMIncidents.siteAddress, FMIncidents.siteStreet, FMIncidents.siteTown, FMIncidents.sitePostCode, FMIncidents.DateClosed, FMIncidents.totalCost
FROM FMIncidents
WHERE (((FMIncidents.DateClosed)=convert(datetime,convert(varchar,getdate(),1),1)-6) AND ((FMIncidents.totalCost) Is Null))
GO
/****** Object:  View [dbo].[callOutRate Query]    Script Date: 12/01/2014 11:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[callOutRate Query]
AS
SELECT callOutRate.rate
FROM callOutRate
GO
/****** Object:  View [dbo].[callOutFee Query]    Script Date: 12/01/2014 11:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[callOutFee Query]
AS
SELECT callOutFee.callOutFee
FROM callOutFee
GO
/****** Object:  View [dbo].[All Closed Jobs]    Script Date: 12/01/2014 11:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[All Closed Jobs]
AS
SELECT FMIncidents."MBC Job No", FMIncidents."Client Job No", FMIncidents.SiteNo, FMIncidents.currentStatus, FMIncidents.siteName, FMIncidents.siteAddress, FMIncidents.siteStreet, FMIncidents.siteTown, FMIncidents.sitePostCode
FROM FMIncidents
WHERE (((FMIncidents.currentStatus)='CLOSED'))
GO
/****** Object:  Default [DF_FMIncidents_materials]    Script Date: 12/01/2014 11:42:51 ******/
ALTER TABLE [dbo].[FMIncidents] ADD  CONSTRAINT [DF_FMIncidents_materials]  DEFAULT ((0.00)) FOR [materials]
GO
/****** Object:  Default [DF_FMIncidents_labour]    Script Date: 12/01/2014 11:42:51 ******/
ALTER TABLE [dbo].[FMIncidents] ADD  CONSTRAINT [DF_FMIncidents_labour]  DEFAULT ((0.00)) FOR [labour]
GO
/****** Object:  Default [DF_FMIncidents_totalCost]    Script Date: 12/01/2014 11:42:51 ******/
ALTER TABLE [dbo].[FMIncidents] ADD  CONSTRAINT [DF_FMIncidents_totalCost]  DEFAULT ((0.00)) FOR [totalCost]
GO
/****** Object:  Default [DF_FMIncidents_subContractorMaterials]    Script Date: 12/01/2014 11:42:51 ******/
ALTER TABLE [dbo].[FMIncidents] ADD  CONSTRAINT [DF_FMIncidents_subContractorMaterials]  DEFAULT ((0.00)) FOR [subContractorMaterials]
GO
/****** Object:  Default [DF_FMIncidents_subContractorlabour]    Script Date: 12/01/2014 11:42:51 ******/
ALTER TABLE [dbo].[FMIncidents] ADD  CONSTRAINT [DF_FMIncidents_subContractorlabour]  DEFAULT ((0.00)) FOR [subContractorlabour]
GO
/****** Object:  Default [DF_FMIncidents_subContractorcosts]    Script Date: 12/01/2014 11:42:51 ******/
ALTER TABLE [dbo].[FMIncidents] ADD  CONSTRAINT [DF_FMIncidents_subContractorcosts]  DEFAULT ((0.00)) FOR [subContractorcosts]
GO
/****** Object:  Default [DF_FMIncidents_subContractorOverheads]    Script Date: 12/01/2014 11:42:51 ******/
ALTER TABLE [dbo].[FMIncidents] ADD  CONSTRAINT [DF_FMIncidents_subContractorOverheads]  DEFAULT ((0.00)) FOR [subContractorOverheads]
GO
/****** Object:  Default [DF_FMIncidents_subContractorProfit]    Script Date: 12/01/2014 11:42:51 ******/
ALTER TABLE [dbo].[FMIncidents] ADD  CONSTRAINT [DF_FMIncidents_subContractorProfit]  DEFAULT ((0.00)) FOR [subContractorProfit]
GO
/****** Object:  Default [DF_FMIncidents_subContractorTotal]    Script Date: 12/01/2014 11:42:51 ******/
ALTER TABLE [dbo].[FMIncidents] ADD  CONSTRAINT [DF_FMIncidents_subContractorTotal]  DEFAULT ((0.00)) FOR [subContractorTotal]
GO
/****** Object:  Default [DF_FMIncidents_overHeads]    Script Date: 12/01/2014 11:42:51 ******/
ALTER TABLE [dbo].[FMIncidents] ADD  CONSTRAINT [DF_FMIncidents_overHeads]  DEFAULT ((0.00)) FOR [overHeads]
GO
/****** Object:  Default [DF_FMIncidents_materialsProfit]    Script Date: 12/01/2014 11:42:51 ******/
ALTER TABLE [dbo].[FMIncidents] ADD  CONSTRAINT [DF_FMIncidents_materialsProfit]  DEFAULT ((0.00)) FOR [materialsProfit]
GO
/****** Object:  Default [DF_FMIncidents_profitOnPlant]    Script Date: 12/01/2014 11:42:51 ******/
ALTER TABLE [dbo].[FMIncidents] ADD  CONSTRAINT [DF_FMIncidents_profitOnPlant]  DEFAULT ((0.00)) FOR [profitOnPlant]
GO
/****** Object:  Default [DF__FMInciden__jobSh__164452B1]    Script Date: 12/01/2014 11:42:51 ******/
ALTER TABLE [dbo].[FMIncidents] ADD  CONSTRAINT [DF__FMInciden__jobSh__164452B1]  DEFAULT ((0)) FOR [jobSheetSigned]
GO
/****** Object:  Default [DF_FMIncidents_callOutFee]    Script Date: 12/01/2014 11:42:51 ******/
ALTER TABLE [dbo].[FMIncidents] ADD  CONSTRAINT [DF_FMIncidents_callOutFee]  DEFAULT ((0.00)) FOR [callOutFee]
GO
/****** Object:  Default [DF_FMIncidents_totalToInvoice]    Script Date: 12/01/2014 11:42:51 ******/
ALTER TABLE [dbo].[FMIncidents] ADD  CONSTRAINT [DF_FMIncidents_totalToInvoice]  DEFAULT ((0.00)) FOR [totalToInvoice]
GO
/****** Object:  Default [DF_FMIncidents_subContractorInvoicePaid]    Script Date: 12/01/2014 11:42:51 ******/
ALTER TABLE [dbo].[FMIncidents] ADD  CONSTRAINT [DF_FMIncidents_subContractorInvoicePaid]  DEFAULT ((0)) FOR [subContractorInvoicePaid]
GO
/****** Object:  Default [DF_little_chef_materialsProfit]    Script Date: 12/01/2014 11:42:51 ******/
ALTER TABLE [dbo].[little_chef] ADD  CONSTRAINT [DF_little_chef_materialsProfit]  DEFAULT ((0.00)) FOR [materialsProfit]
GO
/****** Object:  Default [DF_little_chef_subcontractorProfit]    Script Date: 12/01/2014 11:42:51 ******/
ALTER TABLE [dbo].[little_chef] ADD  CONSTRAINT [DF_little_chef_subcontractorProfit]  DEFAULT ((0.00)) FOR [subContractorProfit]
GO
/****** Object:  Default [DF_reactiveCallOut_materialsProfit]    Script Date: 12/01/2014 11:42:51 ******/
ALTER TABLE [dbo].[reactiveCallOut.org] ADD  CONSTRAINT [DF_reactiveCallOut_materialsProfit]  DEFAULT ((0.00)) FOR [materialsProfit]
GO
/****** Object:  Default [DF_reactiveCallOut_subcontractorProfit]    Script Date: 12/01/2014 11:42:51 ******/
ALTER TABLE [dbo].[reactiveCallOut.org] ADD  CONSTRAINT [DF_reactiveCallOut_subcontractorProfit]  DEFAULT ((0.00)) FOR [subContractorProfit]
GO

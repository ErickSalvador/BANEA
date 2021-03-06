/****** Object:  Database [banea-bd]    Script Date: 17/12/2021 21:03:09 ******/
CREATE DATABASE [banea-bd]  (EDITION = 'Basic', SERVICE_OBJECTIVE = 'Basic', MAXSIZE = 1 GB) WITH CATALOG_COLLATION = SQL_Latin1_General_CP1_CI_AS;
GO
ALTER DATABASE [banea-bd] SET COMPATIBILITY_LEVEL = 150
GO
ALTER DATABASE [banea-bd] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [banea-bd] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [banea-bd] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [banea-bd] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [banea-bd] SET ARITHABORT OFF 
GO
ALTER DATABASE [banea-bd] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [banea-bd] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [banea-bd] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [banea-bd] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [banea-bd] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [banea-bd] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [banea-bd] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [banea-bd] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [banea-bd] SET ALLOW_SNAPSHOT_ISOLATION ON 
GO
ALTER DATABASE [banea-bd] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [banea-bd] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [banea-bd] SET  MULTI_USER 
GO
ALTER DATABASE [banea-bd] SET ENCRYPTION ON
GO
ALTER DATABASE [banea-bd] SET QUERY_STORE = ON
GO
ALTER DATABASE [banea-bd] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 7), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 10, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
/*** The scripts of database scoped configurations in Azure should be executed inside the target database connection. ***/
GO
-- ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 8;
GO
/****** Object:  Table [dbo].[locales]    Script Date: 17/12/2021 21:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[locales](
	[nom_loc] [varchar](50) NULL,
	[tel_loc] [decimal](10, 0) NULL,
	[dir_loc] [varchar](200) NULL,
	[eml_loc] [varchar](50) NOT NULL,
	[pwd_loc] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[eml_loc] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ordenes]    Script Date: 17/12/2021 21:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ordenes](
	[ide_ord] [int] NOT NULL,
	[eml_loc] [varchar](50) NULL,
	[nom_ord] [varchar](50) NOT NULL,
	[des_ord] [varchar](200) NULL,
	[pre_ord] [decimal](6, 2) NULL,
	[vig_ord] [char](16) NULL,
	[stt_ord] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[ide_ord] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[ordenesView]    Script Date: 17/12/2021 21:03:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[ordenesView] (ord, des, pre, vig, loc, dir, tel)
as select nom_ord, des_ord, pre_ord, vig_ord, nom_loc, dir_loc, tel_loc from ordenes as a join locales as b on a.eml_loc = b.eml_loc
GO
INSERT [dbo].[locales] ([nom_loc], [tel_loc], [dir_loc], [eml_loc], [pwd_loc]) VALUES (N'Pescuezitos Alan', CAST(5500129424 AS Decimal(10, 0)), N'Andamos por aqui y por alla.', N'alixterM3@gmail.com', N'123456Aa')
INSERT [dbo].[locales] ([nom_loc], [tel_loc], [dir_loc], [eml_loc], [pwd_loc]) VALUES (N'Abarrotes Mariana II', CAST(5511023822 AS Decimal(10, 0)), N'Andamos por aqui y por alla.', N'arturolopez889@gmail.com', N'123456Aa')
INSERT [dbo].[locales] ([nom_loc], [tel_loc], [dir_loc], [eml_loc], [pwd_loc]) VALUES (N'Panificadora Espiga', CAST(5557933123 AS Decimal(10, 0)), N'Andamos por aqui y por alla.', N'esp_pan@gmail.com', N'123456Aa')
INSERT [dbo].[locales] ([nom_loc], [tel_loc], [dir_loc], [eml_loc], [pwd_loc]) VALUES (N'Tortugas Goku', CAST(5555123456 AS Decimal(10, 0)), N'Andamos por aqui y por alla.', N'goku.Tortas@gmail.com', N'123456Aa')
INSERT [dbo].[locales] ([nom_loc], [tel_loc], [dir_loc], [eml_loc], [pwd_loc]) VALUES (N'Pollos Perez', CAST(5655939211 AS Decimal(10, 0)), N'Andamos por aqui y por alla.', N'juan.P123@gmail.com', N'123456Aa')
INSERT [dbo].[locales] ([nom_loc], [tel_loc], [dir_loc], [eml_loc], [pwd_loc]) VALUES (N'Fonda La Oficina', CAST(5509876543 AS Decimal(10, 0)), N'Andamos por aqui y por alla.', N'laOficina@gmail.com', N'123456Aa')
INSERT [dbo].[locales] ([nom_loc], [tel_loc], [dir_loc], [eml_loc], [pwd_loc]) VALUES (N'Tacos Los Faroles', CAST(5578367932 AS Decimal(10, 0)), N'Andamos por aqui y por alla.', N'losFaroles_Tacos@gmail.com', N'123456Aa')
INSERT [dbo].[locales] ([nom_loc], [tel_loc], [dir_loc], [eml_loc], [pwd_loc]) VALUES (N'Fonda Martita', CAST(5509755382 AS Decimal(10, 0)), N'Andamos por aqui y por alla.', N'marta_robles@gmail.com', N'123456Aa')
INSERT [dbo].[locales] ([nom_loc], [tel_loc], [dir_loc], [eml_loc], [pwd_loc]) VALUES (N'Erstank', CAST(7751006957 AS Decimal(10, 0)), N'Avenida Siempre Viva No. 7', N'root', N'root')
INSERT [dbo].[locales] ([nom_loc], [tel_loc], [dir_loc], [eml_loc], [pwd_loc]) VALUES (N'Expendio Rosas', CAST(5579129311 AS Decimal(10, 0)), N'Andamos por aqui y por alla', N'rosas_Pan@gmail.com', N'123456Aa')
INSERT [dbo].[locales] ([nom_loc], [tel_loc], [dir_loc], [eml_loc], [pwd_loc]) VALUES (N'Tacos El Primo', CAST(5556121719 AS Decimal(10, 0)), N'Andamos por aqui y por alla.', N'tacos.Primo@gmail.com', N'123456Aa')
INSERT [dbo].[locales] ([nom_loc], [tel_loc], [dir_loc], [eml_loc], [pwd_loc]) VALUES (N'Queseria de mi sin ti', CAST(5599081236 AS Decimal(10, 0)), N'Andamos por aqui y por alla.', N'yeni.love43@gmail.com', N'123456Aa')
GO
INSERT [dbo].[ordenes] ([ide_ord], [eml_loc], [nom_ord], [des_ord], [pre_ord], [vig_ord], [stt_ord]) VALUES (1, N'tacos.Primo@gmail.com', N'Orden de Suadero', N'5 tacos de suadero con limon, cebolla y cilantro', CAST(40.00 AS Decimal(6, 2)), N'2021-12-18T17:30', N'A')
INSERT [dbo].[ordenes] ([ide_ord], [eml_loc], [nom_ord], [des_ord], [pre_ord], [vig_ord], [stt_ord]) VALUES (2, N'goku.Tortas@gmail.com', N'Torta cubana', N'', CAST(35.50 AS Decimal(6, 2)), N'2021-12-19T15:30', N'A')
INSERT [dbo].[ordenes] ([ide_ord], [eml_loc], [nom_ord], [des_ord], [pre_ord], [vig_ord], [stt_ord]) VALUES (3, N'laOficina@gmail.com', N'Chile relleno', N'1 plato de chile relleno acompañado de papas', CAST(20.00 AS Decimal(6, 2)), N'2021-12-18T17:00', N'A')
INSERT [dbo].[ordenes] ([ide_ord], [eml_loc], [nom_ord], [des_ord], [pre_ord], [vig_ord], [stt_ord]) VALUES (4, N'esp_pan@gmail.com', N'Paquete de pan', N'10 bolillos', CAST(10.00 AS Decimal(6, 2)), N'2021-12-22T20:30', N'A')
INSERT [dbo].[ordenes] ([ide_ord], [eml_loc], [nom_ord], [des_ord], [pre_ord], [vig_ord], [stt_ord]) VALUES (5, N'marta_robles@gmail.com', N'Flautas', N'5 flautas de papa con queso, crema y salsa', CAST(45.50 AS Decimal(6, 2)), N'2021-12-20T16:30', N'A')
INSERT [dbo].[ordenes] ([ide_ord], [eml_loc], [nom_ord], [des_ord], [pre_ord], [vig_ord], [stt_ord]) VALUES (6, N'goku.Tortas@gmail.com', N'2 Tortas toluqueñas', N'2 tortas toluqueñas con salsa de chipotle y extra queso.', CAST(52.00 AS Decimal(6, 2)), N'2021-12-21T19:45', N'A')
INSERT [dbo].[ordenes] ([ide_ord], [eml_loc], [nom_ord], [des_ord], [pre_ord], [vig_ord], [stt_ord]) VALUES (7, N'tacos.Primo@gmail.com', N'Orden de Bistek', N'4 tacos de bistek con limon, cebolla y cilantro', CAST(35.00 AS Decimal(6, 2)), N'2021-12-19T19:30', N'A')
INSERT [dbo].[ordenes] ([ide_ord], [eml_loc], [nom_ord], [des_ord], [pre_ord], [vig_ord], [stt_ord]) VALUES (8, N'tacos.Primo@gmail.com', N'Orden mixta', N'2 tacos de suadero, 1 de bistek y 2 campechanos con limon, cebolla y cilantro', CAST(40.00 AS Decimal(6, 2)), N'2021-12-21T21:50', N'A')
INSERT [dbo].[ordenes] ([ide_ord], [eml_loc], [nom_ord], [des_ord], [pre_ord], [vig_ord], [stt_ord]) VALUES (9, N'laOficina@gmail.com', N'Sopa de coditos', N'1 Plato de sopa de coditos', CAST(15.00 AS Decimal(6, 2)), N'2021-12-18T16:30', N'A')
INSERT [dbo].[ordenes] ([ide_ord], [eml_loc], [nom_ord], [des_ord], [pre_ord], [vig_ord], [stt_ord]) VALUES (10, N'esp_pan@gmail.com', N'Paquete de pan', N'4 piezas de pan dulce', CAST(10.00 AS Decimal(6, 2)), N'2021-12-19T10:30', N'A')
INSERT [dbo].[ordenes] ([ide_ord], [eml_loc], [nom_ord], [des_ord], [pre_ord], [vig_ord], [stt_ord]) VALUES (11, N'marta_robles@gmail.com', N'Menu del dia', N'! plato de caldo de verduras y una milanesa con ensalada', CAST(45.50 AS Decimal(6, 2)), N'2021-12-21T15:30', N'A')
INSERT [dbo].[ordenes] ([ide_ord], [eml_loc], [nom_ord], [des_ord], [pre_ord], [vig_ord], [stt_ord]) VALUES (12, N'goku.Tortas@gmail.com', N'Torta de Milanesa', N'', CAST(27.50 AS Decimal(6, 2)), N'2021-12-18T17:30', N'A')
INSERT [dbo].[ordenes] ([ide_ord], [eml_loc], [nom_ord], [des_ord], [pre_ord], [vig_ord], [stt_ord]) VALUES (13, N'laOficina@gmail.com', N'Menu del dia', N'1 plato de arroz, 1 milanesa, frijoles y 4 tortillas', CAST(35.00 AS Decimal(6, 2)), N'2021-12-22T14:30', N'A')
INSERT [dbo].[ordenes] ([ide_ord], [eml_loc], [nom_ord], [des_ord], [pre_ord], [vig_ord], [stt_ord]) VALUES (14, N'marta_robles@gmail.com', N'Orden de Moletes', N'3 molletes preparados con chorizo, queso, salsa y lechuga', CAST(25.50 AS Decimal(6, 2)), N'2021-12-19T14:30', N'A')
INSERT [dbo].[ordenes] ([ide_ord], [eml_loc], [nom_ord], [des_ord], [pre_ord], [vig_ord], [stt_ord]) VALUES (15, N'esp_pan@gmail.com', N'Paquete de pan', N'3 piezas de pan dulce y dos bolillos', CAST(10.00 AS Decimal(6, 2)), N'2021-12-21T9:30 ', N'A')
GO
ALTER TABLE [dbo].[ordenes] ADD  DEFAULT ('A') FOR [stt_ord]
GO
ALTER TABLE [dbo].[ordenes]  WITH CHECK ADD FOREIGN KEY([eml_loc])
REFERENCES [dbo].[locales] ([eml_loc])
GO
/****** Object:  StoredProcedure [dbo].[addLcl]    Script Date: 17/12/2021 21:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[addLcl](@nom VARCHAR(50), @tel DECIMAL(10,0), @dir VARCHAR(200), @eml VARCHAR(50), @pwd VARCHAR(30))
AS
BEGIN
	INSERT INTO locales VALUES (@nom, @tel, @dir, @eml, @pwd)
END
GO
/****** Object:  StoredProcedure [dbo].[bngTbl]    Script Date: 17/12/2021 21:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[bngTbl](@lcl VARCHAR(50), @stt CHAR(1))
AS
BEGIN
	SELECT nom_ord, des_ord, pre_ord, vig_ord FROM ordenes WHERE eml_loc = @lcl AND stt_ord = @stt
END
GO
/****** Object:  StoredProcedure [dbo].[logLcl]    Script Date: 17/12/2021 21:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[logLcl](@eml VARCHAR(50), @pwd VARCHAR(30))
AS
BEGIN
	SELECT nom_loc, eml_loc FROM locales WHERE eml_loc = @eml AND pwd_loc = @pwd
END
GO
/****** Object:  StoredProcedure [dbo].[newOrd]    Script Date: 17/12/2021 21:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[newOrd](@eml VARCHAR(50), @nom VARCHAR(50), @des VARCHAR(200), @pre DECIMAL(6,2), @vig CHAR(1))
AS
BEGIN
	DECLARE @id INT;
	SET @id = (SELECT COUNT(*)+1 FROM ordenes);
	INSERT INTO ordenes VALUES (@id, @eml, @nom, @des, @pre, @vig, 'A');
END
GO
ALTER DATABASE [banea-bd] SET  READ_WRITE 
GO

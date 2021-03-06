USE [el_massar_hotel]
GO
/****** Object:  Table [dbo].[categorie]    Script Date: 17/02/2022 4:05:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categorie](
	[id_categorie] [int] NOT NULL,
	[description] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_categorie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chambre]    Script Date: 17/02/2022 4:05:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chambre](
	[id_chambre] [int] NOT NULL,
	[telchambre] [int] NULL,
	[id_categorie] [int] NULL,
	[id_hotel] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_chambre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[classe]    Script Date: 17/02/2022 4:05:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[classe](
	[nombre_etoile] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[nombre_etoile] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[client]    Script Date: 17/02/2022 4:05:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[client](
	[id_client] [int] NOT NULL,
	[nom_client] [varchar](30) NULL,
	[prenom_client] [varchar](60) NULL,
	[tel_client] [int] NULL,
	[email_client] [varchar](60) NULL,
	[adresse_client] [varchar](100) NULL,
	[code_postal] [int] NULL,
	[ville] [varchar](30) NULL,
	[pays] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_client] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[consommation]    Script Date: 17/02/2022 4:05:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[consommation](
	[id_consommation] [int] NOT NULL,
	[date_consommation] [datetime] NULL,
	[heure_consommation] [time](7) NULL,
	[id_client] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_consommation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hotel]    Script Date: 17/02/2022 4:05:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hotel](
	[id_hotel] [int] NOT NULL,
	[nom_hotel] [varchar](100) NULL,
	[cph] [int] NULL,
	[adresse_h] [varchar](100) NULL,
	[tel_hotel] [int] NULL,
	[nombre_etoile] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_hotel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[offrir]    Script Date: 17/02/2022 4:05:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[offrir](
	[codePrest] [int] NULL,
	[id_hotel] [int] NULL,
	[PrixPrestation] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prestation]    Script Date: 17/02/2022 4:05:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prestation](
	[codePrest] [int] NOT NULL,
	[id_consommation] [int] NULL,
	[DesignationPrest] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[codePrest] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reservation]    Script Date: 17/02/2022 4:05:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reservation](
	[id_reservation] [int] NOT NULL,
	[date_debut] [datetime] NULL,
	[date_fin] [datetime] NULL,
	[datePayeArrhes] [datetime] NULL,
	[MontantArrhes] [float] NULL,
	[id_chambre] [int] NULL,
	[id_client] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_reservation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tarifier]    Script Date: 17/02/2022 4:05:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tarifier](
	[id_categorie] [int] NULL,
	[nombre_etoile] [int] NULL,
	[prixUnitaire] [float] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[chambre]  WITH CHECK ADD FOREIGN KEY([id_categorie])
REFERENCES [dbo].[categorie] ([id_categorie])
GO
ALTER TABLE [dbo].[chambre]  WITH CHECK ADD FOREIGN KEY([id_hotel])
REFERENCES [dbo].[hotel] ([id_hotel])
GO
ALTER TABLE [dbo].[consommation]  WITH CHECK ADD FOREIGN KEY([id_client])
REFERENCES [dbo].[client] ([id_client])
GO
ALTER TABLE [dbo].[hotel]  WITH CHECK ADD FOREIGN KEY([nombre_etoile])
REFERENCES [dbo].[classe] ([nombre_etoile])
GO
ALTER TABLE [dbo].[offrir]  WITH CHECK ADD FOREIGN KEY([codePrest])
REFERENCES [dbo].[prestation] ([codePrest])
GO
ALTER TABLE [dbo].[offrir]  WITH CHECK ADD FOREIGN KEY([id_hotel])
REFERENCES [dbo].[hotel] ([id_hotel])
GO
ALTER TABLE [dbo].[prestation]  WITH CHECK ADD FOREIGN KEY([id_consommation])
REFERENCES [dbo].[consommation] ([id_consommation])
GO
ALTER TABLE [dbo].[reservation]  WITH CHECK ADD FOREIGN KEY([id_chambre])
REFERENCES [dbo].[chambre] ([id_chambre])
GO
ALTER TABLE [dbo].[reservation]  WITH CHECK ADD FOREIGN KEY([id_client])
REFERENCES [dbo].[client] ([id_client])
GO
ALTER TABLE [dbo].[tarifier]  WITH CHECK ADD FOREIGN KEY([id_categorie])
REFERENCES [dbo].[categorie] ([id_categorie])
GO
ALTER TABLE [dbo].[tarifier]  WITH CHECK ADD FOREIGN KEY([nombre_etoile])
REFERENCES [dbo].[classe] ([nombre_etoile])
GO

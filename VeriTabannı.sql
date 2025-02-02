CREATE DATABASE HASTANEOTOMASYON
USE [HASTANEOTOMASYON]
GO
/****** Object:  Table [dbo].[Tbl_Brans]    Script Date: 12.01.2021 12:57:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Brans](
	[Bransid] [tinyint] IDENTITY(1,1) NOT NULL,
	[BransAd] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_Brans] PRIMARY KEY CLUSTERED 
(
	[Bransid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Doktorlar]    Script Date: 12.01.2021 12:57:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Doktorlar](
	[Doktorid] [tinyint] IDENTITY(1,1) NOT NULL,
	[DoktorAd] [varchar](10) NULL,
	[DoktorSoyad] [varchar](10) NULL,
	[DoktorBrans] [varchar](30) NULL,
	[DoktorTc] [char](11) NULL,
	[DoktorSifre] [varchar](4) NULL,
 CONSTRAINT [PK_Tbl_Doktorlar] PRIMARY KEY CLUSTERED 
(
	[Doktorid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Duyurular]    Script Date: 12.01.2021 12:57:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Duyurular](
	[Duyuruid] [smallint] NULL,
	[Duyuru] [varchar](200) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Hastalar]    Script Date: 12.01.2021 12:57:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Hastalar](
	[HastaId] [smallint] IDENTITY(1,1) NOT NULL,
	[HastaAd] [varchar](10) NULL,
	[HastaSoyad] [varchar](10) NULL,
	[HastaTc] [char](11) NULL,
	[HastaTelefon] [varchar](15) NULL,
	[HastaSifre] [varchar](4) NULL,
	[HastaCinsiyet] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Randevular]    Script Date: 12.01.2021 12:57:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Randevular](
	[Randevuid] [int] NULL,
	[RandevuTarih] [varchar](10) NULL,
	[RandevuSaat] [varchar](5) NULL,
	[RandevuBrans] [varchar](30) NULL,
	[RandevuDoktor] [varchar](20) NULL,
	[RandevuDurum] [bit] NULL,
	[HastaTc] [char](11) NULL,
	[HastaSikayet] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Sekreter]    Script Date: 12.01.2021 12:57:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Sekreter](
	[SekreterId] [tinyint] NULL,
	[SekreterAdSoyad] [varchar](50) NULL,
	[SekreterTC] [char](11) NULL,
	[SekreterSifre] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Brans] ON 

INSERT [dbo].[Tbl_Brans] ([Bransid], [BransAd]) VALUES (1, N'GÖZ')
INSERT [dbo].[Tbl_Brans] ([Bransid], [BransAd]) VALUES (2, N'DAHİLİYE')
INSERT [dbo].[Tbl_Brans] ([Bransid], [BransAd]) VALUES (3, N'FİZYOTERAPİ')
INSERT [dbo].[Tbl_Brans] ([Bransid], [BransAd]) VALUES (4, N'KARDİYOLOJİ')
INSERT [dbo].[Tbl_Brans] ([Bransid], [BransAd]) VALUES (5, N'DİŞ')
INSERT [dbo].[Tbl_Brans] ([Bransid], [BransAd]) VALUES (6, N'ÜROLOJİ')
INSERT [dbo].[Tbl_Brans] ([Bransid], [BransAd]) VALUES (7, N'ÇOÇUK HASTALIKLARI')
INSERT [dbo].[Tbl_Brans] ([Bransid], [BransAd]) VALUES (8, N'CİLDİYE')
SET IDENTITY_INSERT [dbo].[Tbl_Brans] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Doktorlar] ON 

INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTc], [DoktorSifre]) VALUES (1, N'YASİN', N'BEYAZ', N'GÖZ', N'11111111111', N'1111')
INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTc], [DoktorSifre]) VALUES (2, N'AYŞE', N'LİLA', N'DAHİLİYE', N'22222222222', N'2222')
INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTc], [DoktorSifre]) VALUES (3, N'TUNAHAN', N'ALTINMEŞE', N'FİZYOTERAPİ', N'33333333333', N'3333')
INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTc], [DoktorSifre]) VALUES (4, N'EMRAH', N'ÇAM', N'DAHİLİYE', N'12547896321', N'2578')
INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTc], [DoktorSifre]) VALUES (5, N'KAMURAN', N'ASLAN', N'CİLDİYE', N'14752365482', N'6594')
INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTc], [DoktorSifre]) VALUES (7, N'MEHMET', N'ÇELİK', N'DİŞ', N'45236587412', N'4625')
INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTc], [DoktorSifre]) VALUES (8, N'RUKİYE', N'ÇELİK', N'ÇOÇUK HASTALIKLARI', N'45236541785', N'7854')
INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTc], [DoktorSifre]) VALUES (9, N'SEDA ', N'KOÇER', N'ÇOÇUK HASTALIKLARI', N'12547896321', N'2655')
SET IDENTITY_INSERT [dbo].[Tbl_Doktorlar] OFF
INSERT [dbo].[Tbl_Duyurular] ([Duyuruid], [Duyuru]) VALUES (1, N'PAZAR GÜNÜ YÖNETİM KURULU TOPLANTISI VAR.')
INSERT [dbo].[Tbl_Duyurular] ([Duyuruid], [Duyuru]) VALUES (2, N'DR. AYŞE LİLA PAZARTESSİ GÜNÜ İZİNLİ')
INSERT [dbo].[Tbl_Duyurular] ([Duyuruid], [Duyuru]) VALUES (NULL, N'SAAT 12.00-13.00 ARASI YEMEK MOLASI')
SET IDENTITY_INSERT [dbo].[Tbl_Hastalar] ON 

INSERT [dbo].[Tbl_Hastalar] ([HastaId], [HastaAd], [HastaSoyad], [HastaTc], [HastaTelefon], [HastaSifre], [HastaCinsiyet]) VALUES (1, N'Ali', N'YETER', N'66666666666', N'05418543568', N'6666', N'ERKEK')
INSERT [dbo].[Tbl_Hastalar] ([HastaId], [HastaAd], [HastaSoyad], [HastaTc], [HastaTelefon], [HastaSifre], [HastaCinsiyet]) VALUES (2, N'MELİH', N'ŞANLI', N'77777777777', N'05363129212', N'7777', N'KADIN')
INSERT [dbo].[Tbl_Hastalar] ([HastaId], [HastaAd], [HastaSoyad], [HastaTc], [HastaTelefon], [HastaSifre], [HastaCinsiyet]) VALUES (3, N'İSMAİL', N'KESER', N'88888888888', N'05216558425', N'8888', N'ERKEK')
INSERT [dbo].[Tbl_Hastalar] ([HastaId], [HastaAd], [HastaSoyad], [HastaTc], [HastaTelefon], [HastaSifre], [HastaCinsiyet]) VALUES (4, N'HAFSA', N'AYAR', N'99999999999', N'05417664110', N'9999', N'KADIN')
INSERT [dbo].[Tbl_Hastalar] ([HastaId], [HastaAd], [HastaSoyad], [HastaTc], [HastaTelefon], [HastaSifre], [HastaCinsiyet]) VALUES (6, N'AHMET', N'KIYI', N'14526987452', N'05255476521', N'1254', N'ERKEK')
INSERT [dbo].[Tbl_Hastalar] ([HastaId], [HastaAd], [HastaSoyad], [HastaTc], [HastaTelefon], [HastaSifre], [HastaCinsiyet]) VALUES (7, N'BERKE', N'TÜY', N'14785693254', N'05417563254', N'4524', N'ERKEK')
INSERT [dbo].[Tbl_Hastalar] ([HastaId], [HastaAd], [HastaSoyad], [HastaTc], [HastaTelefon], [HastaSifre], [HastaCinsiyet]) VALUES (8, N'ŞULE', N'AYKIZ', N'10032547856', N'05365478961', N'7854', N'KADIN')
INSERT [dbo].[Tbl_Hastalar] ([HastaId], [HastaAd], [HastaSoyad], [HastaTc], [HastaTelefon], [HastaSifre], [HastaCinsiyet]) VALUES (9, N'ASLI', N'BEREKET', N'12563478952', N'05364125879', N'5695', N'KADIN')
INSERT [dbo].[Tbl_Hastalar] ([HastaId], [HastaAd], [HastaSoyad], [HastaTc], [HastaTelefon], [HastaSifre], [HastaCinsiyet]) VALUES (10, N'ARZU', N'ÇELİK', N'10236501478', N'05445236987', N'1562', N'KADIN')
INSERT [dbo].[Tbl_Hastalar] ([HastaId], [HastaAd], [HastaSoyad], [HastaTc], [HastaTelefon], [HastaSifre], [HastaCinsiyet]) VALUES (11, N'AYŞEGÜL', N'KAYA', N'10003654782', N'05412587956', N'3265', N'KADIN')
INSERT [dbo].[Tbl_Hastalar] ([HastaId], [HastaAd], [HastaSoyad], [HastaTc], [HastaTelefon], [HastaSifre], [HastaCinsiyet]) VALUES (12, N'GÜRKAN', N'GÜLBEN', N'14520036987', N'05445231786', N'4528', N'ERKEK')
INSERT [dbo].[Tbl_Hastalar] ([HastaId], [HastaAd], [HastaSoyad], [HastaTc], [HastaTelefon], [HastaSifre], [HastaCinsiyet]) VALUES (13, N'SELİM', N'TAŞDEMİR', N'12036540025', N'05412365874', N'5624', N'ERKEK')
INSERT [dbo].[Tbl_Hastalar] ([HastaId], [HastaAd], [HastaSoyad], [HastaTc], [HastaTelefon], [HastaSifre], [HastaCinsiyet]) VALUES (14, N'İSMET', N'KİRAZ', N'15478632147', N'05417664120', N'5265', N'ERKEK')
SET IDENTITY_INSERT [dbo].[Tbl_Hastalar] OFF
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTc], [HastaSikayet]) VALUES (1, N'22.12.2020', N'15.00', N'GÖZ', N'MEHMET YÜCEDAĞ', 1, N'66666666666', N'gözüm agrıyor')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTc], [HastaSikayet]) VALUES (2, N'23.12.2020', N'15.00', N'DAHİLİYE', N'AYŞE DEĞİRMEN', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTc], [HastaSikayet]) VALUES (3, N'24.12.2020', N'15.00', N'FİZYOTERAPİ', N'TUNA ÇINAR', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTc], [HastaSikayet]) VALUES (4, N'24.12.2020', N'16.00', N'DİŞ', N'MEHMET ÇELİK', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTc], [HastaSikayet]) VALUES (5, N'01.01.2021', N'09.00', N'CİLDİYE', N'KAMURAN ASLAN', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTc], [HastaSikayet]) VALUES (6, N'02.01.2021', N'10.00', N'ÇOÇUK HASTALIKLARI', N'RUKİYE ÇELİK', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTc], [HastaSikayet]) VALUES (7, N'05.01.2021', N'14.00', N'FİZYOTERAPİ', N'TUNA ÇINAR', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTc], [HastaSikayet]) VALUES (8, N'06.01.2021', N'14.00', N'DAHİLİYE', N'AYŞE DEĞİRMEN', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTc], [HastaSikayet]) VALUES (9, N'08.01.2021', N'14.00', N'CİLDİYE', N'KAMURAN ASLAN', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTc], [HastaSikayet]) VALUES (10, N'10.01.2021', N'14.00', N'DİŞ', N'MEHMET ÇELİK', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTc], [HastaSikayet]) VALUES (11, N'10.01.2021', N'12.00', N'DİŞ', N'MEHMET ÇELİK', 0, NULL, NULL)
INSERT [dbo].[Tbl_Sekreter] ([SekreterId], [SekreterAdSoyad], [SekreterTC], [SekreterSifre]) VALUES (1, N'FATMA KARA', N'44444444444', N'4444')
INSERT [dbo].[Tbl_Sekreter] ([SekreterId], [SekreterAdSoyad], [SekreterTC], [SekreterSifre]) VALUES (2, N'HASAN AKSU', N'55555555555', N'5555')

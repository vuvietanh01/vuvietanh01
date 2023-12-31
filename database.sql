USE [quanlybanhang]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 27/02/2021 10:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaHD] [nvarchar](50) NOT NULL,
	[MaHang] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [decimal](9, 3) NOT NULL,
	[GiamGia] [float] NULL,
	[ThanhTien] [decimal](9, 3) NULL,
 CONSTRAINT [PK_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietQuyenHan]    Script Date: 27/02/2021 10:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietQuyenHan](
	[MaChiTietQH] [nvarchar](50) NOT NULL,
	[MaQuyenHan] [nvarchar](50) NULL,
	[ChucNang] [nvarchar](100) NULL,
	[ChoPhep] [bit] NULL,
 CONSTRAINT [PK_ChiTietQuyenHan] PRIMARY KEY CLUSTERED 
(
	[MaChiTietQH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDonBan]    Script Date: 27/02/2021 10:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonBan](
	[MaHD] [nvarchar](50) NOT NULL,
	[MaNV] [nvarchar](50) NULL,
	[MaKH] [nvarchar](50) NULL,
	[NgayTao] [smalldatetime] NULL,
	[GhiChu] [nvarchar](255) NULL,
	[GiamGia] [float] NULL,
	[TienCongThem] [decimal](9, 3) NULL,
 CONSTRAINT [PK_HoaDonBan] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 27/02/2021 10:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nvarchar](50) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[DienThoai] [nvarchar](50) NULL,
	[MaNhomKh] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_KhachHang_1] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MatHang]    Script Date: 27/02/2021 10:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MatHang](
	[MaHang] [nvarchar](50) NOT NULL,
	[TenHang] [nvarchar](50) NULL,
	[GiaNhap] [decimal](9, 1) NULL,
	[GiaBanLe] [decimal](9, 1) NULL,
	[DonViTinh] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](100) NULL,
	[Anh] [nvarchar](255) NULL,
	[NgayKhoiTao] [date] NULL,
 CONSTRAINT [PK_MatHang] PRIMARY KEY CLUSTERED 
(
	[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 27/02/2021 10:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [nvarchar](50) NOT NULL,
	[TenNhanVien] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[NgayLamViec] [date] NULL,
	[LuongCoBan] [decimal](18, 3) NULL,
	[PhuCap] [decimal](18, 3) NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
	[DienThoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhomKH]    Script Date: 27/02/2021 10:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhomKH](
	[MaNhomKH] [nvarchar](50) NOT NULL,
	[TenNhomkh] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](255) NULL,
 CONSTRAINT [PK_NhomKH] PRIMARY KEY CLUSTERED 
(
	[MaNhomKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 27/02/2021 10:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[MaNhanVien] [nvarchar](50) NOT NULL,
	[MaQuyenHan] [nvarchar](50) NOT NULL,
	[HoatDong] [bit] NULL,
 CONSTRAINT [PK_PhanQuyen_1] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QuyenHan]    Script Date: 27/02/2021 10:08:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuyenHan](
	[MaQuyenHan] [nvarchar](50) NOT NULL,
	[TenQuyenHan] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PhanQuyen] PRIMARY KEY CLUSTERED 
(
	[MaQuyenHan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDonBan] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDonBan] ([MaHD])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDonBan]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_MatHang] FOREIGN KEY([MaHang])
REFERENCES [dbo].[MatHang] ([MaHang])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_MatHang]
GO
ALTER TABLE [dbo].[ChiTietQuyenHan]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietQuyenHan_QuyenHan] FOREIGN KEY([MaQuyenHan])
REFERENCES [dbo].[QuyenHan] ([MaQuyenHan])
GO
ALTER TABLE [dbo].[ChiTietQuyenHan] CHECK CONSTRAINT [FK_ChiTietQuyenHan_QuyenHan]
GO
ALTER TABLE [dbo].[HoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonBan_KhachHang1] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDonBan] CHECK CONSTRAINT [FK_HoaDonBan_KhachHang1]
GO
ALTER TABLE [dbo].[HoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonBan_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[HoaDonBan] CHECK CONSTRAINT [FK_HoaDonBan_NhanVien]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_NhomKH] FOREIGN KEY([MaNhomKh])
REFERENCES [dbo].[NhomKH] ([MaNhomKH])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_NhomKH]
GO
ALTER TABLE [dbo].[PhanQuyen]  WITH CHECK ADD  CONSTRAINT [FK_ChoPhep_QuyenHan] FOREIGN KEY([MaQuyenHan])
REFERENCES [dbo].[QuyenHan] ([MaQuyenHan])
GO
ALTER TABLE [dbo].[PhanQuyen] CHECK CONSTRAINT [FK_ChoPhep_QuyenHan]
GO
ALTER TABLE [dbo].[PhanQuyen]  WITH CHECK ADD  CONSTRAINT [FK_PhanQuyen_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[PhanQuyen] CHECK CONSTRAINT [FK_PhanQuyen_NhanVien]
GO
INSERT INTO dbo.NhanVien
        ( MaNhanVien ,
         MatKhau
        )
VALUES  ( 'admin' ,'123')
GO
INSERT INTO dbo.QuyenHan
        ( MaQuyenHan, TenQuyenHan )
VALUES  ( N'admin', -- MaQuyenHan - nvarchar(50)
          N'admin'  -- TenQuyenHan - nvarchar(50)
          )
GO
INSERT INTO dbo.ChiTietQuyenHan
        ( MaChiTietQH ,
          MaQuyenHan ,
          ChucNang ,
          ChoPhep
        )
VALUES  ( N'ct001' , -- MaChiTietQH - nvarchar(50)
          N'admin' , -- MaQuyenHan - nvarchar(50)
          N'bán hàng' , -- ChucNang - nvarchar(100)
          1  -- ChoPhep - bit
        ) ,
		('ct002' ,'admin',N'xóa' ,1),
		('ct003','admin',N'nhập file' ,1),
		('ct004','admin',N'xuất file' ,1),
		('ct005','admin',N'quản lý nhân viên' ,1),
		('ct006','admin',N'sửa' ,1),
		('ct007','admin',N'thêm' ,1)
Go
INSERT INTO dbo.PhanQuyen
        ( MaNhanVien, MaQuyenHan, HoatDong )
VALUES  ( N'admin', -- MaNhanVien - nvarchar(50)
          N'admin', -- MaQuyenHan - nvarchar(50)
          1  -- HoatDong - bit
          )
go

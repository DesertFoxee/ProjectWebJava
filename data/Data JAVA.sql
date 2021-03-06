USE [master]
GO
/****** Object:  Database [JAVA_WEB]    Script Date: 1/4/2020 8:47:54 PM ******/
CREATE DATABASE [JAVA_WEB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WEB_JAVA', FILENAME = N'D:\Application Education\Program File\Microsoft SQL Server\MSSQL14.SQLADMIN\MSSQL\DATA\WEB_JAVA.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WEB_JAVA_log', FILENAME = N'D:\Application Education\Program File\Microsoft SQL Server\MSSQL14.SQLADMIN\MSSQL\DATA\WEB_JAVA_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [JAVA_WEB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [JAVA_WEB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [JAVA_WEB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [JAVA_WEB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [JAVA_WEB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [JAVA_WEB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [JAVA_WEB] SET ARITHABORT OFF 
GO
ALTER DATABASE [JAVA_WEB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [JAVA_WEB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [JAVA_WEB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [JAVA_WEB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [JAVA_WEB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [JAVA_WEB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [JAVA_WEB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [JAVA_WEB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [JAVA_WEB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [JAVA_WEB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [JAVA_WEB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [JAVA_WEB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [JAVA_WEB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [JAVA_WEB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [JAVA_WEB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [JAVA_WEB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [JAVA_WEB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [JAVA_WEB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [JAVA_WEB] SET  MULTI_USER 
GO
ALTER DATABASE [JAVA_WEB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [JAVA_WEB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [JAVA_WEB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [JAVA_WEB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [JAVA_WEB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [JAVA_WEB] SET QUERY_STORE = OFF
GO
USE [JAVA_WEB]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 1/4/2020 8:47:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaHoaDon] [int] NOT NULL,
	[MaGiay] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[Gia] [int] NULL,
	[ThanhTien] [int] NULL,
 CONSTRAINT [PK_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC,
	[MaGiay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhGia]    Script Date: 1/4/2020 8:47:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGia](
	[MaKhachHang] [int] NOT NULL,
	[MaGiay] [int] NOT NULL,
	[NoiDung] [nvarchar](max) NULL,
	[ThoiGian] [date] NOT NULL,
 CONSTRAINT [PK_DanhGia] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC,
	[MaGiay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Giay]    Script Date: 1/4/2020 8:47:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Giay](
	[MaGiay] [int] IDENTITY(1,1) NOT NULL,
	[TenGiay] [nvarchar](50) NULL,
	[TieuDe] [nvarchar](100) NULL,
	[Gia] [int] NULL,
	[MaLoaiGiay] [int] NULL,
	[GiamGia] [int] NULL,
	[MaHang] [int] NULL,
	[MauSac] [nvarchar](50) NULL,
	[MoTa] [nvarchar](max) NULL,
 CONSTRAINT [PK_Giay] PRIMARY KEY CLUSTERED 
(
	[MaGiay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 1/4/2020 8:47:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[MaGioHang] [int] IDENTITY(1,1) NOT NULL,
	[MaTaiKhoan] [int] NOT NULL,
	[MaGiay] [int] NULL,
	[ThoiGian] [date] NOT NULL,
	[SoLuong] [int] NULL,
	[GiaThanh] [int] NULL,
	[GiamGia] [int] NULL,
	[KichCo] [int] NULL,
 CONSTRAINT [PK_GioHang_1] PRIMARY KEY CLUSTERED 
(
	[MaGioHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HangGiay]    Script Date: 1/4/2020 8:47:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangGiay](
	[MaHang] [int] IDENTITY(1,1) NOT NULL,
	[TenHangGiay] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_LOAIGIAY] PRIMARY KEY CLUSTERED 
(
	[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HinhAnh]    Script Date: 1/4/2020 8:47:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HinhAnh](
	[MaHinhAnh] [int] IDENTITY(1,1) NOT NULL,
	[MaGiay] [int] NULL,
	[Link] [nvarchar](300) NULL,
 CONSTRAINT [PK_HinhAnh] PRIMARY KEY CLUSTERED 
(
	[MaHinhAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 1/4/2020 8:47:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[MaKhachHang] [int] NOT NULL,
	[ThoiGian] [date] NOT NULL,
	[TongTien] [int] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 1/4/2020 8:47:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKhachHang] [int] IDENTITY(1,1) NOT NULL,
	[TenKhachHang] [nvarchar](100) NULL,
	[SDT] [varchar](12) NULL,
	[DiaChi] [nvarchar](100) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KichCo]    Script Date: 1/4/2020 8:47:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KichCo](
	[MaKichCo] [int] IDENTITY(1,1) NOT NULL,
	[MaGiay] [int] NULL,
	[KichCo] [int] NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_KichCo] PRIMARY KEY CLUSTERED 
(
	[MaKichCo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiGiay]    Script Date: 1/4/2020 8:47:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiGiay](
	[MaLoaiGiay] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiGiay] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiGiay_1] PRIMARY KEY CLUSTERED 
(
	[MaLoaiGiay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuanTri]    Script Date: 1/4/2020 8:47:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuanTri](
	[MaQuantri] [int] IDENTITY(1,1) NOT NULL,
	[TenTaiKhoan] [varchar](30) NOT NULL,
	[MatKhau] [varchar](20) NOT NULL,
 CONSTRAINT [PK_QuanTri] PRIMARY KEY CLUSTERED 
(
	[MaQuantri] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 1/4/2020 8:47:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[TenTaiKhoan] [varchar](30) NOT NULL,
	[MatKhau] [varchar](20) NOT NULL,
	[MaKhachHang] [int] NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[MaTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DanhGia] ([MaKhachHang], [MaGiay], [NoiDung], [ThoiGian]) VALUES (1, 22, N'Sản phẩm/dịch vụ giống mô tả. Gửi sản phẩm / vé dịch vụ nhanh.dự định là sẽ có vài đứa nhờ mình đặt thêm ở shop nx..hi vọng shop cứ phát huy nhan shop', CAST(N'2019-12-12' AS Date))
INSERT [dbo].[DanhGia] ([MaKhachHang], [MaGiay], [NoiDung], [ThoiGian]) VALUES (1, 23, N'Sản phẩm/dịch vụ giống mô tả. Gửi sản phẩm / vé dịch vụ nhanh. Shop phục vụ khá tốt. Giao hàng khá nhanh nên tôi rất thích có chương trình khuyến mại lớn', CAST(N'2019-12-15' AS Date))
INSERT [dbo].[DanhGia] ([MaKhachHang], [MaGiay], [NoiDung], [ThoiGian]) VALUES (2, 22, N'Hàng cực kì xịn xò luôn shop ưiii vs cái giá này mà đc đôi giày xiu ưng luôn shop giao đúng mẫu đúng size còn đúng màu nx .nhân viên tư vấn thì siêu nhiệt tingf luôn nè..mình mua dùm con bạn thkoi mà nó khen quá trời .dự định là sẽ có vài đứa nhờ mình đặt thêm ở shop nx', CAST(N'2019-12-22' AS Date))
SET IDENTITY_INSERT [dbo].[Giay] ON 

INSERT [dbo].[Giay] ([MaGiay], [TenGiay], [TieuDe], [Gia], [MaLoaiGiay], [GiamGia], [MaHang], [MauSac], [MoTa]) VALUES (22, N'X 19.1', N'GIÀY BÓNG ĐÁ X 19.1 FIRM GROUND', 1300000, 6, 10, 10, N'Trắng', N'X không đơn thuần là một đôi giày. Đây là lời khẳng định rằng tốc độ sẽ chọc thủng hàng phòng ngự đối phương, thay vì đi vào ngõ cụt. Hãy dừng lại nếu bạn không thể nỗ lực bứt tốc. Nhưng hãy đọc tiếp nếu bạn đã sẵn sàng bứt phá mọi giới hạn. Mẫu giày bóng đá này có thân trên mỏng để đôi chân lướt nhẹ như không, cảm giác chạm bóng chân thực và tốc độ phi thường. Cổ giày thấp kết hợp hoàn hảo với gót đúc để giữ thăng bằng cho bạn trong các pha bóng bùng nổ.')
INSERT [dbo].[Giay] ([MaGiay], [TenGiay], [TieuDe], [Gia], [MaLoaiGiay], [GiamGia], [MaHang], [MauSac], [MoTa]) VALUES (23, N'PREDATOR 19.1', N'GIÀY BÓNG ĐÁ PREDATOR 19.1 FIRM GROUND', 5000000, 10, 10, 3, N'Trắng, xám', N'Predator không đơn thuần là một đôi giày. Đây là lời khẳng định rằng hành động luôn cao hơn lời nói. Hãy thôi khoa trương nếu bạn không thể minh chứng cho những tuyên bố của mình. Nhưng hãy tiếp tục đọc nếu bạn sẵn sàng làm chủ cuộc chơi tới khi có tiếng còi mãn cuộc. Mẫu giày bóng đá này có thân trên làm bằng vải dệt kim ôm chân mang đến sự vừa vặn hoàn hảo. Lớp phủ có kết cấu trên mũi giày giúp bám bóng để tăng tối đa độ chính xác cho từng đường chuyền và cú sút.')
INSERT [dbo].[Giay] ([MaGiay], [TenGiay], [TieuDe], [Gia], [MaLoaiGiay], [GiamGia], [MaHang], [MauSac], [MoTa]) VALUES (24, N'COPA 19.1', N'GIÀY BÓNG ĐÁ COPA 19.1 FIRM GROUND', 1300000, 6, 10, 10, N'Vàng', N'Copa không đơn thuần là một đôi giày. Đây là lời cam kết rằng mỗi cú chạm bóng đều để lại ấn tượng lâu dài. Đôi giày này không dành cho những ai không thể tạo dấu ấn trong trận đấu. Nhưng hãy tiếp tục đọc nếu bạn sẵn sàng nâng cảm giác chạm bóng lên một đẳng cấp mới. Mẫu giày bóng đá này kết hợp liền mạch giữa cổ giày bằng vải dệt kim co giãn với thân giày trước bằng da chuột túi mềm mại có vân. Kết quả thu được là khả năng cố định chắc chắn, sự êm ái bao bọc khắp bàn chân và bề mặt tiếp xúc bóng mượt như ụa.')
INSERT [dbo].[Giay] ([MaGiay], [TenGiay], [TieuDe], [Gia], [MaLoaiGiay], [GiamGia], [MaHang], [MauSac], [MoTa]) VALUES (25, N'NEMEZIZ 19.1', N'GIÀY BÓNG ĐÁ NEMEZIZ 19.1 FIRM GROUND', 1300000, 6, 10, 3, N'Tím', N'Nemeziz không đơn thuần là một đôi giày. Đây là lời cam kết rằng kỹ năng là để chiến thắng, không phải là để giống như bao người khác. Hãy bỏ qua nếu bạn thích nổi danh hơn là chiến thắng. Nhưng hãy đọc tiếp nếu bạn sẵn sàng xới tung sân đấu để mang về chiến thắng cho đội nhà. Đôi giày này có thân trên co giãn được dệt bằng các sợi đai với bản rộng và sức căng khác nhau để vừa vặn với hình dáng bàn chân. Kết quả thu được là một đôi giày vừa ôm khít lại vừa giữ ổn định bàn chân mà vẫn đem đến cảm giác tiếp xúc bóng trực tiếp. Đế ngoài tách biệt thành hai phần co giãn theo từng động tác rê bóng và đảo người.')
INSERT [dbo].[Giay] ([MaGiay], [TenGiay], [TieuDe], [Gia], [MaLoaiGiay], [GiamGia], [MaHang], [MauSac], [MoTa]) VALUES (26, N'X 19.3 TURF', N'GIÀY BÓNG ĐÁ X 19.3 TURF', 1300000, 10, 10, 10, N'Xanh dương', N'X không chỉ là một đôi giày. Nó còn là lời khẳng định tốc độ sẽ chọc thủng hàng phòng ngự đối phương, thay vì đi vào ngõ cụt. Hãy dừng lại nếu bạn không thể nỗ lực bứt tốc. Nhưng hãy đọc tiếp nếu bạn đã sẵn sàng bứt phá mọi giới hạn. Mẫu giày bóng đá này có thân trên bằng vải lưới siêu nhẹ mang đến sự thoải mái, cảm giác chạm bóng chân thực và tốc độ phi thường trong suốt trận đấu. Cổ giày thấp kết hợp hoàn hảo với kiểu dáng ôm chân vừa vặn để giữ thăng bằng cho bạn trong các pha bóng bùng nổ.')
INSERT [dbo].[Giay] ([MaGiay], [TenGiay], [TieuDe], [Gia], [MaLoaiGiay], [GiamGia], [MaHang], [MauSac], [MoTa]) VALUES (27, N'ULTRABOOST 20', N'GIÀY ULTRABOOST 20', 1300000, 6, 9, 10, N'Xám trắng', N'Tự tin từ nền tảng. Mẫu giày chạy này của adidas được thiết kế giúp bạn tăng tốc trên những dặm đường chạy mỗi ngày. Thân giày bằng vải dệt kim cho độ nâng đỡ từ những đường khâu bên trong dựa trên công nghệ ghi hình chuyển động. Gót giày bằng chất liệu elastane mềm mại, thoải mái cho phép gót chân chuyển động tự nhiên. Lớp đệm đàn hồi giúp chuyển động nhịp nhàng và năng lượng trôi chảy.')
INSERT [dbo].[Giay] ([MaGiay], [TenGiay], [TieuDe], [Gia], [MaLoaiGiay], [GiamGia], [MaHang], [MauSac], [MoTa]) VALUES (28, N'SOLAR DRIVE 19', N'GIÀY SOLAR DRIVE 19', 1400000, 10, 15, 3, N'Trắng', N'Tràn đầy tự tin trên từng bước chạy hàng ngày. Mẫu giày nam này có thân trên bằng vải lưới thoáng khí được thiết kế để ôm vừa bàn chân mà không gây kích ứng. Công nghệ đế ray Solar Propulsion Rail giúp định hướng bàn chân từ khi chạm đất đến khi nhấc chân. Lớp đệm đàn hồi chuyển hồi năng lượng trên từng sải bước.')
INSERT [dbo].[Giay] ([MaGiay], [TenGiay], [TieuDe], [Gia], [MaLoaiGiay], [GiamGia], [MaHang], [MauSac], [MoTa]) VALUES (29, N'NMD_R1 PRIMEKNIT', N'GIÀY NMD_R1 PRIMEKNIT', 1200000, 10, 16, 10, N'Hồng', N'Đôi NMD đã trở lại với diện mạo mới lấy cảm hứng từ thời trang công nghệ cao cấp. Đôi giày này có thân trên bằng vải dệt công nghệ adidas Primeknit cùng các chi tiết phủ ngoài bằng chất liệu TPU cho khả năng nâng đỡ thích ứng. Các miếng bịt EVA trên đế giữa làm nổi bật đế giữa Boost đàn hồi.')
SET IDENTITY_INSERT [dbo].[Giay] OFF
SET IDENTITY_INSERT [dbo].[GioHang] ON 

INSERT [dbo].[GioHang] ([MaGioHang], [MaTaiKhoan], [MaGiay], [ThoiGian], [SoLuong], [GiaThanh], [GiamGia], [KichCo]) VALUES (12, 4, 29, CAST(N'2019-12-23' AS Date), 1, 1200000, 16, 40)
SET IDENTITY_INSERT [dbo].[GioHang] OFF
SET IDENTITY_INSERT [dbo].[HangGiay] ON 

INSERT [dbo].[HangGiay] ([MaHang], [TenHangGiay], [GhiChu]) VALUES (1, N'Balenciaga', N'Thương hiệu thời trang cao cấp Fendi từ Ý cũng cho ra đời những sản phẩm giày thao mang tính khác biệt')
INSERT [dbo].[HangGiay] ([MaHang], [TenHangGiay], [GhiChu]) VALUES (2, N'Fendi', N'Thương hiệu thời trang cao cấp Fendi từ Ý cũng cho ra đời những sản phẩm giày thao mang tính khác biệt')
INSERT [dbo].[HangGiay] ([MaHang], [TenHangGiay], [GhiChu]) VALUES (3, N'Nike', N'Thương hiệu thời trang cao cấp Fendi từ Ý cũng cho ra đời những sản phẩm giày thao mang tính khác biệt')
INSERT [dbo].[HangGiay] ([MaHang], [TenHangGiay], [GhiChu]) VALUES (4, N'Prada', N'Thương hiệu thời trang cao cấp Fendi từ Ý cũng cho ra đời những sản phẩm giày thao mang tính khác biệt')
INSERT [dbo].[HangGiay] ([MaHang], [TenHangGiay], [GhiChu]) VALUES (5, N'Puma', N'Thương hiệu thời trang cao cấp Fendi từ Ý cũng cho ra đời những sản phẩm giày thao mang tính khác biệt')
INSERT [dbo].[HangGiay] ([MaHang], [TenHangGiay], [GhiChu]) VALUES (6, N'Valentino', N'Thương hiệu thời trang cao cấp Fendi từ Ý cũng cho ra đời những sản phẩm giày thao mang tính khác biệt')
INSERT [dbo].[HangGiay] ([MaHang], [TenHangGiay], [GhiChu]) VALUES (7, N'Lanvin', N'Thương hiệu thời trang cao cấp Fendi từ Ý cũng cho ra đời những sản phẩm giày thao mang tính khác biệt')
INSERT [dbo].[HangGiay] ([MaHang], [TenHangGiay], [GhiChu]) VALUES (8, N'Reebok', N'Thương hiệu thời trang cao cấp Fendi từ Ý cũng cho ra đời những sản phẩm giày thao mang tính khác biệt')
INSERT [dbo].[HangGiay] ([MaHang], [TenHangGiay], [GhiChu]) VALUES (10, N'Adidas', N'Thương hiệu thời trang cao cấp Fendi từ Ý cũng cho ra đời những sản phẩm giày thao mang tính khác biệt')
SET IDENTITY_INSERT [dbo].[HangGiay] OFF
SET IDENTITY_INSERT [dbo].[HinhAnh] ON 

INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaGiay], [Link]) VALUES (35, 22, N'Image_2216500420191216.jpeg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaGiay], [Link]) VALUES (36, 23, N'Image_2316522220191216.jpeg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaGiay], [Link]) VALUES (37, 24, N'Image_2416535620191216.jpeg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaGiay], [Link]) VALUES (38, 25, N'Image_2516552720191216.jpeg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaGiay], [Link]) VALUES (39, 26, N'Image_2616580720191216.jpeg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaGiay], [Link]) VALUES (40, 27, N'Image_2716593920191216.jpeg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaGiay], [Link]) VALUES (41, 28, N'Image_2817011420191216.jpeg')
INSERT [dbo].[HinhAnh] ([MaHinhAnh], [MaGiay], [Link]) VALUES (42, 29, N'Image_2917024020191216.jpeg')
SET IDENTITY_INSERT [dbo].[HinhAnh] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [SDT], [DiaChi]) VALUES (1, N'Nguyễn Văn A', N'03543658435', N'Hà Nội')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [SDT], [DiaChi]) VALUES (2, N'Ngô Văn Thường', N'03543658435', N'Hiệp Hòa - Bắc Giang')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [SDT], [DiaChi]) VALUES (4, N'Nguyễn Văn B', N'0354365843', N'Bắc Giang')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [SDT], [DiaChi]) VALUES (5, N'Ngô Văn Thường', N'0354365843', N'Hà Nội')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[KichCo] ON 

INSERT [dbo].[KichCo] ([MaKichCo], [MaGiay], [KichCo], [SoLuong]) VALUES (3, 22, 41, 12)
INSERT [dbo].[KichCo] ([MaKichCo], [MaGiay], [KichCo], [SoLuong]) VALUES (7, 23, 39, 12)
INSERT [dbo].[KichCo] ([MaKichCo], [MaGiay], [KichCo], [SoLuong]) VALUES (8, 23, 40, 12)
INSERT [dbo].[KichCo] ([MaKichCo], [MaGiay], [KichCo], [SoLuong]) VALUES (9, 23, 41, 12)
INSERT [dbo].[KichCo] ([MaKichCo], [MaGiay], [KichCo], [SoLuong]) VALUES (10, 24, 38, 10)
INSERT [dbo].[KichCo] ([MaKichCo], [MaGiay], [KichCo], [SoLuong]) VALUES (11, 24, 39, 10)
INSERT [dbo].[KichCo] ([MaKichCo], [MaGiay], [KichCo], [SoLuong]) VALUES (12, 24, 40, 10)
INSERT [dbo].[KichCo] ([MaKichCo], [MaGiay], [KichCo], [SoLuong]) VALUES (13, 24, 41, 10)
INSERT [dbo].[KichCo] ([MaKichCo], [MaGiay], [KichCo], [SoLuong]) VALUES (14, 25, 38, 10)
INSERT [dbo].[KichCo] ([MaKichCo], [MaGiay], [KichCo], [SoLuong]) VALUES (15, 25, 39, 10)
INSERT [dbo].[KichCo] ([MaKichCo], [MaGiay], [KichCo], [SoLuong]) VALUES (16, 25, 40, 10)
INSERT [dbo].[KichCo] ([MaKichCo], [MaGiay], [KichCo], [SoLuong]) VALUES (17, 25, 41, 10)
INSERT [dbo].[KichCo] ([MaKichCo], [MaGiay], [KichCo], [SoLuong]) VALUES (18, 26, 38, 10)
INSERT [dbo].[KichCo] ([MaKichCo], [MaGiay], [KichCo], [SoLuong]) VALUES (19, 26, 39, 10)
INSERT [dbo].[KichCo] ([MaKichCo], [MaGiay], [KichCo], [SoLuong]) VALUES (20, 26, 40, 10)
INSERT [dbo].[KichCo] ([MaKichCo], [MaGiay], [KichCo], [SoLuong]) VALUES (21, 26, 41, 10)
INSERT [dbo].[KichCo] ([MaKichCo], [MaGiay], [KichCo], [SoLuong]) VALUES (22, 27, 38, 10)
INSERT [dbo].[KichCo] ([MaKichCo], [MaGiay], [KichCo], [SoLuong]) VALUES (23, 27, 39, 10)
INSERT [dbo].[KichCo] ([MaKichCo], [MaGiay], [KichCo], [SoLuong]) VALUES (24, 27, 40, 10)
INSERT [dbo].[KichCo] ([MaKichCo], [MaGiay], [KichCo], [SoLuong]) VALUES (25, 27, 41, 10)
INSERT [dbo].[KichCo] ([MaKichCo], [MaGiay], [KichCo], [SoLuong]) VALUES (27, 22, 39, 12)
INSERT [dbo].[KichCo] ([MaKichCo], [MaGiay], [KichCo], [SoLuong]) VALUES (28, 22, 40, 12)
INSERT [dbo].[KichCo] ([MaKichCo], [MaGiay], [KichCo], [SoLuong]) VALUES (29, 29, 39, 11)
INSERT [dbo].[KichCo] ([MaKichCo], [MaGiay], [KichCo], [SoLuong]) VALUES (30, 29, 40, 12)
INSERT [dbo].[KichCo] ([MaKichCo], [MaGiay], [KichCo], [SoLuong]) VALUES (31, 28, 39, 10)
INSERT [dbo].[KichCo] ([MaKichCo], [MaGiay], [KichCo], [SoLuong]) VALUES (32, 28, 40, 12)
SET IDENTITY_INSERT [dbo].[KichCo] OFF
SET IDENTITY_INSERT [dbo].[LoaiGiay] ON 

INSERT [dbo].[LoaiGiay] ([MaLoaiGiay], [TenLoaiGiay]) VALUES (1, N'Cao gót')
INSERT [dbo].[LoaiGiay] ([MaLoaiGiay], [TenLoaiGiay]) VALUES (2, N'Sandal')
INSERT [dbo].[LoaiGiay] ([MaLoaiGiay], [TenLoaiGiay]) VALUES (3, N'Búp bê')
INSERT [dbo].[LoaiGiay] ([MaLoaiGiay], [TenLoaiGiay]) VALUES (4, N'Công sở')
INSERT [dbo].[LoaiGiay] ([MaLoaiGiay], [TenLoaiGiay]) VALUES (5, N'Boots')
INSERT [dbo].[LoaiGiay] ([MaLoaiGiay], [TenLoaiGiay]) VALUES (6, N'Thể thao')
INSERT [dbo].[LoaiGiay] ([MaLoaiGiay], [TenLoaiGiay]) VALUES (7, N'Trẻ em')
INSERT [dbo].[LoaiGiay] ([MaLoaiGiay], [TenLoaiGiay]) VALUES (10, N'Đi dạo')
SET IDENTITY_INSERT [dbo].[LoaiGiay] OFF
SET IDENTITY_INSERT [dbo].[QuanTri] ON 

INSERT [dbo].[QuanTri] ([MaQuantri], [TenTaiKhoan], [MatKhau]) VALUES (1, N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[QuanTri] OFF
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [TenTaiKhoan], [MatKhau], [MaKhachHang]) VALUES (4, N'admin', N'admin', 2)
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [TenTaiKhoan], [MatKhau], [MaKhachHang]) VALUES (5, N'admin1', N'admin1', 4)
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [TenTaiKhoan], [MatKhau], [MaKhachHang]) VALUES (6, N'ngothuong', N'ngothuong', 5)
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
ALTER TABLE [dbo].[Giay] ADD  CONSTRAINT [df_giamgia]  DEFAULT ((0)) FOR [GiamGia]
GO
ALTER TABLE [dbo].[Giay] ADD  CONSTRAINT [df_mausach]  DEFAULT (N'Không xác định') FOR [MauSac]
GO
ALTER TABLE [dbo].[Giay] ADD  CONSTRAINT [df_mota]  DEFAULT (N'Không mô tả') FOR [MoTa]
GO
ALTER TABLE [dbo].[KichCo] ADD  CONSTRAINT [DF_KichCo_KichCo]  DEFAULT ((0)) FOR [KichCo]
GO
ALTER TABLE [dbo].[KichCo] ADD  CONSTRAINT [DF_KichCo_SoLuong]  DEFAULT ((0)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_Giay] FOREIGN KEY([MaGiay])
REFERENCES [dbo].[Giay] ([MaGiay])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_Giay]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon] FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[HoaDon] ([MaHoaDon])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD  CONSTRAINT [FK_DanhGia_Giay] FOREIGN KEY([MaGiay])
REFERENCES [dbo].[Giay] ([MaGiay])
GO
ALTER TABLE [dbo].[DanhGia] CHECK CONSTRAINT [FK_DanhGia_Giay]
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD  CONSTRAINT [FK_DanhGia_KhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[DanhGia] CHECK CONSTRAINT [FK_DanhGia_KhachHang]
GO
ALTER TABLE [dbo].[Giay]  WITH CHECK ADD  CONSTRAINT [FK_Giay_HangGiay1] FOREIGN KEY([MaHang])
REFERENCES [dbo].[HangGiay] ([MaHang])
GO
ALTER TABLE [dbo].[Giay] CHECK CONSTRAINT [FK_Giay_HangGiay1]
GO
ALTER TABLE [dbo].[Giay]  WITH CHECK ADD  CONSTRAINT [FK_Giay_LoaiGiay1] FOREIGN KEY([MaLoaiGiay])
REFERENCES [dbo].[LoaiGiay] ([MaLoaiGiay])
GO
ALTER TABLE [dbo].[Giay] CHECK CONSTRAINT [FK_Giay_LoaiGiay1]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_Giay] FOREIGN KEY([MaGiay])
REFERENCES [dbo].[Giay] ([MaGiay])
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_Giay]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_TaiKhoan] FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([MaTaiKhoan])
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_TaiKhoan]
GO
ALTER TABLE [dbo].[HinhAnh]  WITH CHECK ADD  CONSTRAINT [FK_HinhAnh_Giay] FOREIGN KEY([MaGiay])
REFERENCES [dbo].[Giay] ([MaGiay])
GO
ALTER TABLE [dbo].[HinhAnh] CHECK CONSTRAINT [FK_HinhAnh_Giay]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[KichCo]  WITH CHECK ADD  CONSTRAINT [FK_KichCo_Giay] FOREIGN KEY([MaGiay])
REFERENCES [dbo].[Giay] ([MaGiay])
GO
ALTER TABLE [dbo].[KichCo] CHECK CONSTRAINT [FK_KichCo_Giay]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_KhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_KhachHang]
GO
USE [master]
GO
ALTER DATABASE [JAVA_WEB] SET  READ_WRITE 
GO

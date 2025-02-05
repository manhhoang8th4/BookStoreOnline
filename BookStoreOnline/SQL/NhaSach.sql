create database NhaSach
USE [NhaSach]
GO
/****** Object:  Table [dbo].[CHITIETDONHANG]    Script Date: 26/07/2024 9:55:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETDONHANG](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaDonHang] [int] NULL,
	[MaSanPham] [int] NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_Chitietdonhang] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DANHGIA]    Script Date: 26/07/2024 9:55:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANHGIA](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[NoiDung] [nvarchar](max) NOT NULL,
	[NgayTao] [datetime] NOT NULL,
	[SoSao] [int] NOT NULL,
 CONSTRAINT [PK__DANHGIA__3214EC270CEFD573] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONHANG]    Script Date: 26/07/2024 9:55:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONHANG](
	[MaDonHang] [int] IDENTITY(1,1) NOT NULL,
	[DiaChi] [nvarchar](max) NULL,
	[TrangThai] [int] NULL,
	[NgayDat] [datetime] NULL,
	[ID] [int] NULL,
	[TrangThaiThanhToan] [int] NOT NULL,
	[PhuongThucThanhToan] [int] NOT NULL,
	[TongTien] [int] NOT NULL,
	[MaKM] [varchar](15) NULL,
	[MaNVXuLy] [int] NULL,
 CONSTRAINT [PK_Donhang] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 26/07/2024 9:55:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[MatKhau] [nvarchar](max) NULL,
	[SoDienThoai] [varchar](10) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[NgayTao] [datetime] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_Khachhang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHUYENMAI]    Script Date: 26/07/2024 9:55:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHUYENMAI](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenChuongTrinh] [nvarchar](100) NOT NULL,
	[MaKM] [varchar](15) NOT NULL,
	[MoTa] [nvarchar](max) NOT NULL,
	[NgayTao] [datetime] NOT NULL,
	[NgayBatDau] [datetime] NOT NULL,
	[NgayKetThuc] [datetime] NOT NULL,
	[SoTienKM] [int] NOT NULL,
	[SoTienMuaHangToiThieu] [int] NOT NULL,
	[SoLanDung] [int] NOT NULL,
	[KichHoat] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAI]    Script Date: 26/07/2024 9:55:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAI](
	[Maloai] [int] IDENTITY(1,1) NOT NULL,
	[Tenloai] [nvarchar](max) NULL,
 CONSTRAINT [PK_Theloai] PRIMARY KEY CLUSTERED 
(
	[Maloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 26/07/2024 9:55:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](max) NULL,
	[MatKhau] [nvarchar](max) NULL,
	[Quyen] [int] NOT NULL,
	[Ten] [nvarchar](100) NULL,
	[NgayTao] [datetime] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_Phanquyen] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 26/07/2024 9:55:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MaSanPham] [int] IDENTITY(1,1) NOT NULL,
	[TenSanPham] [nvarchar](max) NULL,
	[Gia] [decimal](18, 0) NULL,
	[MoTa] [nvarchar](max) NULL,
	[TacGia] [nvarchar](max) NULL,
	[Anh] [nvarchar](max) NULL,
	[MaLoai] [int] NULL,
	[SoLuongBan] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[MaNVTao] [int] NULL,
 CONSTRAINT [PK_Sanpham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CHITIETDONHANG] ON 

INSERT [dbo].[CHITIETDONHANG] ([ID], [MaDonHang], [MaSanPham], [SoLuong]) VALUES (12012, 13007, 4033, 1)
INSERT [dbo].[CHITIETDONHANG] ([ID], [MaDonHang], [MaSanPham], [SoLuong]) VALUES (12013, 13007, 4036, 1)
SET IDENTITY_INSERT [dbo].[CHITIETDONHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[DANHGIA] ON 

INSERT [dbo].[DANHGIA] ([ID], [MaKH], [MaSanPham], [NoiDung], [NgayTao], [SoSao]) VALUES (11, 2007, 4033, N'sách đẹp đó', CAST(N'2024-07-26T21:40:54.150' AS DateTime), 5)
SET IDENTITY_INSERT [dbo].[DANHGIA] OFF
GO
SET IDENTITY_INSERT [dbo].[DONHANG] ON 

INSERT [dbo].[DONHANG] ([MaDonHang], [DiaChi], [TrangThai], [NgayDat], [ID], [TrangThaiThanhToan], [PhuongThucThanhToan], [TongTien], [MaKM], [MaNVXuLy]) VALUES (13007, N'đâs', 0, CAST(N'2024-07-25T23:13:09.270' AS DateTime), 2007, 0, 1, 235010, NULL, NULL)
SET IDENTITY_INSERT [dbo].[DONHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MaKH], [Ten], [Email], [MatKhau], [SoDienThoai], [DiaChi], [NgayTao], [TrangThai]) VALUES (1, N'Mạnh Hoàng', N'phuc@gmail.com', N'123456', N'1234567890', N'HCM', CAST(N'2024-06-18T14:41:06.347' AS DateTime), 1)
INSERT [dbo].[KHACHHANG] ([MaKH], [Ten], [Email], [MatKhau], [SoDienThoai], [DiaChi], [NgayTao], [TrangThai]) VALUES (2007, N'Gia Huy', N'admin2@gmail.com', N'123456', NULL, NULL, CAST(N'2024-07-22T13:38:08.467' AS DateTime), 1)
INSERT [dbo].[KHACHHANG] ([MaKH], [Ten], [Email], [MatKhau], [SoDienThoai], [DiaChi], [NgayTao], [TrangThai]) VALUES (2008, N'Hoàng', N'hoang@gmail.com', N'hoangne', N'0942947566', N'HCM', CAST(N'2024-07-22T13:47:32.607' AS DateTime), 1)
INSERT [dbo].[KHACHHANG] ([MaKH], [Ten], [Email], [MatKhau], [SoDienThoai], [DiaChi], [NgayTao], [TrangThai]) VALUES (2010, N'Khoa', N'khoa@gmail.com', N'123456789', N'0987777767', N'Quận 10', CAST(N'2024-07-22T14:32:18.760' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[KHUYENMAI] ON 

INSERT [dbo].[KHUYENMAI] ([ID], [TenChuongTrinh], [MaKM], [MoTa], [NgayTao], [NgayBatDau], [NgayKetThuc], [SoTienKM], [SoTienMuaHangToiThieu], [SoLanDung], [KichHoat]) VALUES (2, N'kmtet', N'km123', N'sadkjaskjd', CAST(N'2020-10-12T00:00:00.000' AS DateTime), CAST(N'2020-10-12T00:00:00.000' AS DateTime), CAST(N'2024-10-12T00:00:00.000' AS DateTime), 200000, 50000, 10, 1)
SET IDENTITY_INSERT [dbo].[KHUYENMAI] OFF
GO
SET IDENTITY_INSERT [dbo].[LOAI] ON 

INSERT [dbo].[LOAI] ([Maloai], [Tenloai]) VALUES (6006, N'Sách văn học')
INSERT [dbo].[LOAI] ([Maloai], [Tenloai]) VALUES (6007, N'Sách kinh tế')
INSERT [dbo].[LOAI] ([Maloai], [Tenloai]) VALUES (6008, N'Sách tâm lí - kỹ năng sống')
INSERT [dbo].[LOAI] ([Maloai], [Tenloai]) VALUES (6009, N'Sách thiếu nhi')
INSERT [dbo].[LOAI] ([Maloai], [Tenloai]) VALUES (6010, N'Sách ngoại ngữ')
SET IDENTITY_INSERT [dbo].[LOAI] OFF
GO
SET IDENTITY_INSERT [dbo].[NHANVIEN] ON 

INSERT [dbo].[NHANVIEN] ([MaNV], [Email], [MatKhau], [Quyen], [Ten], [NgayTao], [TrangThai]) VALUES (3013, N'admin@gmail.com', N'admin', 2, N'Hoàng', CAST(N'2024-07-22T12:59:56.997' AS DateTime), 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [Email], [MatKhau], [Quyen], [Ten], [NgayTao], [TrangThai]) VALUES (3014, N'admin1@gmail.com', N'admin1', 2, N'Tuấn', CAST(N'2024-07-22T13:00:28.480' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[NHANVIEN] OFF
GO
SET IDENTITY_INSERT [dbo].[SANPHAM] ON 

INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Gia], [MoTa], [TacGia], [Anh], [MaLoai], [SoLuongBan], [SoLuong], [MaNVTao]) VALUES (4033, N'Góc Nhỏ Có Nắng', CAST(55760 AS Decimal(18, 0)), N'- Với 30 chủ đề tô màu phong phú đa dạng, mỗi bức tranh như là một lời thủ thỉ tâm tình gửi đến bạn

- Thư giãn và chữa lành: Với những hình ảnh đẹp mắt và đơn giản, tô màu sẽ là một phương pháp hiệu quả giúp bạn chữa lành và nuôi dưỡng tâm hồn

- Khám phá sự sáng tạo: Bạn đừng ngại vẽ thêm, tô thêm màu sắc để thể hiện cảm xúc của riêng mình

- Chất liệu giấy dày, mịn, đẹp sẽ đem đến cho bạn trải nghiệm tô màu thú vị', N'Little Rainbow', N'sachv1.jpg', 6006, 0, 13, NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Gia], [MoTa], [TacGia], [Anh], [MaLoai], [SoLuongBan], [SoLuong], [MaNVTao]) VALUES (4034, N'Lén Nhặt Chuyện Đời', CAST(42500 AS Decimal(18, 0)), N'Tại vùng ngoại ô xứ Đan Mạch xưa, người thợ kim hoàn Per Enevoldsen đã cho ra mắt một món đồ trang sức lấy ý tưởng từ Pandora - người phụ nữ đầu tiên của nhân loại mang vẻ đẹp như một ngọc nữ phù dung, kiêu sa và bí ẩn trong Thần thoại Hy Lạp. Vòng Pandora được kết hợp từ một sợi dây bằng vàng, bạc hoặc bằng da cùng với những viên charm được chế tác đa dạng, tỉ mỉ. Ý tưởng của ông, mỗi viên charm như một câu chuyện, một kỷ niệm đáng nhớ của người sở hữu chiếc vòng.', N'Mộc Trầm', N'sachv2.jpg', 6006, 0, 1, NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Gia], [MoTa], [TacGia], [Anh], [MaLoai], [SoLuongBan], [SoLuong], [MaNVTao]) VALUES (4035, N'Một Đời Quản Trị', CAST(1640000 AS Decimal(18, 0)), N'Có rất nhiều doanh nhân vĩ đại, những người sáng lập, xây dựng, điều hành những công ty hàng đầu thế giới với doanh thu cả trăm tỷ đô-la Mỹ, những công ty sáng tạo công nghệ và sản phẩm làm thay đổi thế giới, nhưng họ không viết sách dù rằng có nhiều sách viết về họ.', N'Phan Văn Trường', N'sachkt1.jpg', 6007, 0, 6, NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Gia], [MoTa], [TacGia], [Anh], [MaLoai], [SoLuongBan], [SoLuong], [MaNVTao]) VALUES (4036, N'Nghệ Thuật Tư Duy Chiến Lược', CAST(179250 AS Decimal(18, 0)), N'Có phải những người chiến thắng các chương trình truyền hình thực tế được trời phú cho trí thông minh và kỹ năng hơn người?

Có phải các nhà đầu tư vĩ đại có thể nhìn thấy những điều mà hầu hết mọi người bỏ lỡ?

Có phải các tay chơi poker sở hữu những tài năng mà chúng ta không có?', N'Avinash K Dixit', N'sachkt2.jpg', 6007, 0, 6, NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Gia], [MoTa], [TacGia], [Anh], [MaLoai], [SoLuongBan], [SoLuong], [MaNVTao]) VALUES (4037, N'Tư Duy Ngược', CAST(69500 AS Decimal(18, 0)), N'Chúng ta thực sự có hạnh phúc không? Chúng ta có đang sống cuộc đời mình không? Chúng ta có dám dũng cảm chiến thắng mọi khuôn mẫu, định kiến, đi ngược đám đông để khẳng định bản sắc riêng của mình không?. Có bao giờ bạn tự hỏi như thế, rồi có câu trả lời cho chính mình?', N'Nguyễn Anh Dũng', N'sachtl1.jpg', 6008, 0, 15, NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Gia], [MoTa], [TacGia], [Anh], [MaLoai], [SoLuongBan], [SoLuong], [MaNVTao]) VALUES (4038, N'Con Đường Chẳng Mấy Ai Đi', CAST(112200 AS Decimal(18, 0)), N'Có lẽ không quyển sách nào trong thế kỷ này có tác động sâu sắc đến đời sống trí tuệ và tinh thần của chúng ta hơn Con Đường Chẳng Mấy Ai Đi. Với doanh số trên 10 triệu bản in trên toàn thế giới và được dịch sang hơn 25 ngôn ngữ, đây là một hiện tượng trong ngành xuất bản, với hơn mười năm nằm trong danh sách Best-sellers của New York Times.', N'M. Scott Peck', N'sachtl2.jpg', 6009, 0, 11, NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Gia], [MoTa], [TacGia], [Anh], [MaLoai], [SoLuongBan], [SoLuong], [MaNVTao]) VALUES (4039, N'Búp Sen Xanh ', CAST(61200 AS Decimal(18, 0)), N'Có thể xếp “Búp Sen Xanh” vào nhóm tác phẩm văn học dành cho thiếu nhi và là tác phẩm nổi tiếng nhất viết về chủ tịch Hồ Chí Minh trong suốt thời thơ ấu cho đến khi rời Việt Nam sang Pháp.

“Búp Sen Xanh” là nơi tiểu thuyết và lịch sử đã gặp nhau và hoạ nên một giai đoạn trong cuộc đời người Cha già của dân tộc Việt Nam. Nơi ấy, có quê nhà xứ Nghệ, có làng Sen, có khung dệt của mẹ, có lời dạy của cha, có những người bạn và những kỷ niệm ấu thơ. Nơi ấy có xứ Huế mà trong cuộc sống nghèo khổ có trăn trở tuổi trẻ, về con người, về vận mệnh dân tộc, có mất mát và đau thương...', N'Sơn Tùng', N'stn1.jpg', 6009, 0, 13, NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Gia], [MoTa], [TacGia], [Anh], [MaLoai], [SoLuongBan], [SoLuong], [MaNVTao]) VALUES (4040, N'Xe Kem Ngọt Mùa Hè', CAST(55760 AS Decimal(18, 0)), N'Ưu điểm của cuốn "Xe Kem Ngọt Mùa Hè"

- Với 30 chủ đề tô màu phong phú đa dạng, mỗi bức tranh là một kỷ niệm, giúp bạn ôn lại những khoảnh khắc đáng nhớ nhất trong tuổi thơ.

- Thư giãn và chữa lành: Với những câu chuyện nhẹ nhàng và bình yên, cuốn sách là một phương tiện tuyệt vời để thư giãn và chữa lành tâm hồn sau những ngày làm việc căng thẳng.', N'Little Rainbow', N'stn2.jpg', 6009, 0, 14, NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Gia], [MoTa], [TacGia], [Anh], [MaLoai], [SoLuongBan], [SoLuong], [MaNVTao]) VALUES (5033, N'Đắc Nhân Tâm', CAST(100000 AS Decimal(18, 0)), N'zxkjckzjckascashc', N'Dale Carnegie', N'dntttttuntitled.jpg', 6009, 0, 15, NULL)
SET IDENTITY_INSERT [dbo].[SANPHAM] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__KHUYENMA__2725CF14310852BF]    Script Date: 26/07/2024 9:55:00 CH ******/
ALTER TABLE [dbo].[KHUYENMAI] ADD UNIQUE NONCLUSTERED 
(
	[MaKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DANHGIA] ADD  CONSTRAINT [DF__DANHGIA__NgayTao__44FF419A]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[DONHANG] ADD  DEFAULT ((0)) FOR [TongTien]
GO
ALTER TABLE [dbo].[KHUYENMAI] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[KHUYENMAI] ADD  DEFAULT (getdate()) FOR [NgayBatDau]
GO
ALTER TABLE [dbo].[KHUYENMAI] ADD  DEFAULT (getdate()) FOR [NgayKetThuc]
GO
ALTER TABLE [dbo].[KHUYENMAI] ADD  DEFAULT ((1)) FOR [KichHoat]
GO
ALTER TABLE [dbo].[NHANVIEN] ADD  CONSTRAINT [DF_NHANVIEN_TrangThai]  DEFAULT ((1)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[SANPHAM] ADD  DEFAULT ((0)) FOR [SoLuongBan]
GO
ALTER TABLE [dbo].[SANPHAM] ADD  DEFAULT ((0)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[CHITIETDONHANG]  WITH CHECK ADD  CONSTRAINT [FK_Chitietdonhang_Donhang] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DONHANG] ([MaDonHang])
GO
ALTER TABLE [dbo].[CHITIETDONHANG] CHECK CONSTRAINT [FK_Chitietdonhang_Donhang]
GO
ALTER TABLE [dbo].[CHITIETDONHANG]  WITH CHECK ADD  CONSTRAINT [FK_Chitietdonhang_Sanpham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SANPHAM] ([MaSanPham])
GO
ALTER TABLE [dbo].[CHITIETDONHANG] CHECK CONSTRAINT [FK_Chitietdonhang_Sanpham]
GO
ALTER TABLE [dbo].[DANHGIA]  WITH CHECK ADD  CONSTRAINT [FK_DANHGIA_KHACHHANG] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[DANHGIA] CHECK CONSTRAINT [FK_DANHGIA_KHACHHANG]
GO
ALTER TABLE [dbo].[DANHGIA]  WITH CHECK ADD  CONSTRAINT [FK_DANHGIA_SANPHAM] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SANPHAM] ([MaSanPham])
GO
ALTER TABLE [dbo].[DANHGIA] CHECK CONSTRAINT [FK_DANHGIA_SANPHAM]
GO
ALTER TABLE [dbo].[DONHANG]  WITH CHECK ADD  CONSTRAINT [FK_Donhang_Khachhang] FOREIGN KEY([ID])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[DONHANG] CHECK CONSTRAINT [FK_Donhang_Khachhang]
GO
ALTER TABLE [dbo].[DONHANG]  WITH CHECK ADD  CONSTRAINT [FK_DONHANG_KHUYENMAI] FOREIGN KEY([MaKM])
REFERENCES [dbo].[KHUYENMAI] ([MaKM])
GO
ALTER TABLE [dbo].[DONHANG] CHECK CONSTRAINT [FK_DONHANG_KHUYENMAI]
GO
ALTER TABLE [dbo].[DONHANG]  WITH CHECK ADD  CONSTRAINT [FK_DONHANG_NHANVIEN] FOREIGN KEY([MaNVXuLy])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[DONHANG] CHECK CONSTRAINT [FK_DONHANG_NHANVIEN]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_NHANVIEN] FOREIGN KEY([MaNVTao])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SANPHAM_NHANVIEN]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_Sanpham_Theloai] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LOAI] ([Maloai])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_Sanpham_Theloai]
GO

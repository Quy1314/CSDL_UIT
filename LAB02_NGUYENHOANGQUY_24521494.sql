USE QuanLyBanHang;
GO

INSERT INTO KHACHHANG (MAKH, HOTEN, DCHI, SODT, NGSINH, DOANHSO, NGDK)
VALUES
('KH01', N'Nguyen Van A', N'731 Tran Hung Dao, Q5, TpHCM', '08823451', '1960-10-22', 13060000, '2006-07-22'),
('KH02', N'Tran Ngoc Han', N'23/5 Nguyen Trai, Q5, TpHCM', '0908256478', '1974-04-03', 280000, '2006-07-30'),
('KH03', N'Tran Ngoc Linh', N'45 Nguyen Canh Chan, Q1, TpHCM', '0938776266', '1980-06-12', 3860000, '2006-08-05'),
('KH04', N'Tran Minh Long', N'50/34 Le Dai Hanh, Q10, TpHCM', '0917325476', '1965-03-09', 250000, '2006-10-02'),
('KH05', N'Le Nhat Minh', N'34 Truong Dinh, Q3, TpHCM', '08246108', '1950-03-10', 21000, '2006-10-28'),
('KH06', N'Le Hoai Thuong', N'227 Nguyen Van Cu, Q5, TpHCM', '08631738', '1981-12-31', 915000, '2006-11-24'),
('KH07', N'Nguyen Van Tam', N'32/3 Tran Binh Trong, Q5, TpHCM', '0916783565', '1971-04-06', 12500, '2006-12-01'),
('KH08', N'Phan Thi Thanh', N'45/2 An Duong Vuong, Q5, TpHCM', '0938435756', '1971-01-10', 365000, '2006-12-13'),
('KH09', N'Le Ha Vinh', N'873 Le Hong Phong, Q5, TpHCM', '08654763', '1979-09-03', 70000, '2007-01-14'),
('KH10', N'Ha Duy Lap', N'34/34B Nguyen Trai, Q1, TpHCM', '08768904', '1983-05-02', 67500, '2007-01-16');
GO

INSERT INTO NHANVIEN (MANV, HOTEN, SODT, NGVL) VALUES
('NV01', N'Nguyen Nhu Nhut', '0927345678', '2006-04-13'),
('NV02', N'Le Thi Phi Yen', '0987567390', '2006-04-21'),
('NV03', N'Nguyen Van B', '0997047382', '2006-04-27'),
('NV04', N'Ngo Thanh Tuan', '0913758498', '2006-06-24'),
('NV05', N'Nguyen Thi Truc Thanh', '0918590387', '2006-07-20');
GO

INSERT INTO SANPHAM (MASP, TENSP, DVT, NUOCSX, GIA) VALUES
('BC01', N'But chi', N'cay', N'Singapore', 3000),
('BC02', N'But chi', N'cay', N'Singapore', 5000),
('BC03', N'But chi', N'cay', N'Viet Nam', 3500),
('BC04', N'But chi', N'hop', N'Viet Nam', 30000),
('BB01', N'But bi', N'cay', N'Viet Nam', 5000),
('BB02', N'But bi', N'cay', N'Trung Quoc', 7000),
('BB03', N'But bi', N'hop', N'Thai Lan', 100000),
('TV01', N'Tap 100 giay mong', N'quyen', N'Trung Quoc', 2500),
('TV02', N'Tap 200 giay mong', N'quyen', N'Trung Quoc', 4500),
('TV03', N'Tap 100 giay tot', N'quyen', N'Viet Nam', 3000),
('TV04', N'Tap 200 giay tot', N'quyen', N'Viet Nam', 5500),
('TV05', N'Tap 100 trang', N'chuc', N'Viet Nam', 23000),
('TV06', N'Tap 200 trang', N'chuc', N'Viet Nam', 53000),
('TV07', N'Tap 100 trang', N'chuc', N'Trung Quoc', 34000),
('ST01', N'So tay 500 trang', N'quyen', N'Trung Quoc', 40000),
('ST02', N'So tay loai 1', N'quyen', N'Viet Nam', 55000),
('ST03', N'So tay loai 2', N'quyen', N'Viet Nam', 51000),
('ST04', N'So tay', N'quyen', N'Thai Lan', 55000),
('ST05', N'So tay mong', N'quyen', N'Thai Lan', 20000),
('ST06', N'Phan viet bang', N'hop', N'Viet Nam', 5000),
('ST07', N'Phan khong bui', N'hop', N'Viet Nam', 7000),
('ST08', N'Bong bang', N'cai', N'Viet Nam', 1000),
('ST09', N'But long', N'cay', N'Viet Nam', 5000),
('ST10', N'But long', N'cay', N'Trung Quoc', 7000);
GO

INSERT INTO HOADON (SOHD, NGHD, MAKH, MANV, TRIGIA) VALUES
(1001, '2006-07-23', 'KH01', 'NV01', 320000),
(1002, '2006-08-12', 'KH01', 'NV02', 840000),
(1003, '2006-08-23', 'KH02', 'NV01', 100000),
(1004, '2006-09-01', 'KH02', 'NV01', 180000),
(1005, '2006-10-20', 'KH01', 'NV02', 3800000),
(1006, '2006-10-16', 'KH01', 'NV03', 2430000),
(1007, '2006-10-28', 'KH03', 'NV03', 510000),
(1008, '2006-10-28', 'KH01', 'NV03', 440000),
(1009, '2006-10-28', 'KH03', 'NV04', 200000),
(1010, '2006-11-01', 'KH01', 'NV01', 5200000),
(1011, '2006-11-04', 'KH04', 'NV03', 250000),
(1012, '2006-11-30', 'KH05', 'NV03', 21000),
(1013, '2006-12-12', 'KH06', 'NV01', 5000),
(1014, '2006-12-31', 'KH03', 'NV02', 3150000),
(1015, '2007-01-01', 'KH06', 'NV01', 910000),
(1016, '2007-01-01', 'KH07', 'NV02', 12500),
(1017, '2007-01-02', 'KH08', 'NV03', 35000),
(1018, '2007-01-13', 'KH08', 'NV03', 330000),
(1019, '2007-01-13', 'KH01', 'NV03', 30000),
(1020, '2007-01-14', 'KH09', 'NV04', 70000),
(1021, '2007-01-16', 'KH10', 'NV03', 67500),
(1022, '2007-01-16', NULL, 'NV03', 7000),
(1023, '2007-01-17', NULL, 'NV01', 330000);
GO

INSERT INTO CTHD (SOHD, MASP, SL)
VALUES
(1001, 'TV02', 10),
(1001, 'ST01', 5),
(1001, 'BC01', 5),
(1001, 'BC02', 10),
(1001, 'ST08', 10),
(1002, 'BC04', 20),
(1002, 'BB01', 20),
(1002, 'BB02', 20),
(1003, 'BB03', 10),
(1004, 'TV01', 20),
(1004, 'TV02', 10),
(1004, 'TV03', 10),
(1004, 'TV04', 10),
(1005, 'TV05', 50),
(1005, 'TV06', 50),
(1006, 'TV07', 20),
(1006, 'ST01', 30),
(1006, 'ST02', 10),
(1007, 'ST03', 10),
(1008, 'ST04', 8),
(1009, 'ST05', 10),
(1010, 'TV07', 50),
(1010, 'ST07', 50),
(1010, 'ST08', 100),
(1010, 'ST04', 50),
(1010, 'TV03', 100),
(1011, 'ST06', 50),
(1012, 'ST07', 3),
(1013, 'ST08', 5),
(1014, 'BC02', 80),
(1014, 'BB02', 100),
(1014, 'BC04', 60),
(1014, 'BB01', 50),
(1015, 'BB02', 30),
(1015, 'BB03', 7),
(1016, 'TV01', 5),
(1017, 'TV02', 1),
(1017, 'TV03', 1),
(1017, 'TV04', 5),
(1018, 'ST04', 6),
(1019, 'ST05', 1),
(1019, 'ST06', 2),
(1020, 'ST07', 10),
(1021, 'ST08', 5),
(1021, 'TV01', 7),
(1021, 'TV02', 10),
(1022, 'ST07', 1),
(1023, 'ST04', 6);
GO

-- BÀI TẬP 2: NHẬP DỮ LIỆU QUANLYGIAOVU
USE QuanLyGiaoVu;
GO

INSERT INTO KHOA (MAKHOA, TENKHOA, NGTLAP, TRGKHOA) VALUES
('KHMT', N'Khoa hoc may tinh', '2005-06-07', NULL),
('HTTT', N'He thong thong tin', '2005-06-07', NULL),
('CNPM', N'Cong nghe phan mem', '2005-06-07', NULL),
('MTT', N'Mang va truyen thong', '2005-10-20', NULL),
('KTMT', N'Ky thuat may tinh', '2005-12-20', NULL);
GO

INSERT INTO GIAOVIEN (MAGV, HOTEN, HOCVI, HOCHAM, GIOITINH, NGSINH, NGVL, HESO, MUCLUONG, MAKHOA) VALUES
('GV01', N'Ho Thanh Son', 'PTS', 'GS', N'Nam', '1950-05-02', '2004-01-11', 5.00, 2250000, 'KHMT'),
('GV02', N'Tran Tam Thanh', 'TS', 'PGS', N'Nam', '1965-12-17', '2004-04-20', 4.50, 2025000, 'HTTT'),
('GV03', N'Do Nghiem Phung', 'TS', 'GS', N'Nu', '1950-08-01', '2004-09-23', 4.00, 1800000, 'CNPM'),
('GV04', N'Tran Nam Son', 'TS', 'PGS', N'Nam', '1961-02-22', '2005-01-12', 4.50, 2025000, 'KTMT'),
('GV05', N'Mai Thanh Danh', 'ThS', 'GV', N'Nam', '1958-03-12', '2005-01-12', 3.00, 1350000, 'HTTT'),
('GV06', N'Tran Doan Hung', 'TS', 'GV', N'Nam', '1953-03-11', '2005-01-12', 4.50, 2025000, 'KHMT'),
('GV07', N'Nguyen Minh Tien', 'ThS', 'GV', N'Nam', '1971-11-23', '2005-03-01', 4.00, 1800000, 'KHMT'),
('GV08', N'Le Thi Tran', 'KS', NULL, N'Nu', '1974-03-26', '2005-03-01', 1.69, 760500, 'KHMT'),
('GV09', N'Nguyen To Lan', 'ThS', 'GV', N'Nu', '1966-12-31', '2005-03-01', 4.00, 1800000, 'HTTT'),
('GV10', N'Le Tran Anh Loan', 'KS', NULL, N'Nu', '1972-07-17', '2005-03-01', 1.86, 837000, 'CNPM'),
('GV11', N'Ho Thanh Tung', 'CN', 'GV', N'Nam', '1980-01-12', '2005-05-15', 2.67, 1201500, 'MTT'),
('GV12', N'Tran Van Anh', 'CN', NULL, N'Nu', '1981-03-29', '2005-05-15', 1.69, 760500, 'CNPM'),
('GV13', N'Nguyen Linh Dan', 'CN', NULL, N'Nu', '1980-05-23', '2005-05-15', 1.69, 760500, 'KTMT'),
('GV14', N'Truong Minh Chau', 'ThS', 'GV', N'Nu', '1976-11-30', '2005-05-15', 3.00, 1350000, 'MTT'),
('GV15', N'Le Ha Thanh', 'ThS', 'GV', N'Nam', '1978-05-04', '2005-05-15', 3.00, 1350000, 'KHMT');
GO

UPDATE KHOA SET TRGKHOA = 'GV01' WHERE MAKHOA = 'KHMT';
UPDATE KHOA SET TRGKHOA = 'GV02' WHERE MAKHOA = 'HTTT';
UPDATE KHOA SET TRGKHOA = 'GV04' WHERE MAKHOA = 'CNPM';
UPDATE KHOA SET TRGKHOA = 'GV03' WHERE MAKHOA = 'MTT';
GO

INSERT INTO LOP (MALOP, TENLOP, TRGLOP, SISO, MAGVCN) VALUES
('K11', N'Lop 1 khoa 1', NULL, 11, 'GV07'),
('K12', N'Lop 2 khoa 1', NULL, 12, 'GV09'),
('K13', N'Lop 3 khoa 1', NULL, 12, 'GV14');
GO

INSERT INTO HOCVIEN (MAHV, HO, TEN, NGSINH, GIOITINH, NOISINH, MALOP) VALUES
('K1101', N'Nguyen Van', 'A', '1986-01-27', N'Nam', N'TpHCM', 'K11'),
('K1102', N'Tran Ngoc', 'Han', '1986-03-14', N'Nu', N'Kien Giang', 'K11'),
('K1103', N'Ha Duy', 'Lap', '1986-04-18', N'Nam', N'Nghe An', 'K11'),
('K1104', N'Tran Ngoc', 'Linh', '1986-03-30', N'Nu', N'Tay Ninh', 'K11'),
('K1105', N'Tran Minh', 'Long', '1986-02-27', N'Nam', N'TpHCM', 'K11'),
('K1106', N'Le Nhat', 'Minh', '1986-01-24', N'Nam', N'TpHCM', 'K11'),
('K1107', N'Nguyen Nhu', 'Nhut', '1986-01-27', N'Nam', N'Ha Noi', 'K11'),
('K1108', N'Nguyen Manh', 'Tam', '1986-02-27', N'Nam', N'Kien Giang', 'K11'),
('K1109', N'Phan Thi Thanh', 'Tam', '1986-01-27', N'Nu', N'Vinh Long', 'K11'),
('K1110', N'Le Hoai', 'Thuong', '1986-02-05', N'Nu', N'Can Tho', 'K11'),
('K1111', N'Le Ha', 'Vinh', '1986-12-25', N'Nam', N'Vinh Long', 'K11'),
('K1201', N'Nguyen Van', 'B', '1986-02-11', N'Nam', N'TpHCM', 'K12'),
('K1202', N'Nguyen Thi Kim', 'Duyen', '1986-01-18', N'Nu', N'TpHCM', 'K12'),
('K1203', N'Tran Thi Kim', 'Duyen', '1986-09-17', N'Nu', N'TpHCM', 'K12'),
('K1204', N'Truong My', 'Hanh', '1986-05-19', N'Nu', N'Dong Nai', 'K12'),
('K1205', N'Nguyen Thanh', 'Nam', '1986-04-17', N'Nam', N'TpHCM', 'K12'),
('K1206', N'Nguyen Thi Truc', 'Thanh', '1986-03-04', N'Nu', N'Kien Giang', 'K12'),
('K1207', N'Tran Thi Bich', 'Thuy', '1986-02-08', N'Nu', N'Nghe An', 'K12'),
('K1208', N'Huynh Thi Kim', 'Trieu', '1986-04-08', N'Nu', N'Tay Ninh', 'K12'),
('K1209', N'Pham Thanh', 'Trieu', '1986-02-23', N'Nam', N'TpHCM', 'K12'),
('K1210', N'Ngo Thanh', 'Tuan', '1986-02-14', N'Nam', N'TpHCM', 'K12'),
('K1211', N'Do Thi', 'Xuan', '1986-03-09', N'Nu', N'Ha Noi', 'K12'),
('K1212', N'Le Thi Phi', 'Yen', '1986-03-12', N'Nu', N'TpHCM', 'K12'),
('K1301', N'Nguyen Thi Kim', 'Cuc', '1986-06-09', N'Nu', N'Kien Giang', 'K13'),
('K1302', N'Truong Thi My', 'Hien', '1986-03-18', N'Nu', N'Nghe An', 'K13'),
('K1303', N'Le Duc', 'Hien', '1986-03-21', N'Nam', N'Tay Ninh', 'K13'),
('K1304', N'Le Quang', 'Hien', '1986-04-18', N'Nam', N'TpHCM', 'K13'),
('K1305', N'Le Thi', 'Huong', '1986-03-27', N'Nu', N'TpHCM', 'K13'),
('K1306', N'Nguyen Thai', 'Huu', '1986-03-30', N'Nam', N'Ha Noi', 'K13'),
('K1307', N'Tran Minh', 'Man', '1986-05-28', N'Nam', N'TpHCM', 'K13'),
('K1308', N'Nguyen Hieu', 'Nghia', '1986-04-08', N'Nam', N'Kien Giang', 'K13'),
('K1309', N'Nguyen Trung', 'Nghia', '1987-01-18', N'Nam', N'Nghe An', 'K13'),
('K1310', N'Tran Thi Hong', 'Tham', '1986-04-22', N'Nu', N'Tay Ninh', 'K13'),
('K1311', N'Tran Minh', 'Thuc', '1986-04-04', N'Nam', N'TpHCM', 'K13'),
('K1312', N'Nguyen Thi Kim', 'Yen', '1986-09-07', N'Nu', N'TpHCM', 'K13');
GO

UPDATE LOP SET TRGLOP = 'K1108' WHERE MALOP = 'K11';
UPDATE LOP SET TRGLOP = 'K1205' WHERE MALOP = 'K12';
UPDATE LOP SET TRGLOP = 'K1305' WHERE MALOP = 'K13';
GO

INSERT INTO MONHOC (MAMH, TENMH, TCLT, TCTH, MAKHOA) VALUES
('THDC', N'Tin hoc dai cuong', 4, 1, 'KHMT'),
('CTRR', N'Cau truc roi rac', 5, 2, 'KHMT'),
('CSDL', N'Co so du lieu', 3, 1, 'HTTT'),
('CTDLGT', N'Cau truc du lieu va giai thuat', 3, 1, 'KHMT'),
('PTTKTT', N'Phan tich thiet ke thuat toan', 3, 0, 'KHMT'),
('DHMT', N'Do hoa may tinh', 3, 1, 'KHMT'),
('KTMT', N'Kien truc may tinh', 3, 0, 'KTMT'),
('TKCSDL', N'Thiet ke co so du lieu', 3, 1, 'HTTT'),
('PTTKHTTT', N'Phan tich thiet ke he thong thong tin', 4, 1, 'HTTT'),
('HDH', N'He dieu hanh', 4, 1, 'KTMT'),
('NMCNPM', N'Nhap mon cong nghe phan mem', 3, 0, 'CNPM'),
('LTCFW', N'Lap trinh C for win', 3, 1, 'CNPM'),
('LTHDT', N'Lap trinh huong doi tuong', 3, 1, 'CNPM');
GO

INSERT INTO DIEUKIEN (MAMH, MAMH_TRUOC) VALUES
('CSDL', 'CTRR'),
('CSDL', 'CTDLGT'),
('CTDLGT', 'THDC'),
('PTTKTT', 'THDC'),
('PTTKTT', 'CTDLGT'),
('DHMT', 'THDC'),
('LTHDT', 'THDC'),
('PTTKHTTT', 'CSDL');
GO

INSERT INTO GIANGDAY (MALOP, MAMH, MAGV, HOCKY, NAM, TUNGAY, DENNGAY) VALUES
('K11', 'THDC', 'GV07', 1, 2006, '2006-01-02', '2006-05-12'),
('K12', 'THDC', 'GV06', 1, 2006, '2006-01-02', '2006-05-12'),
('K13', 'THDC', 'GV15', 1, 2006, '2006-01-02', '2006-05-12'),
('K11', 'CTRR', 'GV02', 1, 2006, '2006-01-09', '2006-05-17'),
('K12', 'CTRR', 'GV02', 1, 2006, '2006-01-09', '2006-05-17'),
('K13', 'CTRR', 'GV08', 1, 2006, '2006-01-09', '2006-05-17'),
('K11', 'CSDL', 'GV05', 2, 2006, '2006-06-01', '2006-07-15'),
('K12', 'CSDL', 'GV09', 2, 2006, '2006-06-01', '2006-07-15'),
('K13', 'CTDLGT', 'GV15', 2, 2006, '2006-06-01', '2006-07-15'),
('K13', 'CSDL', 'GV05', 3, 2006, '2006-08-01', '2006-12-15'),
('K13', 'DHMT', 'GV07', 3, 2006, '2006-08-01', '2006-12-15'),
('K11', 'CTDLGT', 'GV15', 3, 2006, '2006-08-01', '2006-12-15'),
('K12', 'CTDLGT', 'GV15', 3, 2006, '2006-08-01', '2006-12-15'),
('K11', 'HDH', 'GV04', 1, 2007, '2007-01-02', '2007-02-18'),
('K12', 'HDH', 'GV04', 1, 2007, '2007-01-02', '2007-03-20'),
('K11', 'DHMT', 'GV07', 1, 2007, '2007-02-18', '2007-03-20');
GO

INSERT INTO KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) VALUES
('K1101', 'CSDL', 1, '2006-07-20', 10.00, N'Dat'),
('K1101', 'CTDLGT', 1, '2006-12-28', 9.00, N'Dat'),
('K1101', 'THDC', 1, '2006-05-20', 9.00, N'Dat'),
('K1101', 'CTRR', 1, '2006-05-13', 9.50, N'Dat'),
('K1102', 'CSDL', 1, '2006-07-20', 4.00, N'Khong dat'),
('K1102', 'CSDL', 2, '2006-07-27', 4.25, N'Khong dat'),
('K1102', 'CSDL', 3, '2006-08-10', 4.50, N'Khong dat'),
('K1102', 'CTDLGT', 1, '2006-12-28', 4.50, N'Khong dat'),
('K1102', 'CTDLGT', 2, '2007-01-05', 4.00, N'Khong dat'),
('K1102', 'CTDLGT', 3, '2007-01-15', 6.00, N'Dat'),
('K1102', 'THDC', 1, '2006-05-20', 5.00, N'Dat'),
('K1102', 'CTRR', 1, '2006-05-13', 7.00, N'Dat'),
('K1103', 'CSDL', 1, '2006-07-20', 3.50, N'Khong dat'),
('K1103', 'CSDL', 2, '2006-07-27', 8.25, N'Dat'),
('K1103', 'CTDLGT', 1, '2006-12-28', 7.00, N'Dat'),
('K1103', 'THDC', 1, '2006-05-20', 8.00, N'Dat'),
('K1103', 'CTRR', 1, '2006-05-13', 6.50, N'Dat'),
('K1104', 'CSDL', 1, '2006-07-20', 3.75, N'Khong dat'),
('K1104', 'CTDLGT', 1, '2006-12-28', 4.00, N'Khong dat'),
('K1104', 'THDC', 1, '2006-05-20', 4.00, N'Khong dat'),
('K1104', 'CTRR', 1, '2006-05-13', 4.00, N'Khong dat'),
('K1104', 'CTRR', 2, '2006-05-20', 3.50, N'Khong dat'),
('K1104', 'CTRR', 3, '2006-06-30', 4.00, N'Khong dat'),
('K1201', 'CSDL', 1, '2006-07-20', 6.00, N'Dat'),
('K1201', 'CTDLGT', 1, '2006-12-28', 5.00, N'Dat'),
('K1201', 'THDC', 1, '2006-05-20', 8.50, N'Dat'),
('K1201', 'CTRR', 1, '2006-05-13', 9.00, N'Dat'),
('K1202', 'CSDL', 1, '2006-07-20', 8.00, N'Dat'),
('K1202', 'CTDLGT', 1, '2006-12-28', 4.00, N'Khong dat'),
('K1202', 'CTDLGT', 2, '2007-01-05', 5.00, N'Dat'),
('K1202', 'THDC', 1, '2006-05-20', 4.00, N'Khong dat'),
('K1202', 'THDC', 2, '2006-05-27', 4.00, N'Khong dat'),
('K1202', 'CTRR', 1, '2006-05-13', 3.00, N'Khong dat'),
('K1202', 'CTRR', 2, '2006-05-20', 4.00, N'Khong dat'),
('K1202', 'CTRR', 3, '2006-06-30', 6.25, N'Dat'),
('K1203', 'CSDL', 1, '2006-07-20', 9.25, N'Dat'),
('K1203', 'CTDLGT', 1, '2006-12-28', 9.50, N'Dat'),
('K1203', 'THDC', 1, '2006-05-20', 10.00, N'Dat'),
('K1203', 'CTRR', 1, '2006-05-13', 10.00, N'Dat'),
('K1204', 'CSDL', 1, '2006-07-20', 8.50, N'Dat'),
('K1204', 'CTDLGT', 1, '2006-12-28', 6.75, N'Dat'),
('K1204', 'THDC', 1, '2006-05-20', 4.00, N'Khong dat'),
('K1204', 'CTRR', 1, '2006-05-13', 6.00, N'Dat'),
('K1301', 'CSDL', 1, '2006-12-20', 4.25, N'Khong dat'),
('K1301', 'CTDLGT', 1, '2006-07-25', 8.00, N'Dat'),
('K1301', 'THDC', 1, '2006-05-20', 7.75, N'Dat'),
('K1301', 'CTRR', 1, '2006-05-13', 8.00, N'Dat'),
('K1302', 'CSDL', 1, '2006-12-20', 6.75, N'Dat'),
('K1302', 'CTDLGT', 1, '2006-07-25', 5.00, N'Dat'),
('K1302', 'THDC', 1, '2006-05-20', 8.00, N'Dat'),
('K1302', 'CTRR', 1, '2006-05-13', 8.50, N'Dat'),
('K1303', 'CSDL', 1, '2006-12-20', 4.00, N'Khong dat'),
('K1303', 'CTDLGT', 1, '2006-07-25', 4.50, N'Khong dat'),
('K1303', 'CTDLGT', 2, '2006-08-07', 4.00, N'Khong dat'),
('K1303', 'CTDLGT', 3, '2006-08-15', 4.25, N'Khong dat'),
('K1303', 'THDC', 1, '2006-05-20', 4.50, N'Khong dat'),
('K1303', 'CTRR', 1, '2006-05-13', 3.25, N'Khong dat'),
('K1303', 'CTRR', 2, '2006-05-20', 5.00, N'Dat'),
('K1304', 'CSDL', 1, '2006-12-20', 7.75, N'Dat'),
('K1304', 'CTDLGT', 1, '2006-07-25', 9.75, N'Dat'),
('K1304', 'THDC', 1, '2006-05-20', 5.50, N'Dat'),
('K1304', 'CTRR', 1, '2006-05-13', 5.00, N'Dat'),
('K1305', 'CSDL', 1, '2006-12-20', 9.25, N'Dat'),
('K1305', 'CTDLGT', 1, '2006-07-25', 10.00, N'Dat'),
('K1305', 'THDC', 1, '2006-05-20', 8.00, N'Dat'),
('K1305', 'CTRR', 1, '2006-05-13', 10.00, N'Dat');
GO
-- quanlybanhang phan2 2-5
--2
USE QuanLyBanHang;
GO
SELECT * INTO SANPHAM1 FROM SANPHAM;
SELECT * INTO KHACHHANG1 FROM KHACHHANG;
GO
--3
UPDATE SANPHAM1
SET GIA = GIA * 1.05
WHERE NUOCSX = 'Thai Lan';

--4

UPDATE SANPHAM1
SET GIA = GIA * 0.95
WHERE NUOCSX = 'Trung Quoc';

--5
UPDATE KHACHHANG1
SET LOAIKH = 'Vip'
WHERE 
    (NGDK < '2007-01-01' AND DOANHSO >= 10000000)
    OR
    (NGDK >= '2007-01-01' AND DOANHSO >= 2000000);

-- QUANLYGIAOVU BAI 11-14
USE QuanLyGiaoVu;
GO
--11 Học viên ít nhất là 18 tuổi.
ALTER TABLE HOCVIEN
ADD CONSTRAINT CK_TUOI_HV 
CHECK (DATEADD(YEAR, 18, NGSINH) <= GETDATE());
GO
--12 Giảng dạy một môn học ngày bắt đầu (TUNGAY) phải nhỏ hơn ngày kết thúc (DENNGAY).
ALTER TABLE GIANGDAY
ADD CONSTRAINT CK_NGAY CHECK (TUNGAY < DENNGAY);
GO
--13 Giáo viên khi vào làm ít nhất là 22 tuổi.
ALTER TABLE GIAOVIEN
ADD CONSTRAINT CK_TUOI_GV
CHECK( DATEADD(YEAR,22,NGSINH) <= GETDATE());
GO
--14 Tất cả các môn học đều có số tín chỉ lý thuyết và tín chỉ thực hành chênh lệch nhau không quá 3.
ALTER TABLE MONHOC
ADD CONSTRAINT CK_SOTINCHI 
CHECK (ABS(TCLT - TCTH) <= 3);


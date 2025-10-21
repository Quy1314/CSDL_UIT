USE QuanLyGiaoVu
GO
-- 1 BẢNG KHOA
INSERT INTO KHOA (MAKHOA, TENKHOA, NGTLAP, TRGKHOA) VALUES
('KHMT', 'Khoa hoc may tinh', '2005-06-07', 'GV01'),
('HTTT', 'He thong thong tin', '2005-06-07', 'GV02'),
('CNPM', 'Cong nghe phan mem', '2005-06-07', 'GV04'),
('MTT', 'Mang va truyen thong', '2005-10-20', 'GV03'),
('KTMT', 'Ky thuat may tinh', '2005-12-20', NULL);
GO

-- 2 BẢNG GIAOVIEN
INSERT INTO GIAOVIEN (MAGV, HOTEN, HOCVI, HOCHAM, GIOITINH, NGSINH, NGVL, HESO, MUCLUONG, MAKHOA) VALUES
('GV01', 'Nguyen Hoai An', 'TS', 'GS', 'Nam', '1973-02-15', '2004-01-11', 5.00, 2250000, 'KHMT'),
('GV02', 'Tran Tam Thanh', 'TS', 'PGS', 'Nam', '1965-12-17', '2004-04-20', 4.50, 2025000, 'HTTT'),
('GV03', 'Nguyen Ngoc Anh', 'ThS', NULL, 'Nu', '1975-05-11', '2005-11-23', 4.00, 1800000, 'MTT'),
('GV04', 'Nguyen Van Long', 'TS', 'PGS', 'Nam', '1961-09-20', '2005-01-01', 5.00, 2250000, 'CNPM'),
('GV05', 'Tran Thi Thu Thuy', 'KS', NULL, 'Nu', '1976-07-25', '2005-01-01', 3.00, 1350000, 'KTMT');
GO

-- BẢNG LOP
INSERT INTO LOP (MALOP, TENLOP, TRGLOP, SISO, MAGVCN) VALUES
('K11', 'Lop 1 khoa 1', 'HV07', 11, 'GV01'),
('K12', 'Lop 2 khoa 1', 'HV02', 12, 'GV02'),
('K13', 'Lop 3 khoa 1', 'HV03', 12, 'GV03');
GO

--  BẢNG MONHOC
INSERT INTO MONHOC (MAMH, TENMH, TCLT, TCTH, MAKHOA) VALUES
('THDC', 'Tin hoc dai cuong', 4, 1, 'KHMT'),
('CTRR', 'Cau truc roi rac', 5, 0, 'KHMT'),
('CSDL', 'Co so du lieu', 3, 1, 'HTTT'),
('CTDLGT', 'Cau truc du lieu va giai thuat', 3, 1, 'KHMT'),
('PTTKTT', 'Phan tich thiet ke thuat toan', 3, 0, 'KHMT'),
('DHMT', 'Do hoa may tinh', 3, 1, 'KHMT'),
('KTMT', 'Kien truc may tinh', 3, 0, 'KTMT'),
('TKCSDL', 'Thiet ke co so du lieu', 3, 1, 'HTTT'),
('PTTKHTTT', 'Phan tich thiet ke he thong thong tin', 4, 1, 'HTTT'),
('HDH', 'He dieu hanh', 4, 0, 'KTMT'),
('NMCNPM', 'Nhap mon cong nghe phan mem', 3, 0, 'CNPM'),
('LTCFW', 'Lap trinh C for win', 3, 1, 'CNPM'),
('LTHDT', 'Lap trinh huong doi tuong', 3, 1, 'CNPM'),
('MMT', 'Mang may tinh', 3, 1, 'MTT');
GO

-- BẢNG DIEUKIEN
INSERT INTO DIEUKIEN (MAMH, MAMH_TRUOC) VALUES
('CSDL', 'CTRR'),
('CSDL', 'THDC'),
('CTDLGT', 'THDC'),
('PTTKTT', 'THDC'),
('PTTKTT', 'CTDLGT'),
('DHMT', 'THDC'),
('LTHDT', 'THDC'),
('PTTKHTTT', 'CSDL');
GO

-- BẢNG HOCVIEN
INSERT INTO HOCVIEN (MAHV, HO, TEN, NGSINH, GIOITINH, NOISINH, MALOP) VALUES
('HV01', 'Nguyen Van', 'A', '1986-02-23', 'Nam', 'TpHCM', 'K11'),
('HV02', 'Tran Thi', 'B', '1986-04-14', 'Nu', 'KhanhHoa', 'K12'),
('HV03', 'Le Van', 'C', '1986-12-20', 'Nam', 'TpHCM', 'K13'),
('HV04', 'Pham Thi', 'D', '1986-02-25', 'Nu', 'TpHCM', 'K11'),
('HV05', 'Nguyen Thi', 'E', '1987-01-20', 'Nu', 'TpHCM', 'K12'),
('HV06', 'Hoang Van', 'F', '1986-08-12', 'Nam', 'Da Nang', 'K13'),
('HV07', 'Phan Thi', 'G', '1986-09-02', 'Nu', 'TpHCM', 'K11'),
('HV08', 'Dang Van', 'H', '1986-03-05', 'Nam', 'KhanhHoa', 'K12'),
('HV09', 'Bui Thi', 'I', '1987-04-08', 'Nu', 'Da Nang', 'K13'),
('HV10', 'Tran Van', 'K', '1986-07-11', 'Nam', 'TpHCM', 'K11'),
('HV11', 'Nguyen Thi', 'L', '1986-12-12', 'Nu', 'TpHCM', 'K12'),
('HV12', 'Vo Van', 'M', '1987-01-01', 'Nam', 'TpHCM', 'K13'),
('HV13', 'Nguyen Van', 'N', '1986-04-04', 'Nam', 'TpHCM', 'K11');
GO

--  BẢNG GIANGDAY
INSERT INTO GIANGDAY (MALOP, MAMH, MAGV, HOCKY, NAM, TUNGAY, DENNGAY) VALUES
('K11', 'THDC', 'GV07', 1, 2006, '2006-02-01', '2006-06-15'),
('K12', 'CTRR', 'GV06', 1, 2006, '2006-02-01', '2006-06-15'),
('K13', 'CSDL', 'GV02', 2, 2006, '2006-07-01', '2006-11-30'),
('K11', 'CTDLGT', 'GV05', 2, 2006, '2006-07-01', '2006-11-30'),
('K12', 'PTTKTT', 'GV01', 3, 2007, '2007-02-01', '2007-06-15'),
('K13', 'DHMT', 'GV03', 3, 2007, '2007-02-01', '2007-06-15'),
('K11', 'HDH', 'GV04', 1, 2007, '2007-09-01', '2008-01-15');
GO

--  BẢNG KETQUATHI
INSERT INTO KETQUATHI (MAHV, MAMH, LANTHI, NGTHI, DIEM, KQUA) VALUES
('HV01', 'THDC', 1, '2006-06-15', 9.00, 'Dat'),
('HV02', 'CTRR', 1, '2006-06-15', 8.50, 'Dat'),
('HV03', 'CSDL', 1, '2006-11-30', 4.50, 'Khong dat'),
('HV03', 'CSDL', 2, '2006-12-20', 6.00, 'Dat'),
('HV04', 'CTDLGT', 1, '2006-11-30', 5.50, 'Dat'),
('HV05', 'PTTKTT', 1, '2007-06-15', 7.00, 'Dat'),
('HV06', 'DHMT', 1, '2007-06-15', 5.00, 'Dat'),
('HV07', 'HDH', 1, '2008-01-15', 8.00, 'Dat');
GO

-- QUANLYBANHANG
-- 1. KHACHHANG
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

-- 2. NHANVIEN
INSERT INTO NHANVIEN VALUES
('NV01', N'Nguyen Nhu Nhut', '0927345678', '2006-04-13'),
('NV02', N'Le Thi Phi Yen', '0987567390', '2006-04-21'),
('NV03', N'Nguyen Van B', '0997047382', '2006-04-27'),
('NV04', N'Ngo Thanh Tuan', '0913758498', '2006-06-24'),
('NV05', N'Nguyen Thi Truc Thanh', '0918590387', '2006-07-20');
GO

-- 3. SANPHAM
INSERT INTO SANPHAM VALUES
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

-- 4. HOADON
INSERT INTO HOADON VALUES
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
(1021, '2007-01-16', 'KH10', 'NV03', 67500);
GO

-- 5. CTHD
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
(1021, 'TV02', 10);
GO
-- quanlybanhang phan2 2-5
--2
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


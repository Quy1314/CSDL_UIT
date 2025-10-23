USE QuanLyBanHang;
GO
-- Sinh viên hoàn thành Phần III bài tập QuanLyBanHang câu 12 và câu 13.
--12 Tìm các số hóa đơn đã mua sản phẩm có mã số “BB01” hoặc “BB02”, mỗi sản phẩm mua với số lượng từ 10 đến 20.
SELECT SOHD FROM CTHD 
WHERE (MASP = 'BB01' OR MASP = 'BB02') AND (SL >=10 AND SL <=20);
--13 Tìm các số hóa đơn mua cùng lúc 2 sản phẩm có mã số “BB01” và “BB02”, mỗi sản phẩm mua với số lượng từ 10 đến 20.
SELECT SOHD FROM CTHD 
WHERE (MASP = 'BB01' AND MASP = 'BB02') AND (SL >=10 AND SL <=20);

-- 4. Bài tập 4
-- Sinh viên hoàn thành Phần III bài tập QuanLyBanHang từ câu 14 đến 18.
--14
SELECT DISTINCT SP.MASP, SP.TENSP
FROM SANPHAM SP
LEFT JOIN CTHD C ON SP.MASP = C.MASP
LEFT JOIN HOADON H ON C.SOHD = H.SOHD
WHERE SP.NUOCSX = 'Trung Quoc'
   OR H.NGHD = '2007-01-01';
--15 In ra danh sách các sản phẩm (MASP,TENSP) không bán được.
SELECT DISTINCT  SP.MASP,SP.TENSP FROM SANPHAM SP
LEFT JOIN CTHD C ON SP.MASP = C.MASP
WHERE C.MASP IS NULL; 
--16 In ra danh sách các sản phẩm (MASP,TENSP) không bán được trong năm 2006.
SELECT DISTINCT SP.MASP, SP.TENSP
FROM SANPHAM AS SP
LEFT JOIN (
    SELECT C.MASP
    FROM CTHD AS C
    JOIN HOADON AS H ON C.SOHD = H.SOHD
    WHERE YEAR(H.NGHD) = 2006
) AS SALE2006 ON SALE2006.MASP = SP.MASP
WHERE
    SALE2006.MASP IS NULL;
GO
--17 In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quoc” sản xuất không bán được trong năm 2006.
SELECT DISTINCT SP.MASP, SP.TENSP
FROM SANPHAM AS SP
LEFT JOIN (
    SELECT C.MASP
    FROM CTHD AS C
    JOIN HOADON AS H ON C.SOHD = H.SOHD
	JOIN SANPHAM AS SP ON SP.MASP= C.MASP
    WHERE YEAR(H.NGHD) = 2006 AND NUOCSX = 'Trung Quoc'
) AS SALE2006 ON SALE2006.MASP = SP.MASP
WHERE
    SALE2006.MASP IS NULL
	AND SP.NUOCSX = 'Trung Quoc';
GO

--18 Tìm số hóa đơn trong năm 2006 đã mua ít nhất tất cả các sản phẩm do Singapore sản xuất.
SELECT H.SOHD
FROM HOADON AS H
JOIN CTHD AS C ON H.SOHD = C.SOHD
JOIN SANPHAM AS SP ON C.MASP = SP.MASP
WHERE NUOCSX = 'Singapore' AND YEAR(H.NGHD) = 2006

GROUP BY 
H.SOHD

HAVING 
	COUNT(DISTINCT SP.MASP) = (
		SELECT COUNT(MASP)
		FROM SANPHAM
		WHERE NUOCSX = 'Singapore'
	);
GO
--2. Bài tập 2
-- Sinh viên hoàn thành Phần II bài tập QuanLyGiaoVu từ câu 1 đến câu 4.
USE QuanLyGiaoVu;
GO

--1 Tăng hệ số lương thêm 0.2 cho những giáo viên là trưởng khoa.
UPDATE GIAOVIEN
SET HESO = HESO + 0.2
WHERE MAGV IN (
    SELECT TRGKHOA
    FROM KHOA
    WHERE TRGKHOA IS NOT NULL
);

-- 1 phan 1 
ALTER TABLE HOCVIEN
ADD DIEMTB NUMERIC (4,2), GHICHU VARCHAR(100), XEPLOAI VARCHAR(20);
GO
--2 
UPDATE HOCVIEN
SET DIEMTB = (
    SELECT AVG(DIEMCAONHAT)
    FROM (
        SELECT MAHV, MAMH, MAX(DIEM) AS DIEMCAONHAT
        FROM KETQUATHI
        GROUP BY MAHV, MAMH
    ) AS BANGDIEM
    WHERE HOCVIEN.MAHV = BANGDIEM.MAHV
);
GO
--3 Cập nhật giá trị cho cột GHICHU là “Cam thi” đối với trường hợp: học viên có một môn bất kỳ thi lần thứ 3 dưới 5 điểm.
UPDATE HOCVIEN 
SET GHICHU = 'Cam thi'
WHERE MAHV IN (
	SELECT MAHV FROM KETQUATHI
	WHERE LANTHI = 3 AND DIEM < 5 AND DIEM >=0
);
GO
--4
/*
Cập nhật giá trị cho cột XEPLOAI trong quan hệ HOCVIEN như sau:
Nếu DIEMTB ≥ 9 thì XEPLOAI =”XS”
Nếu  8 ≤ DIEMTB < 9 thì XEPLOAI = “G”
Nếu  6.5 ≤ DIEMTB < 8 thì XEPLOAI = “K”
Nếu  5  ≤  DIEMTB < 6.5 thì XEPLOAI = “TB”
Nếu  DIEMTB < 5 thì XEPLOAI = ”Y”
*/

ALTER TABLE HOCVIEN
ADD CONSTRAINT CK_XEPLOAI
CHECK (XEPLOAI IN ('XS', 'G', 'K', 'TB', 'Y'));

UPDATE HOCVIEN
SET XEPLOAI = 
    CASE 
        WHEN DIEMTB >= 9 THEN 'XS'
        WHEN DIEMTB >= 8 THEN 'G'
        WHEN DIEMTB >= 6.5 THEN 'K'
        WHEN DIEMTB >= 5 THEN 'TB'
        ELSE 'Y'
    END;
	GO
-- Sinh viên hoàn thành Phần III bài tập QuanLyGiaoVu từ câu 6 đến câu 10.
--6 Tìm tên những môn học mà giáo viên có tên “Tran Tam Thanh” dạy trong học kỳ 1 năm 2006.
SELECT DISTINCT MH.TENMH
FROM MONHOC AS MH
INNER JOIN GIANGDAY AS GD ON GD.MAMH = MH.MAMH
INNER JOIN GIAOVIEN AS GV ON GD.MAGV = GV.MAGV
WHERE GV.HOTEN = 'Tran Tam Thanh' 
  AND GD.HOCKY = 1 
  AND GD.NAM = 2006;
--Tìm những môn học (mã môn học, tên môn học) mà giáo viên chủ nhiệm lớp “K11” dạy trong học kỳ 1 năm 2006.
SELECT MH.MAMH, MH.TENMH
FROM GIANGDAY GD
JOIN MONHOC MH ON GD.MAMH = MH.MAMH
WHERE GD.MAGV = (
    SELECT MAGVCN
    FROM LOP
    WHERE MALOP = 'K11'
)
AND GD.HOCKY = 1
AND GD.NAM = 2006;
GO
--8 Tìm họ tên lớp trưởng của các lớp mà giáo viên có tên “Nguyen To Lan” dạy môn “Co So Du Lieu”.
--9
--10
-- Sinh viên hoàn thành Phần III bài tập QuanLyGiaoVu từ câu 11 đến câu 18.
--11
--12
--13
--14
--15
--16
--17
--18
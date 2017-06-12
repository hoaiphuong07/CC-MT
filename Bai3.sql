--SEQUENCE TỰ TĂNG
CREATE SEQUENCE  SEQUENCE_TUTANGMAPX  
MINVALUE 1 
MAXVALUE 9999999999999999999999999999 
START WITH 1 
INCREMENT BY 1 
NOCYCLE ;
--TRIGGER TỰ TĂNG
CREATE OR REPLACE TRIGGER TRIGGER_TUTANGMAPX 
BEFORE INSERT ON PHIEUXUAT
FOR EACH ROW
DECLARE 
    vMAPX NUMBER;
BEGIN
  SELECT SEQUENCE_TUTANGMAPX.NEXTVAL INTO vMAPX
  FROM DUAL;
  :NEW.MAPX:=vMAPX;
END;
--TRIGGER CHECK NGÀY SINH 
CREATE OR REPLACE TRIGGER CHECK_NGAYSINH
BEFORE INSERT OR UPDATE ON NHANVIEN
FOR EACH ROW
    DECLARE NS DATE;
BEGIN
    SELECT :NEW.NGAYSINH INTO NS FROM DUAL;
    IF(((SYSDATE - NS)/365) < 18 OR ((SYSDATE - NS)/365) > 55)
        THEN RAISE_APPLICATION_ERROR(-20500,'Tuổi từ 18 đến 55');
    END IF;
END;
--1.	Cho biết mã sản phẩm, tên sản phẩm, tổng số lượng xuất của từng sản phẩm trong năm 2016. 
--Lấy dữ liệu từ View này sắp xếp tăng dần theo tên sản phẩm.
CREATE OR REPLACE VIEW CAU1
AS
    SELECT S.MASP, TENSP, SUM(SOLUONG) AS TONGSL
    FROM SANPHAM S, CHITIETXUAT C, PHIEUXUAT P
    WHERE S.MASP=C.MASP AND P.MAPX=C.MAPX AND EXTRACT(YEAR FROM NGAYLAP)=2016
    GROUP BY S.MASP, TENSP
    ORDER BY TENSP;

--2.	Cho biết mã sản phẩm, tên sản phẩm, tên loại sản phẩm mà đã được bán từ ngày 01/01/2016 đến 30/06/2016.
CREATE VIEW CAU2
AS
    SELECT S.MASP, TENSP, TENLOAI
    FROM SANPHAM S, CHITIETXUAT C, PHIEUXUAT P, LOAI L
    WHERE S.MASP=C.MASP AND P.MAPX=C.MAPX AND S.MALOAI=L.MALOAI 
    AND  EXTRACT(YEAR FROM NGAYLAP)= 2016 AND EXTRACT(MONTH FROM NGAYLAP)>6;
    
--3.	Cho biết số lượng sản phẩm trong từng loại sản phẩm gồm các thông tin: 
--mã loại sản phẩm, tên loại sản phẩm, số lượng các sản phẩm.
CREATE VIEW CAU3
AS
    SELECT L.MALOAI, TENLOAI, COUNT(S.MALOAI) AS SOLUONG
    FROM LOAI L, SANPHAM S
    WHERE L.MALOAI=S.MALOAI
    GROUP BY L.MALOAI, TENLOAI;
    
--4.	Cho biết tổng số lượng phiếu xuất trong tháng 6 năm 2016.
CREATE VIEW CAU4
AS
    SELECT COUNT(MAPX) AS TONGPX
    FROM PHIEUXUAT P
    WHERE EXTRACT (MONTH FROM NGAYLAP)=6 AND EXTRACT (YEAR FROM NGAYLAP)=2016;

--5.	Cho biết thông tin về các phiếu xuất mà nhân viên có mã NV01 đã xuất.
CREATE VIEW CAU5
AS  
    SELECT MAPX, NGAYLAP
    FROM PHIEUXUAT P
    WHERE MANV = 'NV01';
    
--6.	Cho biết danh sách nhân viên nam có tuổi trên 25 nhưng dưới 30.
CREATE VIEW CAU6
AS
    SELECT MANV, HOTEN, NGAYSINH, PHAI
    FROM NHANVIEN
    WHERE PHAI='Nam' AND EXTRACT(YEAR FROM SYSDATE)-EXTRACT(YEAR FROM NGAYSINH) BETWEEN 25 AND 30;
--7.	Thống kê số lượng phiếu xuất theo từng nhân viên.
CREATE VIEW CAU8
AS
    SELECT MANV, COUNT(MAPX) AS SL
    FROM PHIEUXUAT P
    GROUP BY MANV;
--8.	Thống kê số lượng sản phẩm đã xuất theo từng sản phẩm.
CREATE VIEW CAU8
AS
    SELECT C.MASP, COUNT(MASP) AS SL
    FROM PHIEUXUAT P, CHITIETXUAT C
    WHERE C.MAPX=P.MAPX
    GROUP BY C.MASP;
--9.	Lấy ra tên của nhân viên có số lượng phiếu xuất lớn nhất.
CREATE VIEW CAU9
AS
    SELECT * 
    FROM(
        SELECT HOTEN, COUNT(MAPX) AS SL
        FROM  PHIEUXUAT P, NHANVIEN N
        WHERE P.MANV=N.MANV
        GROUP BY HOTEN
        ORDER BY COUNT(MAPX) DESC
        )
    WHERE ROWNUM =1;
--10.	Lấy ra tên sản phẩm được xuất nhiều nhất trong năm 2015.
CREATE VIEW CAU10
AS
    SELECT * FROM (
    SELECT TENSP, SUM(SOLUONG)AS SL
    FROM PHIEUXUAT P, CHITIETXUAT C, SANPHAM S
    WHERE P.MAPX=C.MAPX AND C.MASP=S.MASP AND EXTRACT (YEAR FROM NGAYLAP)=2015
    GROUP BY TENSP
    ORDER BY SL DESC)
    WHERE ROWNUM =1;


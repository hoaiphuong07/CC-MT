--1.	Viết hàm tính doanh thu của năm, với năm là tham số truyền vào.
CREATE OR REPLACE FUNCTION CAU1 
(
  NAM IN NUMBER 
) RETURN NUMBER AS 
    DOANHTHU NUMBER;
BEGIN
  SELECT SUM(SL*GIABAN) INTO DOANHTHU
  FROM HOADON H,CTHD C
  WHERE H.MAHD=C.MAHD AND EXTRACT(YEAR FROM NGAY) = NAM;
  IF (DOANHTHU IS NULL) THEN DOANHTHU:=0;
  END IF;
    RETURN DOANHTHU;
END CAU1;

SELECT CAU1(2016) FROM DUAL;
--2.	Viết hàm tính doanh thu của tháng, năm, với tháng và năm là 2 tham số truyền vào.
CREATE OR REPLACE FUNCTION CAU2
(
  THANG IN NUMBER,
  NAM IN NUMBER 
) RETURN NUMBER AS 
    DOANHTHU NUMBER;
BEGIN
  SELECT SUM(SL*GIABAN) INTO DOANHTHU
  FROM HOADON H,CTHD C
  WHERE H.MAHD=C.MAHD AND EXTRACT(MONTH FROM NGAY) = THANG AND EXTRACT(YEAR FROM NGAY) = NAM;
  IF (DOANHTHU IS NULL) THEN DOANHTHU:=0;
  END IF;
    RETURN DOANHTHU;
END CAU2;

SELECT CAU2(5,2016) FROM DUAL;

--3.	Viết hàm tính doanh thu của khách hàng với mã khách hàng là tham số truyền vào.
CREATE OR REPLACE FUNCTION CAU3
(
    N_MAKH VARCHAR2
)
RETURN NUMBER AS 
    DOANHTHU NUMBER;
BEGIN
    SELECT SUM(TONGTG) INTO DOANHTHU
    FROM KHACHHANG K, HOADON H
    WHERE K.MAKH=H.MAKH AND K.MAKH=N_MAKH
    GROUP BY K.MAKH;
      IF(DOANHTHU IS NULL) THEN DOANHTHU:=0;
      END IF;
    RETURN DOANHTHU;
END CAU3;

SELECT CAU3('KH01') FROM DUAL;
--4.	Viết hàm tính tổng số lượng bán được cho từng mặt hàng theo tháng, năm nào đó. 
--Với mã hàng, tháng và năm là các tham số truyền vào, nếu tháng không nhập vào tức là tính tất cả các tháng.

CREATE OR REPLACE FUNCTION CAU4
(
    N_MAVT IN VARCHAR2,
     NAM IN NUMBER,
     THANG IN NUMBER
)
RETURN NUMBER AS 
    TONGSLBAN NUMBER;
BEGIN
    SELECT SUM(SL) INTO TONGSLBAN
    FROM CTHD C, VATTU V, HOADON H
    WHERE V.MAVT= C.MAVT AND C.MAHD=H.MAHD AND V.MAVT= N_MAVT AND EXTRACT(MONTH FROM NGAY)=THANG AND EXTRACT (YEAR FROM NGAY)=NAM;
    IF(THANG IS NULL) THEN SELECT SUM(SL) INTO TONGSLBAN
                            FROM CTHD C, VATTU V, HOADON H
                            WHERE V.MAVT= C.MAVT AND C.MAHD=H.MAHD AND V.MAVT= N_MAVT 
                            AND EXTRACT (YEAR FROM NGAY)=NAM;
    END IF;
    RETURN TONGSLBAN;
END CAU4;
SELECT CAU4('VT01',2016,NULL) FROM DUAL;


--5.	Viết hàm tính lãi ((giá bán – giá mua ) * số lượng bán được) cho từng mặt hàng, 
--với mã mặt hàng là tham số truyền vào. Nếu mã mặt hàng không truyền vào thì tính cho tất cả các mặt hàng.
CREATE OR REPLACE FUNCTION CAU5
(
    N_MAVT IN VARCHAR2 
)
RETURN NUMBER AS 
    LAI NUMBER;
BEGIN
    SELECT SUM((GIABAN-GIAMUA)*SL) INTO LAI
    FROM CTHD C, VATTU V
    WHERE C.MAVT=V.MAVT AND V.MAVT=N_MAVT;
    IF(N_MAVT IS NULL) 
    THEN SELECT SUM((GIABAN-GIAMUA)*SL)INTO LAI
        FROM CTHD C, VATTU V
        WHERE C.MAVT=V.MAVT;
    END IF;
    RETURN LAI;
END CAU5;

SELECT CAU5('VT01') FROM DUAL;



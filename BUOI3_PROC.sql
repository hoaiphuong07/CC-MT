--1.	L?y ra danh c�c kh�ch h�ng ?� mua h�ng trong ng�y X, v?i X l� tham s? truy?n v�o.
CREATE OR REPLACE PROCEDURE DS_CAU1(VAR_NGAY NVARCHAR2)
AS
CURSOR CUR_DANHSACH IS 
                    SELECT K.*
                    FROM KHACHHANG K, HOADON H
                    WHERE K.MAKH=H.MAKH AND H.NGAY=TO_DATE(VAR_NGAY,'DD/MM/YYYY');
BEGIN
    FOR KH IN CUR_DANHSACH 
    LOOP
        DBMS_OUTPUT.PUT_LINE(KH.MAKH||', '||KH.TENKH||','||KH.DIACHI||','||KH.DT||','||KH.EMAIL);
    END LOOP;
END;
set serveroutput on;
EXECUTE DS_CAU1('25/05/2016');

--2.	L?y ra danh s�ch kh�ch h�ng c� t?ng tr? gi� c�c ??n h�ng l?n h?n X (X l� tham s?).
CREATE OR REPLACE PROCEDURE DS_CAU2(N_TONGTG NUMBER)
AS
CURSOR CUR_DANHSACH IS 
                    SELECT K.MAKH, TENKH, (GIABAN*SL) AS TONGTG
                    FROM KHACHHANG K, HOADON H, CTHD C
                    WHERE K.MAKH = H.MAKH AND H.MAHD=C.MAHD AND (GIABAN*SL)>N_TONGTG;
BEGIN
    FOR KH IN CUR_DANHSACH 
    LOOP
        DBMS_OUTPUT.PUT_LINE(KH.MAKH||','||KH.TENKH||','||KH.TONGTG);
    END LOOP;
END;
EXECUTE DS_CAU2('100000');


--3.	Lấy ra danh sách X khách hàng có tổng trị giá các đơn hàng lớn nhất (X là tham số).
CREATE OR REPLACE PROCEDURE DS_CAU3(N_TONGTG NUMBER)
AS
CURSOR CUR_DANHSACH IS 
                    SELECT *
                    FROM (SELECT K.MAKH, TENKH, SUM(GIABAN*SL) AS TONGTG
                            FROM KHACHHANG K, HOADON H, CTHD C
                            WHERE K.MAKH=H.MAKH AND H.MAHD=C.MAHD
                            GROUP BY K.MAKH, TENKH
                            ORDER BY TONGTG DESC)
                    WHERE ROWNUM <=N_TONGTG;
BEGIN
    FOR KH IN CUR_DANHSACH 
    LOOP
        DBMS_OUTPUT.PUT_LINE(KH.MAKH||','||KH.TENKH||','||KH.TONGTG);
    END LOOP;
END;
SET SERVEROUTPUT ON
EXECUTE DS_CAU3('2');


--4.	Lấy ra danh sách X mặt hàng có số lượng bán lớn nhất (X là tham số).


CREATE OR REPLACE PROCEDURE DS_CAU4(N_TONGSL NUMBER)
AS
CURSOR CUR_DANHSACH IS 
                    SELECT *
                    FROM (
                        SELECT V.MAVT, TENVT, SUM(SL) AS TONGSL
                        FROM VATTU V, HOADON H, CTHD C
                        WHERE V.MAVT=C.MAVT AND H.MAHD=C.MAHD
                        GROUP BY V.MAVT, TENVT
                        ORDER BY TONGSL DESC
                    )
                    WHERE ROWNUM <=N_TONGSL;
BEGIN
    FOR VT IN CUR_DANHSACH 
    LOOP
        DBMS_OUTPUT.PUT_LINE(VT.MAVT||','||VT.TENVT||','||VT.TONGSL);
    END LOOP;
END;

EXECUTE DS_CAU4('3');

--5.	Lấy ra danh sách X mặt hàng bán ra có lãi ít nhất (X là tham số).

CREATE OR REPLACE PROCEDURE DS_CAU5 (N_LAI NUMBER)
AS
CURSOR CUR_DANHSACH IS 
                    SELECT *
                    FROM (
                        SELECT V.MAVT, TENVT, (GIABAN-GIAMUA) AS LAI
                        FROM VATTU V, HOADON H, CTHD C
                        WHERE V.MAVT=C.MAVT AND H.MAHD=C.MAHD
                        ORDER BY LAI DESC
                    )
                    WHERE ROWNUM <=N_LAI;
BEGIN
    FOR VT IN CUR_DANHSACH 
    LOOP
        DBMS_OUTPUT.PUT_LINE(VT.MAVT||','||VT.TENVT||','||VT.LAI);
    END LOOP;
END;
EXECUTE DS_CAU5('3');

--6.	Lấy ra danh sách X đơn hàng có tổng trị giá lớn nhất (X là tham số).

  CREATE OR REPLACE PROCEDURE DS_CAU6(N_TONGTGDH NUMBER)
AS
CURSOR CUR_DANHSACH IS 
                    SELECT *
                    FROM 
                        (SELECT H.MAHD, NGAY, SUM(GIABAN*SL) AS TONGTG
                        FROM KHACHHANG K, HOADON H, CTHD C
                        WHERE K.MAKH=H.MAKH AND H.MAHD=C.MAHD
                        GROUP BY H.MAHD, NGAY
                        ORDER BY TONGTG DESC)
                    WHERE ROWNUM <=N_TONGTGDH;
BEGIN
    FOR HD IN CUR_DANHSACH 
    LOOP
        DBMS_OUTPUT.PUT_LINE(HD.MAHD||','||HD.NGAY||','||HD.TONGTG);
    END LOOP;
END;
EXECUTE DS_CAU6('3');

--7.	Tính giá trị cho cột khuyến mãi như sau: Khuyến mãi 5% nếu SL > 100, 10% nếu SL > 500.

CREATE OR REPLACE PROCEDURE UPDATE_KHUYENMAI AS 
BEGIN
  UPDATE CTHD C SET KHUYENMAI = (
                        SELECT (CASE WHEN SL>100 THEN SL*GIABAN*0.05 
                        WHEN SL>500 THEN SL*GIABAN*0.1
                        ELSE 0 END) AS KHUYENMAI
                        FROM VATTU V
                        WHERE V.MAVT=C.MAVT);
END UPDATE_KHUYENMAI;
EXECUTE UPDATE_KHUYENMAI;


--8.	Tính lại số lượng tồn cho tất cả các mặt hàng (SLTON = SLTON – tổng SL bán được).\

CREATE OR REPLACE PROCEDURE DS_CAU8
AS
BEGIN
                    UPDATE VATTU V SET SLTON=(SELECT (SLTON-SUM(SL)) AS SLTON
                    FROM  CTHD C
                    WHERE V.MAVT=C.MAVT);
END;
EXECUTE DS_CAU8

--9.	Tính trị giá cho mỗi hóa đơn.
CREATE OR REPLACE PROCEDURE DS_CAU9
AS

BEGIN
                    UPDATE HOADON H SET TONGTG =(
                    SELECT SUM(SL*GIABAN)
                    FROM CTHD C
                    WHERE C.MAHD=H.MAHD
                    GROUP BY C.MAHD);
END;
EXECUTE DS_CAU9





 






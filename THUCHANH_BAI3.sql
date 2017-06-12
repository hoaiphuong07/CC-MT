--------------------------------------------------------
--  File created - Tuesday-May-30-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CHITIETPHIEUXUAT
--------------------------------------------------------

  CREATE TABLE "BAI3"."CHITIETPHIEUXUAT" 
   (	"MAPX" NUMBER(*,0), 
	"MASP" NUMBER(*,0), 
	"SOLUONG" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table LOAI
--------------------------------------------------------

  CREATE TABLE "BAI3"."LOAI" 
   (	"MALOAI" NUMBER(*,0), 
	"TENLOAI" NVARCHAR2(100)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table NHANVIEN
--------------------------------------------------------

  CREATE TABLE "BAI3"."NHANVIEN" 
   (	"MAVN" VARCHAR2(20 BYTE), 
	"HOTEN" NVARCHAR2(100), 
	"NGAYSINH" DATE, 
	"PHAI" NVARCHAR2(10)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PHIEUXUAT
--------------------------------------------------------

  CREATE TABLE "BAI3"."PHIEUXUAT" 
   (	"MAPX" NUMBER(*,0), 
	"NGAYLAP" DATE, 
	"MANV" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SANPHAM
--------------------------------------------------------

  CREATE TABLE "BAI3"."SANPHAM" 
   (	"MASP" NUMBER(*,0), 
	"TENSP" NVARCHAR2(100), 
	"MALOAI" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Sequence SEQUENCEMAPX
--------------------------------------------------------

   CREATE SEQUENCE  "BAI3"."SEQUENCEMAPX"  MINVALUE 1 MAXVALUE 9999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  CYCLE ;
   
REM INSERTING into BAI3.CHITIETPHIEUXUAT
SET DEFINE OFF;
Insert into BAI3.CHITIETPHIEUXUAT (MAPX,MASP,SOLUONG) values (1,1,10);
Insert into BAI3.CHITIETPHIEUXUAT (MAPX,MASP,SOLUONG) values (1,2,15);
Insert into BAI3.CHITIETPHIEUXUAT (MAPX,MASP,SOLUONG) values (1,3,5);
Insert into BAI3.CHITIETPHIEUXUAT (MAPX,MASP,SOLUONG) values (2,2,20);
Insert into BAI3.CHITIETPHIEUXUAT (MAPX,MASP,SOLUONG) values (3,1,20);
Insert into BAI3.CHITIETPHIEUXUAT (MAPX,MASP,SOLUONG) values (3,3,25);
Insert into BAI3.CHITIETPHIEUXUAT (MAPX,MASP,SOLUONG) values (4,5,12);
REM INSERTING into BAI3.LOAI
SET DEFINE OFF;
Insert into BAI3.LOAI (MALOAI,TENLOAI) values (1,'V�?t li�?u v�y d??ng');
Insert into BAI3.LOAI (MALOAI,TENLOAI) values (2,'Ha?ng ti�u du?ng');
Insert into BAI3.LOAI (MALOAI,TENLOAI) values (3,'Ngu? c�?c');
REM INSERTING into BAI3.NHANVIEN
SET DEFINE OFF;
Insert into BAI3.NHANVIEN (MAVN,HOTEN,NGAYSINH,PHAI) values ('NV01','Nguy�?n Mai Thi',to_date('15/05/1982','dd/mm/yyyy'),'N?');
Insert into BAI3.NHANVIEN (MAVN,HOTEN,NGAYSINH,PHAI) values ('NV02','Tr�?n ?i?nh Chi�?n',to_date('02/12/1980','dd/mm/yyyy'),'Nam');
Insert into BAI3.NHANVIEN (MAVN,HOTEN,NGAYSINH,PHAI) values ('NV03','L� Thi? Chi',to_date('23/01/1979','dd/mm/yyyy'),'N?');
REM INSERTING into BAI3.PHIEUXUAT
SET DEFINE OFF;
Insert into BAI3.PHIEUXUAT (MAPX,NGAYLAP,MANV) values (1,to_date('12/03/2015','dd/mm/yyyy'),'NV01');
Insert into BAI3.PHIEUXUAT (MAPX,NGAYLAP,MANV) values (2,to_date('03/02/2016','dd/mm/yyyy'),'NV02');
Insert into BAI3.PHIEUXUAT (MAPX,NGAYLAP,MANV) values (3,to_date('01/06/2016','dd/mm/yyyy'),'NV03');
Insert into BAI3.PHIEUXUAT (MAPX,NGAYLAP,MANV) values (4,to_date('16/06/2016','dd/mm/yyyy'),'NV01');
REM INSERTING into BAI3.SANPHAM
SET DEFINE OFF;
Insert into BAI3.SANPHAM (MASP,TENSP,MALOAI) values (1,'Xi m?ng',1);
Insert into BAI3.SANPHAM (MASP,TENSP,MALOAI) values (2,'Ga?ch',1);
Insert into BAI3.SANPHAM (MASP,TENSP,MALOAI) values (3,'Ga?o na?ng h??ng',3);
Insert into BAI3.SANPHAM (MASP,TENSP,MALOAI) values (4,'B�?t mi?',3);
Insert into BAI3.SANPHAM (MASP,TENSP,MALOAI) values (5,'K�? che?n',2);
Insert into BAI3.SANPHAM (MASP,TENSP,MALOAI) values (6,'?�?u xanh',3);
--------------------------------------------------------
--  DDL for Index CHITIETPHIEUXUAT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BAI3"."CHITIETPHIEUXUAT_PK" ON "BAI3"."CHITIETPHIEUXUAT" ("MAPX", "MASP") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index LOAI_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BAI3"."LOAI_PK" ON "BAI3"."LOAI" ("MALOAI") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index NHANVIEN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BAI3"."NHANVIEN_PK" ON "BAI3"."NHANVIEN" ("MAVN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PHIEUXUAT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BAI3"."PHIEUXUAT_PK" ON "BAI3"."PHIEUXUAT" ("MAPX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SANPHAM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BAI3"."SANPHAM_PK" ON "BAI3"."SANPHAM" ("MASP") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SANPHAM_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "BAI3"."SANPHAM_UK1" ON "BAI3"."SANPHAM" ("TENSP") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger MAPX_PHIEUXUAT
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BAI3"."MAPX_PHIEUXUAT" 
  before insert on PHIEUXUAT
  for each row
declare
  vMAPX number;
begin

  --lay so tang dan tu sequence
  select sequenceMAPX.nextval into vMAPX
  from dual;

  --gan gia tri. cho field ID
  :new.MAPX:=vMAPX;
end auto_id;
/
ALTER TRIGGER "BAI3"."MAPX_PHIEUXUAT" ENABLE;
--------------------------------------------------------
--  Constraints for Table CHITIETPHIEUXUAT
--------------------------------------------------------

  ALTER TABLE "BAI3"."CHITIETPHIEUXUAT" ADD CONSTRAINT "CHITIETPHIEUXUAT_CHK1" CHECK (SOLUONG>0) ENABLE;
 
  ALTER TABLE "BAI3"."CHITIETPHIEUXUAT" ADD CONSTRAINT "CHITIETPHIEUXUAT_PK" PRIMARY KEY ("MAPX", "MASP")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "BAI3"."CHITIETPHIEUXUAT" MODIFY ("MAPX" NOT NULL ENABLE);
 
  ALTER TABLE "BAI3"."CHITIETPHIEUXUAT" MODIFY ("MASP" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LOAI
--------------------------------------------------------

  ALTER TABLE "BAI3"."LOAI" ADD CONSTRAINT "LOAI_PK" PRIMARY KEY ("MALOAI")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "BAI3"."LOAI" MODIFY ("MALOAI" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NHANVIEN
--------------------------------------------------------

  ALTER TABLE "BAI3"."NHANVIEN" ADD CONSTRAINT "NHANVIEN_CHK1" CHECK (PHAI ='Nam' OR PHAI='N?') ENABLE;
 
  ALTER TABLE "BAI3"."NHANVIEN" ADD CONSTRAINT "NHANVIEN_PK" PRIMARY KEY ("MAVN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "BAI3"."NHANVIEN" MODIFY ("MAVN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PHIEUXUAT
--------------------------------------------------------

  ALTER TABLE "BAI3"."PHIEUXUAT" ADD CONSTRAINT "PHIEUXUAT_PK" PRIMARY KEY ("MAPX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "BAI3"."PHIEUXUAT" MODIFY ("MAPX" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SANPHAM
--------------------------------------------------------

  ALTER TABLE "BAI3"."SANPHAM" ADD CONSTRAINT "SANPHAM_PK" PRIMARY KEY ("MASP")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "BAI3"."SANPHAM" ADD CONSTRAINT "SANPHAM_UK1" UNIQUE ("TENSP")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "BAI3"."SANPHAM" MODIFY ("MASP" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table CHITIETPHIEUXUAT
--------------------------------------------------------

  ALTER TABLE "BAI3"."CHITIETPHIEUXUAT" ADD CONSTRAINT "CHITIETPHIEUXUAT_FK1" FOREIGN KEY ("MAPX")
	  REFERENCES "BAI3"."PHIEUXUAT" ("MAPX") ENABLE;
 
  ALTER TABLE "BAI3"."CHITIETPHIEUXUAT" ADD CONSTRAINT "CHITIETPHIEUXUAT_FK2" FOREIGN KEY ("MASP")
	  REFERENCES "BAI3"."SANPHAM" ("MASP") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PHIEUXUAT
--------------------------------------------------------

  ALTER TABLE "BAI3"."PHIEUXUAT" ADD CONSTRAINT "PHIEUXUAT_FK1" FOREIGN KEY ("MANV")
	  REFERENCES "BAI3"."NHANVIEN" ("MAVN") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SANPHAM
--------------------------------------------------------

  ALTER TABLE "BAI3"."SANPHAM" ADD CONSTRAINT "SANPHAM_FK1" FOREIGN KEY ("MALOAI")
	  REFERENCES "BAI3"."LOAI" ("MALOAI") ENABLE;


SELECT * FROM NHANVIEN
WHERE EXTRACT(YEAR FROM SYSDATE)-EXTRACT(YEAR FROM NGAYSINH) BETWEEN 18 AND 55;

--TRIGGER CHECK_NGAYSINH
CREATE OR REPLACE TRIGGER CHK_NGAYSINH
BEFORE INSERT OR UPDATE ON NHANVIEN
FOR EACH ROW
    DECLARE NS DATE;
BEGIN
    SELECT :NEW.NGAYSINH INTO NS FROM DUAL;
    IF(((SYSDATE - NS)/365) < 18 OR ((SYSDATE - NS)/365) > 55)
        THEN RAISE_APPLICATION_ERROR(-20500,'Tu?i ph?i t? 18-55');
    END IF;
END;



--1.	Cho bi?t m� s?n ph?m, t�n s?n ph?m, t?ng s? l??ng xu?t c?a t?ng s?n ph?m trong n?m 2016. 
--L?y d? li?u t? View n�y s?p x?p t?ng d?n theo t�n s?n ph?m.

SELECT S.MASP, TENSP, SUM(SOLUONG) AS SL
FROM SANPHAM S, CHITIETPHIEUXUAT C, PHIEUXUAT P
WHERE S.MASP = C.MASP AND P.MAPX = C.MAPX
    AND EXTRACT (YEAR FROM NGAYLAP) = 2016
GROUP BY S.MASP, TENSP
ORDER BY TENSP ;

--2.	Cho bi?t m� s?n ph?m, t�n s?n ph?m, t�n lo?i s?n ph?m m� ?� ???c b�n t? ng�y 01/01/2016 ??n 30/06/2016.

SELECT S.MASP, TENSP, TENLOAI, NGAYLAP
FROM SANPHAM S, LOAI L, PHIEUXUAT P, CHITIETPHIEUXUAT C
WHERE S.MALOAI = L.MALOAI AND P.MAPX = C.MAPX AND S.MASP = C.MASP
    AND EXTRACT (YEAR FROM NGAYLAP) = 2016
    AND EXTRACT (MONTH FROM NGAYLAP) <=6;

--3.	Cho bi?t s? l??ng s?n ph?m trong t?ng lo?i s?n ph?m g?m c�c th�ng tin: 
--m� lo?i s?n ph?m, t�n lo?i s?n ph?m, s? l??ng c�c s?n ph?m.

SELECT L.MALOAI, TENLOAI, COUNT(S.MALOAI) AS SL
FROM LOAI L, SANPHAM S
WHERE L.MALOAI = S.MALOAI
GROUP BY L.MALOAI, TENLOAI;

--4.	Cho bi?t t?ng s? l??ng phi?u xu?t trong th�ng 6 n?m 2016.

SELECT COUNT(MAPX) AS TONG
FROM PHIEUXUAT P
WHERE EXTRACT (YEAR FROM NGAYLAP) = 2016
    AND EXTRACT (MONTH FROM NGAYLAP) = 6;

--5.	Cho bi?t th�ng tin v? c�c phi?u xu?t m� nh�n vi�n c� m� NV01 ?� xu?t.

SELECT * FROM PHIEUXUAT
WHERE MANV LIKE 'NV01';

--6.	Cho bi?t danh s�ch nh�n vi�n nam c� tu?i tr�n 25 nh?ng d??i 30.
SELECT * FROM NHANVIEN
WHERE PHAI LIKE 'Nam'
    AND EXTRACT(YEAR FROM SYSDATE)-EXTRACT(YEAR FROM NGAYSINH) BETWEEN 20 AND 40;

--7.	Th?ng k� s? l??ng phi?u xu?t theo t?ng nh�n vi�n.

SELECT MANV, COUNT(MAPX) AS SL
FROM PHIEUXUAT
GROUP BY MANV;

--8.	Th?ng k� s? l??ng s?n ph?m ?� xu?t theo t?ng s?n ph?m.

SELECT S.MASP, SUM(SOLUONG) AS TONGSL
FROM SANPHAM S, CHITIETPHIEUXUAT C
WHERE S.MASP = C.MASP
GROUP BY S.MASP;

--9.	L?y ra t�n c?a nh�n vi�n c� s? l??ng phi?u xu?t l?n nh?t.

SELECT * FROM
    (SELECT HOTEN, COUNT(MAPX) AS SL
    FROM PHIEUXUAT P, NHANVIEN N 
    WHERE P.MANV = N.MANV
    GROUP BY HOTEN
    ORDER BY COUNT(MAPX) DESC)
WHERE ROWNUM =1;

--10.	L?y ra t�n s?n ph?m ???c xu?t nhi?u nh?t trong n?m 2015.

SELECT * FROM
(    
    SELECT TENSP, SUM(SOLUONG) AS TONG
    FROM SANPHAM S, CHITIETPHIEUXUAT C, PHIEUXUAT P
    WHERE S.MASP = C.MASP AND C.MAPX = P.MAPX
        AND EXTRACT (YEAR FROM NGAYLAP) = 2015
    GROUP BY TENSP
    ORDER BY TONG DESC
)
WHERE ROWNUM =1;


--1.	Function F1 c� 2 tham s? v�o l�: t�n s?n ph?m, n?m.
--Function cho bi?t: s? l??ng xu?t kho c?a t�n s?n ph?m n�y trong n?m n�y. 
--(Ch� �: N?u t�n s?n ph?m n�y kh�ng t?n t?i th� ph?i tr? v? 0)

CREATE OR REPLACE FUNCTION F1(TEN SANPHAM.TENSP%TYPE, NAM NUMBER)
RETURN NUMBER
AS
    TONG NUMBER;
    DEM NUMBER;
BEGIN
    SELECT COUNT(TENSP)INTO DEM FROM SANPHAM WHERE TENSP = TEN;
    IF(DEM <> 0)
        THEN
        SELECT SUM(SOLUONG) INTO TONG
         FROM SANPHAM S, CHITIETPHIEUXUAT C, PHIEUXUAT P
         WHERE S.MASP = C.MASP AND C.MAPX = P.MAPX
            AND TENSP LIKE TEN
            AND EXTRACT (YEAR FROM NGAYLAP) = NAM; 
    ELSE
          TONG:=0;
    END IF;    
    RETURN TONG;
END;

CREATE OR REPLACE FUNCTION F1(TEN SANPHAM.TENSP%TYPE, NAM NUMBER)
RETURN NUMBER
AS
    TONG NUMBER;
    DEM NUMBER;
BEGIN
    SELECT COUNT(TENSP)INTO DEM FROM SANPHAM WHERE TENSP = TEN;
    IF(DEM = 0)
        THEN TONG:=0;
    ELSE
        SELECT SUM(SOLUONG) INTO TONG
         FROM SANPHAM S, CHITIETPHIEUXUAT C, PHIEUXUAT P
         WHERE S.MASP = C.MASP AND C.MAPX = P.MAPX
            AND TENSP LIKE TEN
            AND EXTRACT (YEAR FROM NGAYLAP) = NAM; 
    END IF;    
    RETURN TONG;
END;


SELECT F1('Xi m?ng',2016) FROM DUAL;
SELECT F1('OK',2015) FROM DUAL;

SELECT COUNT(TENSP) FROM SANPHAM WHERE TENSP = 'Xi m?ng';

--2.	Function F2 c� 1 tham s? nh?n v�o l� m� nh�n vi�n. 
--Function tr? v? s? l??ng phi?u xu?t c?a nh�n vi�n truy?n v�o. 
--N?u nh�n vi�n n�y kh�ng t?n t?i th� tr? v? 0.

CREATE OR REPLACE FUNCTION F2(NHANVIENID NHANVIEN.MANV%TYPE)
RETURN NUMBER
AS 
    SL NUMBER;
BEGIN
    SELECT COUNT(MANV) INTO SL 
    FROM PHIEUXUAT 
    WHERE MANV LIKE NHANVIENID;
    
    RETURN SL;
END;

SELECT F2('NV02') FROM DUAL;
SELECT F2('NV00') FROM DUAL;

--3.	Function F3 c� 1 tham s? v�o l� n?m, 
--tr? v? danh s�ch c�c s?n ph?m ???c xu?t trong n?m truy?n v�o. 

--T?o obj c� c�c tr??ng c?n hi?n th?
CREATE OR REPLACE TYPE OBJ_SANPHAM AS OBJECT
( 
  TENSP  NVARCHAR2(100),
  NGAYLAP DATE
);

--T?o d? li?u d?ng b?ng ch?a c�c d? li?u khi return
CREATE TYPE KDL_BANG_SANPHAM AS TABLE OF OBJ_SANPHAM;

--T?o function
CREATE OR REPLACE FUNCTION F3(NAM NUMBER)
RETURN KDL_BANG_SANPHAM
AS
    FN_SANPHAM KDL_BANG_SANPHAM:=KDL_BANG_SANPHAM();
BEGIN
    FOR I IN
        (
            SELECT TENSP, NGAYLAP 
            FROM SANPHAM S, CHITIETPHIEUXUAT C, PHIEUXUAT P
            WHERE S.MASP = C.MASP AND P.MAPX=C.MAPX
                AND EXTRACT(YEAR FROM NGAYLAP) = NAM
        )
    LOOP
        FN_SANPHAM.EXTEND;
        FN_SANPHAM(FN_SANPHAM.LAST) := OBJ_SANPHAM(I.TENSP, I.NGAYLAP);
    END LOOP;
    
    RETURN FN_SANPHAM;
    
END;

SELECT * FROM TABLE(F3(2015));

--4.	Function F4 c� m?t tham s? v�o l� m� nh�n vi�n ?? tr? v? danh s�ch c�c phi?u xu?t c?a nh�n vi�n ?�. 
--N?u m� nh�n vi�n kh�ng truy?n v�o th� tr? v? t?t c? c�c phi?u xu?t.

CREATE OR REPLACE TYPE OBJ_NHANVIEN AS OBJECT
(
    MANV NVARCHAR2(5),
    MAPX NVARCHAR2(5)
);

CREATE OR REPLACE TYPE KDL_BANG_NHANVIEN AS TABLE OF OBJ_NHANVIEN;

CREATE OR REPLACE FUNCTION F4(NHANVIENID PHIEUXUAT.MANV%TYPE)
RETURN KDL_BANG_NHANVIEN
AS 
    FN_NV KDL_BANG_NHANVIEN:=KDL_BANG_NHANVIEN();
BEGIN
    --CASE WHEN NHANVIENID IS NULL
    IF(NHANVIENID IS NULL)
    THEN
        FOR I IN
        (
            SELECT MANV, MAPX
            FROM PHIEUXUAT           
        )
        LOOP
            FN_NV.EXTEND;
            FN_NV(FN_NV.LAST) := OBJ_NHANVIEN(I.MANV, I.MAPX);
        END LOOP;
    ELSE
        FOR I IN
        (
            SELECT MANV, MAPX
            FROM PHIEUXUAT
            WHERE MANV LIKE NHANVIENID
        )
        LOOP
            FN_NV.EXTEND;
            FN_NV(FN_NV.LAST) := OBJ_NHANVIEN(I.MANV, I.MAPX);
        END LOOP; 
    END IF;
    RETURN FN_NV;
END;

SELECT * FROM TABLE(F4(NULL));
SELECT * FROM TABLE(F4('NV01'));

--5.	Function F5 ?? cho bi?t t�n nh�n vi�n c?a m?t phi?u xu?t c� m� phi?u xu?t l� tham s? truy?n v�o.

CREATE OR REPLACE TYPE OBJ_F5 AS OBJECT
(
    MAPX NVARCHAR2(5),
    HOTEN NVARCHAR2(100)
);
CREATE OR REPLACE TYPE KDL_BANG_F5 AS TABLE OF OBJ_F5;

CREATE OR REPLACE FUNCTION F5(MAPHIEU PHIEUXUAT.MAPX%TYPE)
RETURN KDL_BANG_F5
AS
    FN_F5 KDL_BANG_F5:=KDL_BANG_F5();
BEGIN
    FOR I IN
    (
        SELECT MAPX, HOTEN
        FROM NHANVIEN N, PHIEUXUAT P
        WHERE N.MANV=P.MANV
            AND MAPX = MAPHIEU
    )
    LOOP
        FN_F5.EXTEND;
        FN_F5(FN_F5.LAST) := OBJ_F5(I.MAPX, I.HOTEN);
    END LOOP;

    RETURN FN_F5;
END;

SELECT * FROM TABLE(F5(1));

--6.	Function F6 ?? cho bi?t danh s�ch c�c phi?u xu?t t? ng�y T1 ??n ng�y T2. (T1, T2 l� tham s? truy?n v�o). Ch� � T1 <= T2.
CREATE OR REPLACE TYPE OBJ_F6 AS OBJECT
(
    MAPX NVARCHAR2(5),
    NGAYLAP DATE
);
CREATE OR REPLACE TYPE KDL_BANG_F6 AS TABLE OF OBJ_F6;

CREATE OR REPLACE FUNCTION F6(T1 DATE, T2 DATE)
RETURN KDL_BANG_F6
AS
    FN_F6 KDL_BANG_F6:=KDL_BANG_F6();
BEGIN
    FOR I IN
    (
        SELECT MAPX, NGAYLAP
        FROM PHIEUXUAT P
        WHERE NGAYLAP BETWEEN TO_DATE(T1,'DD/MM/YYYY') AND TO_DATE(T2,'DD/MM/YYYY')
    )
    LOOP
        FN_F6.EXTEND;
        FN_F6(FN_F6.LAST) := OBJ_F6(I.MAPX, I.NGAYLAP);
    END LOOP;

    RETURN FN_F6;
END;

SELECT * FROM TABLE(F6('1/1/2015','31/12/2016'));

--7.	Function F7 ?? cho bi?t ng�y xu?t c?a m?t phi?u xu?t v?i m� phi?u xu?t l� tham s? truy?n v�o.

CREATE OR REPLACE TYPE OBJ_F7 AS OBJECT
(
    MAPX NVARCHAR2(5),
    NGAYLAP DATE
);
CREATE OR REPLACE TYPE KDL_BANG_F7 AS TABLE OF OBJ_F7;

CREATE OR REPLACE FUNCTION F7(MA PHIEUXUAT.MAPX%TYPE)
RETURN KDL_BANG_F7
AS
    FN_F7 KDL_BANG_F7:=KDL_BANG_F7();
BEGIN
    FOR I IN
    (
        SELECT MAPX, NGAYLAP
        FROM PHIEUXUAT P
        WHERE MAPX = MA
    )
    LOOP
        FN_F7.EXTEND;
        FN_F7(FN_F7.LAST) := OBJ_F7(I.MAPX, TO_DATE(I.NGAYLAP,'DD/MM/YYYY'));
    END LOOP;

    RETURN FN_F7;
END;

SELECT * FROM TABLE(F7(2));

--1.	Procedure t�n l� P1 cho c� 2 tham s? sau:
--�	1 tham s? nh?n v�o l�: t�n s?n ph?m.
--�	1 tham s? tr? v? cho bi?t: t?ng s? l??ng xu?t kho c?a t�n s?n ph?m n�y trong n?m 2016 
--(Kh�ng vi?t l?i truy v?n, h�y s? d?ng Function F1 ? c�u 4 ?? th?c hi?n) 


--1.	Function F1 c� 2 tham s? v�o l�: t�n s?n ph?m, n?m. Function cho bi?t: s? l??ng xu?t kho c?a t�n s?n ph?m n�y trong n?m n�y. 
--(Ch� �: N?u t�n s?n ph?m n�y kh�ng t?n t?i th� ph?i tr? v? 0)

CREATE OR REPLACE FUNCTION F1(TEN SANPHAM.TENSP%TYPE, NAM NUMBER)
RETURN NUMBER
AS
    TONG NUMBER;
    DEM NUMBER;
BEGIN
    
    SELECT COUNT(TENSP)INTO DEM FROM SANPHAM WHERE TENSP = TEN;
    IF(DEM <> 0)
        THEN
        SELECT SUM(SOLUONG) INTO TONG
         FROM SANPHAM S, CHITIETPHIEUXUAT C, PHIEUXUAT P
         WHERE S.MASP = C.MASP AND C.MAPX = P.MAPX
            AND TENSP LIKE TEN
            AND EXTRACT (YEAR FROM NGAYLAP) = NAM; 
    ELSE
          TONG:=0;
    END IF;    
    RETURN TONG;
END;



CREATE OR REPLACE PROCEDURE P1 (TEN IN SANPHAM.TENSP%TYPE)
AS TONG NUMBER;
BEGIN
   SELECT F1(TEN, 2015) INTO TONG FROM DUAL;
   DBMS_OUTPUT.PUT_LINE(TONG);
END;

EXECUTE P1('OK');
EXECUTE P1('Xi m?ng');

--2.	Procedure t�n l� P2 c� 2 tham s? sau:
--�	1 tham s? nh?n v�o l�: t�n s?n ph?m.
--�	1 tham s? tr? v? cho bi?t: t?ng s? l??ng xu?t kho c?a t�n s?n ph?m n�y trong kho?ng th?i gian t? ??u th�ng 4/2016 ??n h?t th�ng 6/2016 
--(Ch� �: N?u t�n s?n ph?m n�y kh�ng t?n t?i th� tr? v? 0)

CREATE OR REPLACE PROCEDURE P2 (TEN IN SANPHAM.TENSP%TYPE)
AS TONG NUMBER;
BEGIN
    SELECT SUM(SOLUONG) INTO TONG
    FROM CHITIETPHIEUXUAT C ,SANPHAM P, PHIEUXUAT P
    WHERE C.MASP = P.MASP 
        AND P.MAPX = C.MAPX
        AND NGAYLAP BETWEEN TO_DATE('04/2016','MM/YYYY') AND TO_DATE('06/2016','MM/YYYY')
        AND TENSP LIKE TEN
    GROUP BY C.MASP; 
    DBMS_OUTPUT.PUT_LINE(TONG);
    
    EXCEPTION
        WHEN NO_DATA_FOUND THEN TONG :=0;
        DBMS_OUTPUT.PUT_LINE(TONG);
END;

EXECUTE P2('Ga? n�ng h??ng');
EXECUTE P2('TEST');

--3.	Procedure t�n l� P3 ch? c� duy nh?t 1 tham s? nh?n v�o l� t�n s?n ph?m. 
--Trong Procedure n�y c� khai b�o 1 bi?n c?c b? ???c g�n gi� tr? l�: 
--s? l??ng xu?t kho c?a t�n s?n ph?m n�y trong kho?ng th?i gian t? ??u th�ng 4/2016 ??n h?t th�ng 6/2016.
--Vi?c g�n tr? n�y ch? ???c th?c hi?n b?ng c�ch g?i Procedure P2.

CREATE OR REPLACE PROCEDURE P3(TEN SANPHAM.TENSP%TYPE)
AS TONG NUMBER;
BEGIN
    --SOME CODE HERE
END;




--4.	Procedure P4 ?? INSERT m?t record v�o trong Table Loai. Gi� tr? c�c field l� tham s? truy?n v�o.

INSERT INTO LOAI (MALOAI, TENLOAI) VALUES (4,'H�ng ?i?n t?');

CREATE OR REPLACE PROCEDURE P4 (MA IN LOAI.MALOAI%TYPE, TEN LOAI.TENLOAI%TYPE)
AS
    BEGIN
        INSERT INTO LOAI (MALOAI, TENLOAI) VALUES (MA,TEN);
        COMMIT;
    END;

EXEC P4(4,'H�ng ?i?n t?');

--5.	Procedure P5 ?? DELETE m?t record trong Table Nh�nVi�n theo m� nh�n vi�n. M� NV l� tham s? truy?n v�o
CREATE OR REPLACE PROCEDURE P5 (NV IN NHANVIEN.MANV%TYPE)
AS
    BEGIN
        DELETE FROM NHANVIEN WHERE MANV=NV;
        COMMIT;
    END;

EXEC P5('NV05');


--TRIGGER

--TRIGGER CHECK_NGAYSINH
CREATE OR REPLACE TRIGGER CHK_NGAYSINH
BEFORE INSERT OR UPDATE ON NHANVIEN
FOR EACH ROW
    DECLARE NS DATE;
BEGIN
    SELECT :NEW.NGAYSINH INTO NS FROM DUAL;
    IF(((SYSDATE - NS)/365) < 18 OR ((SYSDATE - NS)/365) > 55)
        THEN RAISE_APPLICATION_ERROR(-20500,'Tu?i ph?i t? 18-55');
    END IF;
END;

--1.	Ch? cho ph�p m?t phi?u xu?t c� t?i ?a 5 chi ti?t phi?u xu?t.

CREATE OR REPLACE TRIGGER CHECK_PHIEUXUAT
BEFORE INSERT OR UPDATE ON CHITIETPHIEUXUAT
FOR EACH ROW
    DECLARE DEM NUMBER;
BEGIN
    DEM:=0;
    SELECT COUNT(*) INTO DEM FROM CHITIETPHIEUXUAT WHERE MAPX=:NEW.MAPX;
    IF(DEM >3)
        THEN RAISE_APPLICATION_ERROR (-20500,'M?I PHI?U XU?T KH�NG QU� 4 S?N PH?M');
    END IF;
END;

INSERT INTO CHITIETPHIEUXUAT(MAPX,MASP,SOLUONG) VALUES (1, 5, 200);

--2.	Ch? cho ph�p m?t nh�n vi�n l?p t?i ?a 10 phi?u xu?t trong m?t ng�y.

CREATE OR REPLACE TRIGGER CHECK_2
BEFORE INSERT OR UPDATE ON PHIEUXUAT
FOR EACH ROW
    DECLARE DEM NUMBER;
BEGIN
    DEM:=0;
    SELECT COUNT(*) INTO DEM 
    FROM PHIEUXUAT 
    WHERE MANV=:NEW.MANV AND NGAYLAP=:NEW.NGAYLAP; 
    
    IF(DEM>2)
        THEN RAISE_APPLICATION_ERROR (-20500,'M?T NG�Y 1 NH�N VI�N CH? ???C L?P 3 H�A ??N!');
    END IF;
END;

INSERT INTO "BAI3"."PHIEUXUAT" (NGAYLAP, MANV) VALUES (TO_DATE('2016-06-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'NV01');


--3.	Vi?t trigger: Khi ng??i d�ng vi?t 1 c�u truy v?n nh?p 1 d�ng cho b?ng chi ti?t xu?t th� CSDL ki?m tra 
--n?u m� phi?u xu?t m?i ?� ch?a t?n t?i trong b?ng phi?u xu?t th� CSDL s? kh�ng cho ph�p nh?p v� th�ng b�o l?i �Phi?u xu?t n�y kh�ng t?n t?i�. 

CREATE OR REPLACE TRIGGER CHECK_3
BEFORE INSERT OR UPDATE ON CHITIETPHIEUXUAT
FOR EACH ROW
    DECLARE DEM NUMBER;
BEGIN
    SELECT COUNT(*) INTO DEM
    FROM PHIEUXUAT
    WHERE MAPX=:NEW.MAPX;
    
    IF(DEM=0)
        THEN RAISE_APPLICATION_ERROR (-20500, 'PHI?U XU?T N�Y KH�NG T?N T?I!');
    END IF;
END;

INSERT INTO CHITIETPHIEUXUAT(MAPX,MASP,SOLUONG) VALUES (5, 5, 200);
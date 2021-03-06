SET ECHO ON
SET TIMING ON
SET FEEDBACK ON

SPOOL &1;

--============================================
-- 		ESPECIALIZACION BI & BIG DATA
--============================================

-- CARGA DE TABLA DIM_TIEMPO

TRUNCATE TABLE DIM_TIEMPO;

INSERT INTO DIM_TIEMPO
(
CODMES			,
ANIO			,
MES				,
FECCARGATABLA	
)
SELECT 
	DISTINCT A.CODMES, 
	SUBSTR(A.CODMES,1,4), 
	SUBSTR(A.CODMES,5,2),
	SYSDATE
FROM HM_CLIENTE A
UNION
SELECT 
	DISTINCT B.CODMES, 
	SUBSTR(B.CODMES,1,4), 
	SUBSTR(B.CODMES,5,2),
	SYSDATE
FROM HM_DEUDACLIENTE B;

COMMIT;

DISCONNECT;
EXIT;
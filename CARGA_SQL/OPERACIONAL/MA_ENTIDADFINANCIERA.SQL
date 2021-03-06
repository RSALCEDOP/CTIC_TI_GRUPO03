SET ECHO ON
SET TIMING ON
SET FEEDBACK ON

SPOOL &1;

--============================================
-- 		ESPECIALIZACION BI & BIG DATA
--============================================

-- CARGA DE TABLA MA_ENTIDADFINANCIERA

TRUNCATE TABLE MA_ENTIDADFINANCIERA;

INSERT INTO MA_ENTIDADFINANCIERA
(
	CODENTIDAD				,
	BANCO					,
	BANCONOMCORTO			,
	TIPENTIDAD				,
	TIPCOMPETENCIA1			,
	TIPCOMPETENCIA2			
)
SELECT 
	TO_NUMBER(CODENTIDAD)	,
	BANCO					,
	BANCONOMCORTO			,
	TIPENTIDAD				,
	TIPCOMPETENCIA1			,
	TIPCOMPETENCIA2			
FROM TMP_ENTIDADFINANCIERA;

COMMIT;

DISCONNECT;
EXIT;
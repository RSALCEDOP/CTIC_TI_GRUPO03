--============================================
-- 		ESPECIALIZACION BI & BIG DATA
--============================================

-- CREACÍON DE TABLAS FINALES A NIVEL OPERACIONAL 

CREATE TABLE MA_UBIGEO(
UBIGEO					CHAR(6)		,
DEPARTAMENTO 			VARCHAR(30) ,
PROVINCIA				VARCHAR(30) ,
DISTRITO				VARCHAR(50) ,
CODIGO	        		CHAR(6)		,
DISTRITODET				VARCHAR(30) ,
FLGZONA					CHAR(4)		,
CENTROSNEGOCIO  		VARCHAR(50) ,
FLGPROVCENTROSNEGOCIO 	VARCHAR(50) ,
DISTRITOAGG    			VARCHAR(50) ,
FLGCIUDAD				CHAR(1)
)
;

CREATE TABLE MA_PERSONA (
DOCIDENTIDAD		CHAR(8)		,
DIGVERIFICACION		NUMBER  	,
GRUPOVOTACION		VARCHAR(10) ,
UBIGEO				CHAR(6)  	,
APPATERNO			VARCHAR(30) ,
APMATERNO			VARCHAR(30) ,
NOMBRES				VARCHAR(30) ,
FECNACIMIENTO		DATE        ,
SEXO				NUMBER		,
EDAD				NUMBER
);

CREATE TABLE HM_CLIENTE(
CODMES					CHAR(6)		,
TIPREGISTRO				NUMBER		,
CODSBSCLIENTE			NUMBER      ,
FECREPORTE				VARCHAR(8)  ,
TIPDOCEMPRESA			CHAR(1)     ,
RUC						VARCHAR(15) ,
TIPDOCIDENTIDAD			CHAR(1)     ,
DOCIDENTIDAD			VARCHAR(10) ,
TIPPERSONA				CHAR(1)     ,
TIPEMPRESA				CHAR(1)     ,
CANTEMPRESA				NUMBER      ,
DEUDACALIFNORMAL		NUMBER(8,2)	,
DEUDACALIFCPP			NUMBER(8,2)	,
DEUDACALIFDEFICIENTE	NUMBER(8,2)	,
DEUDACALIFDUDOSO		NUMBER(8,2)	,
DEUDACALIFPERDIDA		NUMBER(8,2)	,
DEUDACALIFCLIENTE		NUMBER(8,2)	,
CLASIFDEUDACLIENTE		NUMBER		,
RAZSOCOAP				VARCHAR(30) ,
APMATERNO				VARCHAR(30) ,
APCASADO				VARCHAR(30) ,
NOMBRE1					VARCHAR(30) ,
NOMBRE2					VARCHAR(30)
);

CREATE TABLE HM_DEUDACLIENTE(
CODMES			CHAR(6)		 ,
TIPREGISTRO		NUMBER  	 ,
CODSBSCLIENTE	NUMBER  	 ,
CODENTIDAD		NUMBER	 	 ,
TIPCREDITO		CHAR(2) 	 ,
CODCUENTA		CHAR(14)	 ,
CODPRODUCTO		NUMBER	 	 ,
CODSUBPRODUCTO	NUMBER	 	 ,
DIASATRASO		NUMBER  	 ,
SALDO			NUMBER(16,2) ,
CLASIFICACION	NUMBER
);

CREATE TABLE MA_ENTIDADFINANCIERA(
CODENTIDAD			NUMBER		,
BANCO				VARCHAR(100),
BANCONOMCORTO		VARCHAR(40) ,
TIPENTIDAD			VARCHAR(50) ,
TIPCOMPETENCIA1		VARCHAR(40)	,
TIPCOMPETENCIA2		VARCHAR(40)
);
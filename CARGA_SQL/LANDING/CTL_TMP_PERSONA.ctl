OPTIONS (SKIP=0)
LOAD DATA
INFILE "DATA/DATA_PERSONA.TXT"
TRUNCATE PRESERVE BLANKS
INTO TABLE TMP_PERSONA
fields terminated by '|'
trailing nullcols
(
DOCIDENTIDAD		,
DIGVERIFICACION		,
GRUPOVOTACION		,
UBIGEO				,
APPATERNO			,
APMATERNO			,
NOMBRES				,
FECNACIMIENTO		,
SEXO		
)

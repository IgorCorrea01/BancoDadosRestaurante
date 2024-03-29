USE RESTAURANTE;

DROP FUNCTION IF EXISTS FNC_ID_DA_PESSOA;

DELIMITER //
CREATE FUNCTION FNC_ID_DA_PESSOA(NOME_PESSOA VARCHAR(45)) RETURNS INT
BEGIN

	DECLARE ID INT;

	SELECT PESS_ID_PESSOA INTO ID
	FROM PESSOA
	WHERE  NOME_PESSOA = PESS_NM_NOME;

	RETURN ID;
END //
DELIMITER ;
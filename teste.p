/*
	Exemplo simples de codigo Progress ABL para teste.
*/

DEFINE VARIABLE i      AS INTEGER   NO-UNDO.
DEFINE VARIABLE nome   AS CHARACTER NO-UNDO INITIAL "Guilherme".
DEFINE VARIABLE total  AS DECIMAL   NO-UNDO.

PROCEDURE SomaValores:
	DEFINE INPUT  PARAMETER pValor1 AS DECIMAL NO-UNDO.
	DEFINE INPUT  PARAMETER pValor2 AS DECIMAL NO-UNDO.
	DEFINE OUTPUT PARAMETER pTotal  AS DECIMAL NO-UNDO.

	ASSIGN pTotal = pValor1 + pValor2.
END PROCEDURE.

MESSAGE "Iniciando teste Progress..." VIEW-AS ALERT-BOX INFO.

DO i = 1 TO 3:
	MESSAGE "Iteracao:" i VIEW-AS ALERT-BOX INFO.
END.

RUN SomaValores (10, 25.5, OUTPUT total).

MESSAGE
	"Nome:" nome SKIP
	"Resultado da soma:" total
	VIEW-AS ALERT-BOX INFO.

MESSAGE "Teste finalizado com sucesso." VIEW-AS ALERT-BOX INFO.


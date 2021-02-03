/* Estruturas de repeti��o
 Denominadas de loops
 Possibilita executar o mesmo c�digo mais de uma vez
    LOOP 
    FOR LOOP - Repeti��es por um n�mero de vezes j� definido
                �ndice � um vari�vel impl�tica que fica dentro do for, n�o 
                conseguimis acessar ele externamente do FOR e essa vari�vel indice
                n�o precisa ser declarada
    WHILE LOOP - Executa um sequ�ncia de instru��es, desde que a condi��o espec�ficada
                    seja TRUE. Caso seja FALSE ou NULL, o loop termina
*/
--LOOP
LOOP comandos
    EXIT [WHEN condicao];
END LOOP;

LOOP 
    IF condition THEN
        EXIT;
    END IF;
END LOOP;

--FOR LOOP
FOR indice IN incio...fim
LOOP
    comandos;
END LOOP;
    

--WHILE LOOP
    WHILE   condicao
    LOOP
        comandos;
    END LOOP;

    

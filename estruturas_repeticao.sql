/* Estruturas de repetição
 Denominadas de loops
 Possibilita executar o mesmo código mais de uma vez
    LOOP 
    FOR LOOP - Repetições por um número de vezes já definido
                índice é um variável implítica que fica dentro do for, não 
                conseguimis acessar ele externamente do FOR e essa variável indice
                não precisa ser declarada
    WHILE LOOP - Executa um sequência de instruções, desde que a condição específicada
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

    

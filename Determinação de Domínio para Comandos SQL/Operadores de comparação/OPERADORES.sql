/*

    1. Igualdade =
    2. Diferen�a !=, <>
    3. Maior que >
    4. Menor que <
    5. Maior ou igual >=
    6. Menor ou igual <=
    7. Nulo IS NULL
    8. N�o-nulo IS NOT NULL
    9. Pertencente ao conjunto IN(elemento1,.....,elemento)
    10. N�o pertencente ao conjunto NOT IN(elemento1,.....,elemento)
    11. SubQuery (Select sysdate from dual;)
    12. Pertence a um intervalo 'BETWEEN ValM�nimo AND ValM�ximo'
    13. N�o pertence a um intervalo ' NOT BETWEEN ValM�nimo AND ValM�ximo'
    14. Cont�m "LIKE": Este operador � utilizado para o uso exclusivo de compara��o com 
        express�es de caracteres, permitindo verificar a exist�ncia de uma cadeia de 
        caracteres em parte da express�o comparadas. Coringas : %, _
    15. N�o cont�m "NOT LIKE": Este operador � utilizado para o uso exclusivo de compara��o com 
        express�es de caracteres, permitindo verificar a exist�ncia de uma cadeia de 
        caracteres em parte da express�o comparadas. Coringas : %, _    
    16. Existe 'EXISTS': Somente ser� verdadeiro se a subquery retornar pelo menos uma linha.
    17. N�o existe 'NOT EXISTS': Somente ser� verdadeiro se a subquery retornar nenhuma linha.
    18. Qualquer 'ANY': Trabalha de maneira semenhante ao operador IN, verificando a compara��o
        do campo com qualquer um dos elementos retornandos pela subquery.
        Exemplo:
                -- Transformado para instru��o equivalente usando ANY.
                
                SELECT e1.empno, e1.sal
                FROM   emp e1
                WHERE  NOT (e1.sal <= ANY (SELECT e2.sal
                                           FROM emp e2
                                           WHERE e2.deptno = 20));
    19. Todos "ALL": Verifica a compara��o de um campo com todos os elementos retornados pela subquery.
        Exemplo:
                SELECT e1.empno, e1.sal
                FROM   emp e1
                WHERE  e1.sal > ALL (SELECT e2.sal
                                     FROM   emp e2
                                     WHERE  e2.deptno = 20);
        Efeito da combina��o dos operadores ANY e ALL com os operadores simples.
        < ALL Menor que o  menor.
        > ALL Maior que o maior.
        < ANY Menor que o maior.
        > ANY Maior que o menor.
        <> ANY Not In
        = ANY  IN
SQL>

        
*/
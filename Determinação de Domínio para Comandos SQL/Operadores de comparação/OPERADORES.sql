/*

    1. Igualdade =
    2. Diferença !=, <>
    3. Maior que >
    4. Menor que <
    5. Maior ou igual >=
    6. Menor ou igual <=
    7. Nulo IS NULL
    8. Não-nulo IS NOT NULL
    9. Pertencente ao conjunto IN(elemento1,.....,elemento)
    10. Não pertencente ao conjunto NOT IN(elemento1,.....,elemento)
    11. SubQuery (Select sysdate from dual;)
    12. Pertence a um intervalo 'BETWEEN ValMínimo AND ValMáximo'
    13. Não pertence a um intervalo ' NOT BETWEEN ValMínimo AND ValMáximo'
    14. Contém "LIKE": Este operador é utilizado para o uso exclusivo de comparação com 
        expressões de caracteres, permitindo verificar a existência de uma cadeia de 
        caracteres em parte da expressão comparadas. Coringas : %, _
    15. Não contém "NOT LIKE": Este operador é utilizado para o uso exclusivo de comparação com 
        expressões de caracteres, permitindo verificar a existência de uma cadeia de 
        caracteres em parte da expressão comparadas. Coringas : %, _    
    16. Existe 'EXISTS': Somente será verdadeiro se a subquery retornar pelo menos uma linha.
    17. Não existe 'NOT EXISTS': Somente será verdadeiro se a subquery retornar nenhuma linha.
    18. Qualquer 'ANY': Trabalha de maneira semenhante ao operador IN, verificando a comparação
        do campo com qualquer um dos elementos retornandos pela subquery.
        Exemplo:
                -- Transformado para instrução equivalente usando ANY.
                
                SELECT e1.empno, e1.sal
                FROM   emp e1
                WHERE  NOT (e1.sal <= ANY (SELECT e2.sal
                                           FROM emp e2
                                           WHERE e2.deptno = 20));
    19. Todos "ALL": Verifica a comparação de um campo com todos os elementos retornados pela subquery.
        Exemplo:
                SELECT e1.empno, e1.sal
                FROM   emp e1
                WHERE  e1.sal > ALL (SELECT e2.sal
                                     FROM   emp e2
                                     WHERE  e2.deptno = 20);
        Efeito da combinação dos operadores ANY e ALL com os operadores simples.
        < ALL Menor que o  menor.
        > ALL Maior que o maior.
        < ANY Menor que o maior.
        > ANY Maior que o menor.
        <> ANY Not In
        = ANY  IN
SQL>

        
*/
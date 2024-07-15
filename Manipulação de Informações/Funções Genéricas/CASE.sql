/*
    Possui funcionalidade muito semelhante � do decode, permitindo, no entanto, compara��es
    diferentes da igualdade. Ou seja, pode-se utilizar qualquer compara��o que se utiliza 
    em um comando IF, por exemplo.
    
        Formato:
                CASE [express�o] WHEN condi��o THEN valor
                                 WHEN condi��o THEN valor
                                 ELSE VALOR
                END                  
*/

 Select   CASE 'M' WHEN 'M' THEN 'MASCULINO'
                                 WHEN 'F' THEN 'FEMININO'
                                 ELSE 'OUTROS'
          END AS SEXO
   From dual; 
 
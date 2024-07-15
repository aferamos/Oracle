/*
    Possui funcionalidade muito semelhante à do decode, permitindo, no entanto, comparações
    diferentes da igualdade. Ou seja, pode-se utilizar qualquer comparação que se utiliza 
    em um comando IF, por exemplo.
    
        Formato:
                CASE [expressão] WHEN condição THEN valor
                                 WHEN condição THEN valor
                                 ELSE VALOR
                END                  
*/

 Select   CASE 'M' WHEN 'M' THEN 'MASCULINO'
                                 WHEN 'F' THEN 'FEMININO'
                                 ELSE 'OUTROS'
          END AS SEXO
   From dual; 
 
/*
    Retorna o valor original com todas as ocorrências dos elementos pertencentes ao conjunto de caracteres antigos 
    trocadas pelos correspondentes no conjunto novo.
    
        Formato:
                TRANSLATE(char, conjunto_caracteres_antigo, conjunto_caracteres_novo)
*/

 Select TRANSLATE(TO_CHAR(23.00, 'L9,999,990.99'), 'R$','$')
   From dual; 


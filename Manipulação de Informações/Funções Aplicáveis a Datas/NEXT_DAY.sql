/*
    Retorna a data correspondente ao pr�ximo dia da semana informado.
    
        Formato:
                NEXT_DAY(data, [dia_da_semana_informado])
*/

 Select NEXT_DAY(SYSDATE, 'QUINTA')  
   From dual; 

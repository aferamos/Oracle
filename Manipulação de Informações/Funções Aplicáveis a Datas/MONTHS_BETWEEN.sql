/*
    Retorna o número de meses entre uma data e outra.
    
        Formato:
                MONTHS_BETWEEN(data, data)
*/

 Select MONTHS_BETWEEN(SYSDATE, SYSDATE+90)
   From dual; 

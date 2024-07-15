/*
    Extrai e retorna o valor de uma parte especifica de um campo de data.
    
        Formato:
                EXTRACT(parte_da_data FROM valor_data)
       YEAR.
       MONTH.
       DAY.
       HOUR.
       MINUTE.
       SECOND.
*/

 Select 
        EXTRACT(DAY FROM SYSDATE)
   From dual; 
   
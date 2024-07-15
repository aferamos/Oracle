/*
    Retorna o número arredondado em n casas decimais.
    
        Formato:
                ROUND(number, [casa_decimais])
*/

 Select ROUND(15.987654, 4)
   From dual; 

/*
    Retorna a data correspondente ao início do período se o formato for 'MM' e o dia estiver entre 1 e 15;
    retorna o mês corrente e ao início do próximo mês se o dia estiver entre 16 e 31.
    
        Formato:
                ROUND(number, [formato])
*/

 Select ROUND(SYSDATE, 'MM')"INICIO DO MES"
   From dual; 


Select ROUND(SYSDATE, 'YY')"INICIO DO ANO"
   From dual; 
   
   
Select ROUND(SYSDATE, 'D')"INICIO DA SEMANA"
   From dual; 
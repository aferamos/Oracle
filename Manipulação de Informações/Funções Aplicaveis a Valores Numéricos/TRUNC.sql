/*
    Retorna o n�mero truncado em casas decimais.
  
        Formato:
                TRUNC(number, [casas_decimais])

*/

 Select TRUNC(15.9876541, 4)
   From dual; 

/*
Retorna a data correspondente ao in�cio do per�odo corrente.
  
        Formato:
                TRUNC(data, [formato])
*/

Select TRUNC(SYSDATE, 'MM')"INICIO DO MES"
   From dual; 


Select TRUNC(SYSDATE, 'YY')"INICIO DO ANO"
   From dual; 
   
   
Select TRUNC(SYSDATE, 'DD')"INICIO DA SEMANA"
   From dual; 
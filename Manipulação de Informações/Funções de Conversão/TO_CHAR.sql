/* 
            MANIPULAÇÃO DE INFORMAÇÕES
 Converte um valor do tipo data ou número para um valor char.
   Formato:
    TO_CHAR(data,[formato_char])
     ou
    TO_CHAR(número,[formato_char])
 */

Select TO_CHAR(SYSDATE, '"Nascido em " DD/MM/YYYY') "Nascimento"
 From dual;

Select TO_CHAR(SYSDATE, 'DD  " de "Month "de "  YYYY') "Nascimento"
  From dual;
 
Select TO_CHAR(SYSDATE, 'DD-MM-YYYY') "Nascimento"
  From dual;

Select TO_CHAR(SYSDATE,'MONTH "de" YYYY') as MES_ANO 
  From dual;

Select TO_CHAR(SYSDATE, 'DL' ) "TEXTO"
  From dual;

Select TO_CHAR(SYSDATE, 'HH24":"MI":"SS":"SSSSS' ) "HORA"
  From dual;

/*
Formatos válidos:
    DATA:
         Parâmetros	 Descrição
         BC ou DC    Indicador de antes de Cristo (BC) ou depois de Cristo (AD)
         B.C. ou A.D Indicador de antes de Cristo (BC) ou depois de Cristo (AD)
         CC          Século 
         SCC         Século precedido de "-" quando for (BC) 
         J           Data no formato Juliano (números de dias a partir de 1/01/4712 BC)
         AM ou PM    Antes do meio-dia (AM) e depois do meio-dia(PM)
         A.M. ou P.M.    Antes do meio-dia (AM) e depois do meio-dia(PM)
         SYYYY       Ano com 4 posições precedido de "-" quando for (BC)
         SYEAR       Ano por extenso precedido de "-" quando for (BC)
         YEAR	     Ano (Ex: dois mil e onze, twenty eleven)
         YYYY        Ano (Ex: 2011)
         YYY         Ano (Ex: 011)
         YY          Ano (Ex: 11)
         Y	         Ano (Ex: 1) 
         Q	         Quadrimestre (1,2,3,4)
         MM	         Mês (Ex: 10)
         MON	     Abreviatura do nome do Mês (Ex: OUT)
         MONTH	     Nome do Mês (Ex: Outubro)
         RM	         Mês em números romanos (Ex: X)
         WW	         Semana do Ano de 1 a 53
         W 	         Semana do mês de 1 a 5
         D	         Dia da semana de 1 a 7 (1 = Domingo até 7=Sábado)
         DAY	     Nome do dia da semana (Ex: Sabádo)    
         DD	         Dia do Mês de 1 a 31
         DDD	     Dia do Ano de 1 a 366
         DY	         Abreviatura do dia da semana (Ex: SÁB)
         HH	         Hora de 1 a 12
         HH12	     Hora de 1 a 12
         HH24	     Hora de 1 a 24
         MI	         Minutos
         SS	         Segundos
         SSSSS	     Milésimos
         
         Prefixo:
         FM          Retirar brancos à esquerda e zeros à direita
         
         Sufixos:
         TH          Número ordinal 
         SP          Número por extenso
*/

Select TO_CHAR(23.00, 'L9,999,990.99') "Valor"
  From dual;

Select TO_CHAR(.04, 'FM999G999G990D90') "Valor"
  From dual;
  
Select TO_CHAR(12131.1, 'FM999G999G999D90', 'NLS_NUMERIC_CHARACTERS='',.''')
  From dual;

 /* Formatos válidos:
        NÚMEROS:
                Parâmetros	 Descrição
                9            Normal
                .            Para casas decimais(ponto)
                G            Para casas decimais
                ,            Separador de algarismos (vírgula/milhar)
                D            Separador de algarismos (milhar)
                
                Prefixo:
                0            Com zero no início
                $            Com o caractere $ no início
                B            Valor zerado é exibido em branco
                FM           Retirar brancos à esquerda e zeros à direita
                
                Sufixos:
                MI           O "-" de números negativos aparecerá no final do número
                PR           Números negativos aparecem no formato "<n>"
 */
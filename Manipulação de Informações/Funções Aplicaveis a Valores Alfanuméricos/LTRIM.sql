/*
    Retorna a expressão char_val_original, sem os valores à esquerda que estajam contidos em conjunto_caracteres..
    
        Formato:
                LTRIM(char_original, [conjunto_caracteres])
*/


 Select 'NOME: '||LTRIM(' ALESSANDRO FERREIRA RAMOS') "LTRIM"
   From dual; 
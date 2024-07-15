/*
    Retorna a expressão char_val_original, sem os valores à direita que estajam contidos em conjunto_caracteres..
    
        Formato:
                LTRIM(char_original, [conjunto_caracteres])
*/


 Select 'NOME: '||RTRIM('ALESSANDRO FERREIRA RAMOS  ') "RTRIM"
   From dual; 
/*
    Retorna a expressão char_val_original, preenchida à direita com char_val_original, preenchida à esquerda com
    char_preenchimento o número de vezes necessárias para complentar o tamanho estabelecido.
    
        Formato:
                LPAD(char_original, tamanho, [char_preenchimento])
*/

 Select RPAD('ALESSANDRO FERREIRA RAMOS', 50, '*')
   From dual; 


 Select LPAD(RPAD(' ALESSANDRO FERREIRA RAMOS ', 68, '*'),100 , '*')
   From dual; 
/*
    Retorna a express�o char_val_original, preenchida � direita com char_val_original, preenchida � esquerda com
    char_preenchimento o n�mero de vezes necess�rias para complentar o tamanho estabelecido.
    
        Formato:
                LPAD(char_original, tamanho, [char_preenchimento])
*/

 Select RPAD('ALESSANDRO FERREIRA RAMOS', 50, '*')
   From dual; 


 Select LPAD(RPAD(' ALESSANDRO FERREIRA RAMOS ', 68, '*'),100 , '*')
   From dual; 
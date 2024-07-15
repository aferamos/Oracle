/*
    O NVL vai retornar o valor de y caso x seja um valor nulo ou w caso y seja nulo, 
    caso contrário irá retornar x.
        Formato:
                NVL2(NULL, NULL,10)
*/

Select NVL2(NULL, NULL, 10) 
  From dual; 

Select NVL2(2, 10) 
  From dual; 
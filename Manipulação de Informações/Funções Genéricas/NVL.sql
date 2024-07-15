/*
    O NVL vai retornar o valor de y caso x seja um valor nulo, 
    caso contrário irá retornar x.
        Formato:
                NVL(NULL, 10)
*/

Select NVL(NULL, 10) 
  From dual; 

Select NVL(2, 10) 
  From dual; 
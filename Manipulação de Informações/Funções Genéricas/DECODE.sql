/*
    Est�o fun��o � o IF dentro do select, ela pega como padr�o o primeiro 
    valor definido em a e partir da� v�. Se "a" for igual a "b" ent�o ele 
    retornar� "c", no caso de "a" for igual "d" ent�o retorna "e", se "a" 
    n�o for igual a nenhum valor definido ele vai retornar o valor_padr�o.
    
        Formato:
                DECODE(2, 2, 10, 3, 20, 100)
                DECODE(valor, comparacao1, valor1, comparacao1, valor1, valor_default)
*/

 Select DECODE(2, 2, 10, 3, 20, 100) 
   From dual; 
 
 Select DECODE(3, 2, 10, 3, 20, 100) 
   From dual;
 
 Select DECODE(4, 2, 10, 3, 20, 100) 
   From dual;
      
 Select DECODE('M', 'M', 'MASCULINO', 'F', 'FEMININO') 
   From dual;
   
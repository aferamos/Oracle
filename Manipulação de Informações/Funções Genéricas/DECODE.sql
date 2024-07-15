/*
    Estão função é o IF dentro do select, ela pega como padrão o primeiro 
    valor definido em a e partir daí vê. Se "a" for igual a "b" então ele 
    retornará "c", no caso de "a" for igual "d" então retorna "e", se "a" 
    não for igual a nenhum valor definido ele vai retornar o valor_padrão.
    
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
   
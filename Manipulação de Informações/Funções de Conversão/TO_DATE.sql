/* Converte uma expressão char em date.
    Formato:
            TO_DATE (char, [format_char])
*/

Select TO_DATE ('13/06/2019','DD/MM/YYYY') "dt"
  From dual;
  
Select to_date('03/12/2013', 'DD/MM/RRRR') + 31
  From dual;
  
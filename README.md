# StringCalculator

https://osherove.com/tdd-kata-1

Cree una calculadora de cadenas simple con una firma de método: ``int Add(string numbers)``

1. El método puede ***tomar hasta dos números, separados por comas, y devolverá su suma***. por ejemplo ``“”`` o ``“1”`` o ``“1,2”`` como entradas. (para una cadena vacía, devolverá 0)

2. Permitir que el método Add maneje una ***cantidad desconocida de números***.

3. Permita que el método Add maneje ***nuevas líneas entre números*** (en lugar de comas):

    - La siguiente entrada está bien: ``"1\n2,3"`` (será igual a 6)

4. Soporta ***diferentes delimitadores***:

    - Para cambiar un delimitador, el comienzo de la cadena contendrá una línea separada que se ve así: ``“//[delimiter]\n[numbers…]”`` por ejemplo ``“//;\n1;2”`` debe devolver tres donde el delimitador predeterminado es ";"

    - La primera línea es opcional. todos los escenarios existentes aún deben ser compatibles

5. Llamar a Add con un ***número negativo arrojará una excepción*** "negativos no permitidos" y el negativo que se pasó.

    - Si hay varios negativos, muéstrelos todos en el mensaje de excepción.

## Segunda iteración

6. Los números ***mayores que 1000 deben ignorarse***, por lo que sumar ``2 + 1001 = 2``.

7. Los ***delimitadores pueden tener cualquier longitud*** con el siguiente formato: ``"//[delimitador]\n"`` por ejemplo: ``"//[***]\n1***2***3"`` debería devolver 6.

8. Permita ***múltiples delimitadores*** como este: ``“//[delim1][delim2]\n”`` por ejemplo ``“//[*][%]\n1*2%3”`` debería devolver 6.

9. Asegúrese de que también puede manejar ***varios delimitadores con una longitud superior a un carácter***
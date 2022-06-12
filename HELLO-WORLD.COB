       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLO-WORLD.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 beforeTax    PIC 999V99  VALUE 123.45.
       01 salesTaxRate PIC V999    VALUE .065.
       01 afterTax     PIC 999.99.

       PROCEDURE DIVISION.
       Begin.
       COMPUTE afterTax ROUNDED = beforeTax + (beforeTax * salesTaxRate)
       DISPLAY "After tax amount is " afterTax
       STOP RUN.

       IDENTIFICATION DIVISION.
       PROGRAM-ID. Arithmetic-Demo.
       AUTHOR. Mike Korolevsky.
       DATE-WRITTEN. 25 Sep 2023.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
      *> 3 digit variable initialized to 100
           01 VarA    PIC 9(3) VALUE 100.
      *> 3 digit variable initialized to 200
           01 VarB    PIC 9(3) VALUE 200.
      *> 3 digit variable initialized to zero
           01 Result  PIC 9(3) VALUE ZERO.
      *> 4 digit variable for multiplication result
           01 Product PIC 9(4) VALUE ZERO.

           01 VALUE-1 PIC 99999.
           01 FORMATTED-VALUE-1 PIC $99,999.99.

       PROCEDURE DIVISION.
       BEGIN.
           DISPLAY "Starting Values: ".
           DISPLAY "VarA: " VarA.
           DISPLAY "VarB: " VarB.
           DISPLAY "Result: " Result.
           DISPLAY "Product: " Product.

      *> Add VarA and VarB, result stored in VarA
           ADD VarB TO VarA.
           DISPLAY "After ADD TO, VarA: " VarA.

      *> Add VarA and VarB, result stored in Result
           ADD VarA, VarB GIVING Result.
           DISPLAY "After ADD GIVING, Result: " Result.

      *> Subtract 50 from VarA, result stored in VarA
           SUBTRACT 50 FROM VarA.
           DISPLAY "After SUBTRACT, VarA: " VarA.

      *> Multiply VarA by VarB, result stored in Product
           MULTIPLY VarA BY VarB GIVING Product.
           DISPLAY "After MULTIPLY BY GIVING, Product: " Product.

      *> Divide Product by VarB, result stored in Result with ROUNDED option
           DIVIDE Product BY VarB GIVING Result ROUNDED.
           DISPLAY "After DIVIDE BY GIVING ROUNDED, Result: " Result.

           MOVE 12345 TO VALUE-1.
           MOVE VALUE-1 TO FORMATTED-VALUE-1.
           DISPLAY VALUE-1.
           DISPLAY FORMATTED-VALUE-1.

           STOP RUN.
       END PROGRAM Arithmetic-Demo.

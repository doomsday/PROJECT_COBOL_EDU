       IDENTIFICATION DIVISION.
       PROGRAM-ID. DoCalc.
       AUTHOR. Michael Coughlan.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 FirstNum      PIC 9       VALUE ZEROS.
       01 SecondNum     PIC 9       VALUE ZEROS.
       01 CalcResult    PIC 99      VALUE 0.
       01 UserPrompt    PIC A(38)   VALUE
      -                 "Please enter two single digit numbers".
       PROCEDURE DIVISION.
       Begin.
           DISPLAY UserPrompt
           ACCEPT FirstNum
           ACCEPT SecondNum
           COMPUTE CalcResult = FirstNum + SecondNum
           DISPLAY "Result is = ", CalcResult
           STOP RUN.
           
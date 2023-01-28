       IDENTIFICATION DIVISION.
       PROGRAM-ID. Draft.
       AUTHOR. Mike Korolevsky.
       DATE-WRITTEN. 21 July 2022.


       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Surname         PIC X(8)  VALUE "COUGHLAN".
       01 NumOfEmployees  PIC 999V.
       01 NumOfEmployees2 PIC 999V.
       01 VoidString      PIC X(8).
       01 StudentRec.
           02 StudentId   PIC 9(7)  VALUE 1205621.
           02 StudentName PIC X(21) VALUE "WIlliam".
       01 VDate           PIC 9(8)  VALUE ZEROS.
       01 Members         PIC 999V  VALUE 888.
       01 Total           PIC 999V  VALUE 444.
       01 MemberAverage   PIC 999V  VALUE ZEROS.
       01 MultSum         PIC 9V    VALUE ZERO.
       01 Num1            PIC 9V    VALUE 1.
       01 Num2            PIC 9V    VALUE 1.
       01 Num3            PIC 9V    VALUE 1.
       01 Num4            PIC 9V    VALUE 0.
       01 NumResult       PIC 9V    VALUE 1.

       PROCEDURE DIVISION.
       MOVE "FITZWILLIAM" TO Surname.
       DISPLAY Surname.
       MOVE 12.4 TO NumOfEmployees.
       DISPLAY "NumOfEmployees: " NumOfEmployees.
       MOVE NumOfEmployees TO NumOfEmployees2.
       DISPLAY "NumOfEmployees2: " NumOfEmployees2.
       DISPLAY VoidString.
       DISPLAY StudentRec.
       DISPLAY 1 ","  2  "," 3 "." Surname
       ACCEPT VDate FROM DATE YYYYMMDD.
       DISPLAY VDate.
       DIVIDE Members INTO Total GIVING MemberAverage.
       DISPLAY "MemberAverage: " MemberAverage.
       COMPUTE MultSum = Total + Members
           ON SIZE ERROR DISPLAY "Alert: MultSum is too small to hold "
      -    "the result"
       END-COMPUTE.
       DISPLAY MultSum.
       ADD Num1, Num2, Num3, Num4 GIVING NumResult.
       DISPLAY "NumResult: " NumResult ", Num4: " Num4.
       STOP RUN.


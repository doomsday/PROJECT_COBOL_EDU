       IDENTIFICATION DIVISION.
       PROGRAM-ID. ENTER-NAME.
       AUTHOR. Mike Korolevsky.
       DATE-WRITTEN. 12th June Z0ZZ.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 StudentName PICTURE X(10) VALUE SPACES.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Enter name " WITH NO ADVANCING
           ACCEPT StudentName
           DISPLAY "Name entered was " StudentName
           STOP RUN.
       END PROGRAM ENTER-NAME.

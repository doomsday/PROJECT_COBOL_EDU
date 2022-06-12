       IDENTIFICATION DIVISION.
       PROGRAM-ID. ENTER-NAME.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 StudentName PICTURE XXXXXXXXXX.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Enter name " WITH NO ADVANCING
           ACCEPT StudentName
           DISPLAY "Name entered was " StudentName
           STOP RUN.
       END PROGRAM ENTER-NAME.

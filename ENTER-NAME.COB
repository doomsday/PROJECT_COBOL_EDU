       IDENTIFICATION DIVISION.
       PROGRAM-ID. ENTER-NAME.
       AUTHOR. Mike Korolevsky.
       DATE-WRITTEN. 12th June Z0ZZ.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 StudentName PICTURE X(10) VALUE SPACES.
       01 CurrentDate.
          02  CurrentYear     PIC 99.
          02  CurrentMonth    PIC 99.
          02  CurrentDay      PIC 99.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Enter name " WITH NO ADVANCING
           ACCEPT StudentName
           ACCEPT CurrentDate FROM DATE YYMMDD
           DISPLAY "Name entered was " StudentName " [" CurrentDate "]"
           STOP RUN.
       END PROGRAM ENTER-NAME.

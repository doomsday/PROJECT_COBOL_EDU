       IDENTIFICATION DIVISION.
       PROGRAM-ID. Puzzle.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 BirthDate.
           02 YearOfBirth.
               03 CenturyOB PIC 99.
               03 YearOB    PIC 99.
           02 MonthOfBirth  PIC 99.
           02 DayOfBirth    PIC 99.

       PROCEDURE DIVISION.
       BeginProgram.
           MOVE 19751115 TO BirthDate
           DISPLAY "Month is = " MonthOfBirth
           DISPLAY "Century of birth is = " CenturyOB
           DISPLAY "Year of birth is = " YearOB
           DISPLAY DayOfBirth "/" MonthOfBirth "/" YearOfBirth
           DISPLAY "Birth date = " BirthDate
           MOVE ZEROS TO YearOfBirth
           DISPLAY "Birth date = " BirthDate
           STOP RUN.

       IDENTIFICATION DIVISION.
       PROGRAM-ID. Accept-Date.
       AUTHOR. Mike Korolevsky.
       DATE-WRITTEN. 25 Aug 2023.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 CurrentDate.
         02  CurrentYear     PIC 99.
         02  CurrentMonth    PIC 99.
         02  CurrentDay      PIC 99.

       01 DayOfYear.
         02 YearDay          PIC 9(3).

       01 Y2KDate.
         02 Y2KYear          PIC 9(4).
         02 Y2KMonth         PIC 99.
         02 Y2KDay           PIC 99.

       PROCEDURE DIVISION.
      *> DATE FORMAT PROCESSING IS NOT CONFORMS TO IBM COBOL STANDARD!
       Begin.
           ACCEPT CurrentDate   FROM DATE
           ACCEPT YearDay       FROM DAY
           ACCEPT Y2KDate       FROM DATE YYYYMMDD
           DISPLAY "CurrentDate: " CurrentDate
           DISPLAY "DayOfYear: " DayOfYear
           DISPLAY "Y2KDate: " Y2KDate
           STOP RUN.
       END PROGRAM Accept-Date.

       IDENTIFICATION DIVISION.
       PROGRAM-ID. Draft.
       AUTHOR. Mike Korolevsky.
       DATE-WRITTEN. 21 July 2022.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
       DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 StudentRec.
         02 StudentId     PIC 9(7).
         02 StudentName.
           03 Forename    PIC X(9).
           03 Surname     PIC X(12).
         02 DateOfBirth.
           03 YOB         PIC 9(4).
           03 MOB         PIC 99.
           03 DOB         PIC 99.
         02 CourseId      PIC X(5).
         02 GPA           PIC 9V99.

       PROCEDURE DIVISION.
           MOVE 1975 TO YOB
           MOVE 10 TO MOB
           MOVE 21 TO DOB
           MOVE "Fitzpatrick" TO Surname
           MOVE "William" TO Forename
           DISPLAY "Student date of birth is " DOB "/" MOB "/" YOB
           DISPLAY "Student name = " Surname ", " Forename
       STOP RUN.

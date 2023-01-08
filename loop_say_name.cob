       IDENTIFICATION DIVISION.
       PROGRAM-ID. LOOP-SAY-NAME.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 my-var PIC X(6) VALUE "Sathabhron".
           01 my-var2 PIC X(10) VALUE "Sathabhron".
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM DisplayName 3 TIMES
           PERFORM DisplayName10Char 5 TIMES
           STOP RUN.
       DisplayName.
           DISPLAY my-var.
       DisplayName10Char.
           DISPLAY my-var2.
       END PROGRAM LOOP-SAY-NAME.
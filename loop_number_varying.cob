       IDENTIFICATION DIVISION.
       PROGRAM-ID. LOOP-NUMBER.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 MyCounter PIC 9 VALUE 1.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM DisplayNumbers VARYING MyCounter FROM 1 BY 2
           UNTIL MyCounter > 5
           STOP RUN.
       DisplayNumbers.
           DISPLAY MyCounter.
       END PROGRAM LOOP-NUMBER.
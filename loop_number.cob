       IDENTIFICATION DIVISION.
       PROGRAM-ID. LOOP-NUMBER.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 MyCounter PIC 9 VALUE 1.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM DisplayNumbers UNTIL MyCounter > 8
           STOP RUN.
       DisplayNumbers.
           DISPLAY MyCounter.
           COMPUTE MyCounter = MyCounter + 1.
       END PROGRAM LOOP-NUMBER.
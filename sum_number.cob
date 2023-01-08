       IDENTIFICATION DIVISION.
       PROGRAM-ID. ADD-SUM-NUMBERS.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 my-var PIC 99 VALUE 50.
           01 my-var2 PIC 99 VALUE 50.
           01 my-var3 PIC 99 VALUE 50.
           01 resultAdd PIC 999.
           01 resultMalti PIC 9999.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM AddTwoNumbers
           PERFORM SubtractTwoNumbers
           PERFORM DisplayResult
           STOP RUN.
       AddTwoNumbers.
           COMPUTE resultAdd = my-var + my-var2 + my-var3.
       SubtractTwoNumbers.
           COMPUTE resultMalti = my-var2 * my-var.
       DisplayResult.
           DISPLAY "Total: " resultAdd
           DISPLAY "Multiple: " resultMalti.
       END PROGRAM ADD-SUM-NUMBERS.
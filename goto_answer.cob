       IDENTIFICATION DIVISION.
       PROGRAM-ID. DISPLAY-HELLO.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 Greeting PIC A(5) VALUE "Hello".
           01 Answer PIC A(1) VALUE "N".
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM DisplayHello
           STOP RUN.
       DisplayHello.
           DISPLAY Greeting
           DISPLAY "Terminate Greeting Naaaaajaaa? (Y/N): "
           ACCEPT Answer
           IF Answer = "N"
               GO TO DisplayHello.
       END PROGRAM DISPLAY-HELLO.
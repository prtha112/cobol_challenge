       IDENTIFICATION DIVISION.
       PROGRAM-ID. DATE-TIME.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 WS-DT.   
               05 WS-DATE-TIME.            
                  10 WS-DATE.              
                     15 WS-YEAR  PIC  9(4). 
                     15 WS-MONTH PIC  9(2).
                     15 WS-DAY   PIC  9(2).
                  10 WS-TIME.              
                     15 WS-HOUR  PIC  9(2).
                     15 WS-MIN   PIC  9(2).
                     15 WS-SEC   PIC  9(2).
                     15 WS-MS    PIC  9(2).
                  10 WS-DIFF-GMT         PIC S9(4).
            
           01 WS-FORMAT-DT.   
               05 WS-FORMAT-DATE-TIME.                       
                  15 WS-FORMAT-YEAR  PIC  9(4). 
                  15 FILLER             PIC X VALUE '-'.
                  15 WS-FORMAT-MONTH PIC  9(2).
                  15 FILLER             PIC X VALUE '-'.
                  15 WS-FORMAT-DAY   PIC  9(2).  
                  15 FILLER             PIC X VALUE '-'.           
                  15 WS-FORMAT-HOUR  PIC  9(2).
                  15 FILLER             PIC X VALUE ':'.
                  15 WS-FORMAT-MIN   PIC  9(2).
                  15 FILLER             PIC X VALUE ':'.
                  15 WS-FORMAT-SEC   PIC  9(2).
                  15 FILLER             PIC X VALUE ':'.
                  15 WS-FORMAT-MS    PIC  9(2).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM PassDatetime
           STOP RUN.
       PassDatetime.
           MOVE FUNCTION CURRENT-DATE TO WS-DATE-TIME
           MOVE WS-YEAR  TO WS-FORMAT-YEAR
           MOVE WS-MONTH TO WS-FORMAT-MONTH
           MOVE WS-DAY   TO WS-FORMAT-DAY
           MOVE WS-HOUR  TO WS-FORMAT-HOUR
           MOVE WS-MIN   TO WS-FORMAT-MIN
           MOVE WS-SEC   TO WS-FORMAT-SEC
           MOVE WS-MS    TO WS-FORMAT-MS
           DISPLAY WS-FORMAT-DATE-TIME.
       END PROGRAM DATE-TIME.
       IDENTIFICATION DIVISION.
       PROGRAM-ID. DATE-TIME.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 WS-TEMP-DT.   
               05 WS-TEMP-DATE-TIME.            
                  10 WS-TEMP-DATE.              
                     15 WS-TEMP-YEAR  PIC  9(4). 
                     15 WS-TEMP-MONTH PIC  9(2).
                     15 WS-TEMP-DAY   PIC  9(2).
                  10 WS-TEMP-TIME.              
                     15 WS-TEMP-HOUR  PIC  9(2).
                     15 WS-TEMP-MIN   PIC  9(2).
                     15 WS-TEMP-SEC   PIC  9(2).
                     15 WS-TEMP-MS    PIC  9(2).
                  10 WS-DIFF-GMT         PIC S9(4).
            
01         01 WS-FORMATTED-DT.   
               05 WS-FORMATTED-DATE-TIME.                       
                  15 WS-FORMATTED-YEAR  PIC  9(4). 
                  15 FILLER             PIC X VALUE '-'.
                  15 WS-FORMATTED-MONTH PIC  9(2).
                  15 FILLER             PIC X VALUE '-'.
                  15 WS-FORMATTED-DAY   PIC  9(2).  
                  15 FILLER             PIC X VALUE '-'.           
                  15 WS-FORMATTED-HOUR  PIC  9(2).
                  15 FILLER             PIC X VALUE ':'.
                  15 WS-FORMATTED-MIN   PIC  9(2).
                  15 FILLER             PIC X VALUE ':'.
                  15 WS-FORMATTED-SEC   PIC  9(2).
                  15 FILLER             PIC X VALUE ':'.
                  15 WS-FORMATTED-MS    PIC  9(2).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM PassDatetime
           STOP RUN.
       PassDatetime.
           MOVE FUNCTION CURRENT-DATE TO WS-TEMP-DATE-TIME
           MOVE WS-TEMP-YEAR  TO WS-FORMATTED-YEAR
           MOVE WS-TEMP-MONTH TO WS-FORMATTED-MONTH
           MOVE WS-TEMP-DAY   TO WS-FORMATTED-DAY
           MOVE WS-TEMP-HOUR  TO WS-FORMATTED-HOUR
           MOVE WS-TEMP-MIN   TO WS-FORMATTED-MIN
           MOVE WS-TEMP-SEC   TO WS-FORMATTED-SEC
           MOVE WS-TEMP-MS    TO WS-FORMATTED-MS
           DISPLAY WS-FORMATTED-DATE-TIME.
       END PROGRAM DATE-TIME.
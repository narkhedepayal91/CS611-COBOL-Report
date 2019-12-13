
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MULTIPLICATION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       *> variables we will be using in this program.
       01 WS_VARONE PIC 9(9).
       01 WS_VARTWO PIC 9(9).
       01 WS-FIRSTMULTRES PIC 9(9).
       01 WS_SECMULTRES PIC 9(9).
       01 WS_MOVE PIC 9(9).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           *> Get the first variable value from the user.
           DISPLAY "Enter the first number (9 digit) : ".
           ACCEPT WS_VARONE.
           *> Get the second value from the user.
           DISPLAY "Enter the second number (9 digit) : ".
           ACCEPT WS_VARTWO.
           *> Compute WS_VARONE times WS_VARTWO and store result in WS-FIRSTMULTRES.
           COMPUTE WS-FIRSTMULTRES = (WS_VARONE * WS_VARTWO).
           *> Multiply WS_VARONE by WS_VARTWO storing result in WS_SECMULTRES.
           MULTIPLY WS_VARONE BY WS_VARTWO GIVING WS_SECMULTRES.
           *> the pointer from numa to
           MOVE WS_VARONE TO WS_MOVE.
           DISPLAY "WS-FIRSTMULTRES:"WS-FIRSTMULTRES.
           DISPLAY "WS_SECMULTRES:"WS_SECMULTRES.
           DISPLAY "WS_MOVE:"WS_MOVE.
           STOP RUN.
       END PROGRAM MULTIPLICATION.

5  REM *** BAGLES NUMBER GUESSING GAME
10 REM *** ORIGINAL SOURCE UNKNOWN BUT SUSPECTED TO BE LAWRENCE HALL
15 REM *** OF SCIENCE, U.C. BERKELEY.  MODIFIED FOR TIMESHARED-8
20 REM *** BY STUDENTS OF LEXINGTON HIGH SCHOOL, MA AND MODIFIED FOR
25 REM *** RSTS/E BY DAVE AHL OF DIGITAL 11/45 GROUP
30 DIM A1(6),A(3),B(3)
40 RANDOMIZE:Y=0:T=255
70 INPUT "GAME OF BAGLES.  WOULD YOU LIKE THE RULES (YES OR NO)";A$
90 IF A$="NO" THEN 150
100 PRINT:PRINT "I AM THINKING OF A THREE-DIGIT NUMBER. TRY TO GUESS"
110 PRINT "MY NUMBER AND I WILL GIVE YOU CLUES AS FOLLOWS:"
120 PRINT "   PICO   - ONE DIGIT CORRECT BUT IN THE WRONG POSITION"
130 PRINT "   FERMI  - ONE DIGIT CORRECT AND IN THE RIGHT POSITION"
140 PRINT "   BAGLES - NO DIGITS CORRECT"
150 FOR I=1 TO 3
160 A(I)=INT(10*RND)
170 FOR J=1 TO I-1
180 IF A(I)=A(J) THEN 160
190 NEXT J
200 NEXT I
210 PRINT:PRINT "O.K.  I HAVE A NUMBER IN MIND."
220 FOR I=1 TO 20
230 PRINT "GUESS #"I;
240 INPUT A$
250 CHANGE A$ TO A1
255 IF A1(0)<>3 THEN 630
260 FOR J=1 TO 3
270 IF A1(J)<48 THEN 300
280 IF A1(J)>57 THEN 300
285 B(J)=A1(J)-48
290 NEXT J
295 GOTO 320
300 PRINT "WHAT?"
310 GOTO 230
320 IF B(1)=B(2) THEN 650
330 IF B(2)=B(3) THEN 650
340 IF B(3)=B(1) THEN 650
350 C=0:D=0
360 FOR J=1 TO 2
370 IF A(J)<>B(J+1) THEN 390
380 C=C+1
390 IF A(J+1)<>B(J) THEN 410
400 C=C+1
410 NEXT J
420 IF A(1)<>B(3) THEN 440
430 C=C+1
440 IF A(3)<>B(1) THEN 460
450 C=C+1
460 FOR J=1 TO 3
470 IF A(J)<>B(J) THEN 490
480 D=D+1
490 NEXT J
500 IF D=3 THEN 680
520 FOR J=1 TO C
530 PRINT "PICO ";
540 NEXT J
550 FOR J=1 TO D
560 PRINT "FERMI ";
570 NEXT J
580 IF C+D<>0 THEN 600
590 PRINT "BAGLES",
600 PRINT
605 NEXT I
610 PRINT "OH WELL"
615 PRINT "THAT'S 20 GUESSES. MY NUMBER WAS "100*A(1)+10*A(2)+A(3)
620 GOTO 700
630 PRINT "TRY GUESSING A THREE-DIGIT NUMBER.":GOTO 230
650 PRINT "OH, I FORGOT TO TELL YOU THAT THE NUMBER I HAVE IN"
660 PRINT "MIND HAS NO TWO DIGITS THE SAME.":GOTO 230
680 PRINT "YOU GOT IT!!!":PRINT
690 Y=Y+1
700 INPUT "PLAY AGAIN (YES OR NO)";A$
720 IF A$="YES" THEN 150
730 IF Y=0 THEN 750
740 PRINT: PRINT "A"Y"-POINT BAGLES BUFF!!!"
750 PRINT "HOPE YOU HAD FUN.  BYE."
999 END
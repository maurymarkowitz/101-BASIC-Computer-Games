90 REM *** CONVERTED TO RSTS/E BY DAVID AHL, DIGITAL
100 REM HURKLE - PEOPLE'S COMPUTER COMPANY, MENLO PARK CA
105 RANDOM
110 N=5
120 G=10
210 PRINT
220 PRINT "A HURKLE IS HIDING ON A";G;"BY";G;"GRID. HOMEBASE"
230 PRINT "ON THE GRID IS POINT  0,0  AND ANY GRIDPOINT IS A"
240 PRINT "PAIR OF WHOLE NUMBERS SEPARATED BY A COMMA. TRY TO"
250 PRINT "GUESS THE HURKLE'S GRIDPOINT. YOU GET";N;"TRIES."
260 PRINT "AFTER EACH TRY, I WILL TELL YOU THE APPROXIMATE"
270 PRINT "DIRECTION TO GO TO LOOK FOR THE HURKLE."
280 PRINT
285 A=INT(G*RND(0))
286 B=INT(G*RND(0))
310 FOR K=1 TO N
320 PRINT "GUESS #";K;
330 INPUT X,Y
340 IF ABS(X-A)+ABS(Y-B)=0 THEN 500
350 REM PRINT INFO
360 GOSUB 610
370 PRINT
380 NEXT K
410 PRINT
420 PRINT "SORRY, THAT'S";N; "GUESSES."
430 PRINT "THE HURKLE IS AT ";A; ",";B
440 PRINT
450 PRINT "LET'S PLAY AGAIN. HURKLE IS HIDING."
460 PRINT
470 GO TO 285
500 REM
510 PRINT
520 PRINT "YOU FOUND HIM IN";K;"GUESSES!"
530 FOR I=1 TO 10\PRINT CHR$(7);\ NEXT I\PRINT
540 GO TO 440
610 PRINT "GO ";
620 IF Y=B THEN 670
630 IF Y<B THEN 660
640 PRINT "SOUTH";
650 GO TO 670
660 PRINT "NORTH";
670 IF X=A THEN 720 // Note: OCR read XA
680 IF X<A THEN 710 // Note: OCR read XA
690 PRINT "WEST";
700 GO TO 720
710 PRINT "EAST";
720 PRINT
730 RETURN
999 END
100 REM:  VALUES FOR 1973: SEE NOTES
110 '
120 FOR I=1 TO 6\ PRINT CHR$(10);\ NEXT I
130 D=-1:    '1973 STARTS ON MON.  [0=SUN.,-1=MON.,-2=TUE...]
140 S=0
150 REM: READ DAYS OF EACH MONTH
160 FOR N=0 TO 12 \ READ M(N) \ NEXT N
170 ''''''''
180 FOR I=1 TO 12
190 PRINT \ PRINT \ S=S+M(N-1)
200 PRINT "**";S;TAB(7);
210 FOR I=1 TO 18 \ PRINT "*"; \ NEXT I
220 ON N GOTO 230,240,250,260,270,280,290,300,310,320,330,340
230 PRINT " JANUARY "; \ GOTO 350
240 PRINT " FEBRUARY"; \ GOTO 350
250 PRINT "  MARCH  "; \ GOTO 350
260 PRINT "  APRIL  "; \ GOTO 350
270 PRINT "   MAY   "; \ GOTO 350
280 PRINT "   JUNE  "; \ GOTO 350
290 PRINT "   JULY  "; \ GOTO 350
300 PRINT "  AUGUST "; \ GOTO 350
310 PRINT "SEPTEMBER"; \ GOTO 350
320 PRINT " OCTOBER "; \ GOTO 350
330 PRINT " NOVEMBER"; \ GOTO 350
340 PRINT " DECEMBER";
350 FOR I=1 TO 18 \ PRINT "*"; \ NEXT I
360 PRINT 365-S;"**";
370 '    [366-S;     ON LEAP YEARS]
380 PRINT CHR$(10) \ PRINT "     S       M       T       W";
390 PRINT "       T       F       S
400 PRINT
410 FOR I=1 TO 59 \ PRINT "*"; \ NEXT I
420 ''''
430 FOR W=1 TO 6
440 PRINT CHR$(10)
450 PRINT TAB(4);
460 ''
470 FOR G=1 TO 7
480 D=D+1
490 D2=D-S
500 IF D2>M(N) THEN 580
510 IF D2>0 THEN PRINT D2;
520 PRINT TAB(4+8*G);
530 NEXT G
540 ''
550 IF D2=M(N) THEN 590
560 NEXT W
570 ''''
580 D=D-G
590 NEXT N
600 ''''''''
610 FOR I=1 TO 6\ PRINT CHR$(10):\ NEXT I
620 DATA 0,31,28,31,30,31,30,31,31,30,31,30,31
630 '   [0,31,29,  ..., ON LEAP YEARS]
640 END
100 PRINT\PRINT "REVERSE -- A GAME OF SKILL"\PRINT
120 RANDOMIZE
130 DIM A(20)
140 REM *** N=NUMBER OF NUMBERS
150 N=9
160 INPUT "DO YOU WANT THE RULES (YES OR NO)"; A$
170 IF A$="NO" THEN 210
190 GOSUB 710
200 REM *** MAKE A RANDOM LIST A(1) TO A(N)
210 A(1)=INT((N-1)*RND)+2
220 FOR K=2 TO N
230 A(K)=INT(N*RND)+1
240 FOR J=1 TO K-1
250 IF A(K)=A(J) THEN 230
260 NEXT J\NEXT K
280 REM *** PRINT ORIGINAL LIST AND START GAME
290 PRINT\PRINT "HERE WE GO ... THE LIST IS:"
310 T=0
320 GOSUB 610
330 INPUT "HOW MANY SHALL I REVERSE";R
350 IF R=0 THEN 520
360 IF R<=N THEN 390
370 PRINT "OOPS! TOO MANY - I CAN REVERSE AT MOST "N\GOTO 330
390 T=T+1
400 REM *** REVERSE R NUMBERS AND PRINT NEW LIST
410 FOR I=1 TO INT(R/2)
420 S=A(K)
430 A(K)=A(R-K+1)
440 A(R-K+1)=Z
450 NEXT K
460 GOSUB 610
470 REM *** CHECK FOR A WIN
480 FOR K=1 TO N
490 IF A(K)<>K THEN 330
500 NEXT K
510 PRINT "YOU WON IT IN "T" MOVES !!!"\PRINT
530 INPUT "TRY AGAIN (YES OR NO)";A$
550 IF A$="YES" THEN 210
560 PRINT\PRINT "O.K.   HOPE YOU HAD FUN!!"\GOTO 999
600 REM *** SUBROUTINE TO PRINT LIST
610 PRINT\FOR K=1 TO N\PRINT A(K);\NEXT K
650 PRINT\PRINT\RETURN
700 REM *** SUBROUTINE TO PRINT THE RULES
710 PRINT\PRINT "THIS IS THE GAME OF 'REVERSE'. TO WIN, ALL YOU HAVE"
720 PRINT "TO DO IS ARRANGE A LIST OF NUMBERS (1 THROUGH "N")"
730 PRINT "IN NUMERICAL ORDER FROM LEFT TO RIGHT. TO MOVE, YOU"
740 PRINT "TELL ME HOW MANY NUMBERS (COUNTING FROM THE LEFT) TO"
750 PRINT "REVERSE. FOR EXAMPLE, IF THE CURRENT LIST IS "
760 PRINT\PRINT "2 3 4 5 1 6 7 8 9"
770 PRINT\PRINT "AND YOU REVERSE 4, THE RESULT WILL BE:"
780 PRINT\PRINT "5 4 3 2 1 6 7 8 9"
790 PRINT\PRINT "NOW, IF YOU REVERSE 5, YOU WIN!"
800 PRINT\PRINT "1 2 3 4 5 6 7 8 9"\PRINT
810 PRINT "NO DOUBT YOU WILL LIKE THIS GAME OF SKILL, BUT"
820 PRINT "IF YOU WANT TO QUIT, REVERSE 0 (ZERO)."\PRINT\RETURN
999 END
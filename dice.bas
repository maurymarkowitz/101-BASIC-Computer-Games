10 DIM F (12)
20 REM DANNY FREIDUS
30 PRINT "THIS PROGRAM SIMULATES THE ROLLING OF A"
40 PRINT "PAIR OF DICE."
50 PRINT "YOU ENTER THE NUMBER OF TIMES YOU WANT THE COMPUTER"
60 PRINT "TO 'ROLL' THE DICE.  WATCH OUT, VERY LARGE NUMBERS TAKE"
70 PRINT "A LONG TIME. IN PARTICULAR, NUMBERS OVER 5000."
80 FOR Q=1 TO 12
90 F(Q)=0
100 NEXT Q
110 PRINT\PRINT "HOW MANY ROLLS";
120 INPUT X
130 FOR S=1 TO X
140 A=INT(6*RND+1)
150 B=INT(6*RND+1)
160 R=A+B
170 F(R)=F(R)+1
180 NEXT S
185 PRINT
190 PRINT "TOTAL SPOTS","NUMBER OF TIMES"
200 FOR V=2 TO 12
210 PRINT V,F(V)
220 NEXT V
222 PRINT\PRINT "TRY AGAIN";
223 INPUT Z$
224 IF Z$="YES" THEN 80
240 END
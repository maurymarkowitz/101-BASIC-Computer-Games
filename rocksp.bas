1 PRINT "THIS PROGRAM ALLOWS YOU TO PLAY THE OLD GAME OF"
2 PRINT "ROCKS, PAPER, AND SCISSORS AGAINST THE COMPUTER."
5 RANDOMIZE
6 INPUT "HOW MANY GAMES DO YOU WANT";Q
8 IF Q<1 THEN 11
9 PRINT "SORRY, BUT WE AREN'T ALLOWED TO PLAY THAT MANY."\GOTO 6
11 FOR G=1 TO Q
15 PRINT\PRINT "GAME NUMBER"G
20 X=INT(RND*3+1)
25 PRINT "3=ROCK...2=SISSORS...1=PAPER"
30 INPUT "1....2....3....WHAT'S YOUR CHOICE";K
32 IF (K-1)*(K-2)*(K-3)<>0 THEN PRINT "INVALID"\GOTO 25
35 PRINT "THIS IS MY CHOICE..."
40 ON X GOTO 50,60,70
50 PRINT "...PAPER"\GOTO 80
60 PRINT "...SCISSORS"\GOTO 80
70 PRINT "...ROCK"
80 IF X=K THEN 155
85 IF X>K THEN 125
90 IF X=1 THEN 105
95 PRINT "YOU WIN!!!"\H=H+1\GOTO 160
105 IF K=3 THEN 115 ELSE GOTO 95
115 PRINT "WOW!  I WIN!!"\C=C+1\GOTO 160
125 IF K<>1 THEN 115
140 IF X<>3 THEN 115 ELSE 95
155 PRINT "TIE GAME, NO WINNER."
160 NEXT G
170 PRINT\PRINT "HERE IS THE FINAL SCORE:"
175 PRINT "I HAVE WON"C"GAME(S)."
180 PRINT "YOU HAVE WON"H"GAME(S)"
195 PRINT "AND"G-(C+H)"GAME(S) ENDED IN A TIE."
190 PRINT\PRINT "THANKS FOR PLAYING!!"
200 END

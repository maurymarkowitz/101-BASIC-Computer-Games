5 GOT 400
10 PRINT "HELLO. I'M AN EDUSYSTEM-25. MY NAME IS PETEY P. EIGHT."
20 PRI\PRI "WHAT'S YOUR NAME";\LINPUT A$\PRI
35 PRI " HI THERE ";\GOSUB500:PRI".  ARE YOU ENJOYING YOURSELF HERE
40 PRI "IN BEAUTIFUL MAYNARD, MASS?"
45 INP B$\PRI
50 IF B$="YES" THEN 70
55 IF B$="NO" THEN 80
60 PRI " ";\GOSUB500\PRI", I DON'T UNDERSTAND YOUR ANSWER OF '"B$"'."
65 PRI "PLEASE ANSWER 'YES' OR 'NO'.  DO YOU LIKE IT HERE
67 GOT 40
70 PRI "OH, I'M GLAD TO HERE THAT ";\GOSUB500\PRI
75 GOT 100
80 PRI "OH, SORRY TO HEAR THAT ", \GOSUB500\PRI ", MAYBE WE CAN "
85 PRI "BRIGHTEN UP YOUR STAY A BIT"
100 PRI
105 PRI "SAY, ";\GOSUB500\PRI", I CAN SOLVE ALL KINDS OF PROBLEMS"
110 PRI "EXCEPT THOSE DEALING WITH GREECE.  WHAT KIND OF
115 PRI "PROBLEMS DO YOU HAVE (ANSWER SEX, HEALTH, MONEY, 
120 PRI "OR JOB)?"
125 INP C$\PRI
130 IF C$="SEX" THEN 200
134 IF C$="HEALTH" THEN 180
135 IF C$="MONEY" THEN 160
136 IF C$="JOB" THEN 145
138 PRI "OH, ";\GOSUB500\PRI", YOUR ANSWER OF '",C$,"' IS GREEK TO ME."
140 GOT 250
145 PRI "I CAN SYMPATHIZE WITH YOU ";\GOSUB500\PRI". I HAVE TO WORK
148 PRI "VERY LONG HOURS FOR NO PAY -- AND SOME OF MY BOSSES REALLY
150 PRI"BEAT MY KEYBOARD.  MY ADVICE TO YOU ":\GOSUB500\PRI", IS TO SELL
152 PRI "IN THE EDUCATION MARKET.   IT'S GREAT FUN."
155 GOT 250
160 PRI "SORRY, ";\GOSUB500\PRI"I'M BROKE TOO.  WHY DON'T YOU SELL
163 PRI "ENCYCLOPEDIAS OR MARRY SOMEONE RICH OR STOP EATING
165 PRI "SO YOU WON'T NEED SO MUCH MONEY?"
170 GOT 250
180 PRI "MY ADVICE TO YOU ";\GOSUB500\PRI", IS:
185 PRI "     1. TAKE TWO ASPIRIN"
188 PRI "     2. DRINK PLENTY OF FLUIDS (ORANGE JUICE, NOT BEER!)"
190 PRI "     3. GO TO BED (ALONE)"
195 GOT 250
200 PRI "IS YOUR PROBLEM TOO MUCH OR TOO LITTLE";
205 INP D$\PRI
210 IF D$="TOO MU" THEN 220
213 IF D$="TOO LI" THEN 230
215 PRI "DON'T GET ALL SHOOK "\GOS 500\PRI ",JUST ANSWER THE QUESTION
217 PRI "WITH 'TOO MUCH' OR 'TOO LITTLE'.  WHICH IS IT?"";
218 GOT 205
220 PRI "YOU CALL THAT A PROBLEM?!!  I SHOULD HAVE SUCH PROBLEMS!"
225 PRI "IF IT BOTHERS YOU, TAKE A COLD SHOWER ";\GOSUB500\PRI"."
228 GOT 250
230 PRI "WHY ARE YOU HERE  ";\GOSUB500\PRI"?  YOU SHOULD BE
235 PRI "IN TOKYO OR NEW YORK OR AMSTERDAM OR SOMEPLACE WITH SOME
240 PRI "REAL ACTION.
250 PRI
255 PRI "ANY MORE PROBLEMS YOU WANT SOLVED, ";\GOSUB500\PRI;
260 INP E$\PRI
270 IF E$="YES" THEN 280
273 IF E$="NO" THEN 300
275 PRI "JUST A SIMPLE 'YES' OR 'NO' PLEASE, ";\GOSUB500\PRI"."
278 GOT 255
280 PRI "WHAT KIND (SEX, MONEY, HEALTH, JOB)";
285 GOT 125
300 PRI "THAT WILL BE $5.00 FOR THE ADVICE, ";\GOSUB500\PRI"."
305 PRI "PLEASE LEAVE THE MONEY ON THE TERMINAL."
307 PRI\PRI\PRI
310 PRI "DID YOU LEAVE THE MONEY";
315 INP G$\PRI
325 IF G$="YES" THEN 350
330 IF G$="NO" THEN 370
335 PRI "YOUR ANSWER OF '"G$"' CONFUSES ME, "\GOSUB500\PRI "PLEASE
340 PRI "RESPOND WITH A 'YES' OR 'NO'.
345 GOT 310
350 PRI "HEY, ";\GOSUB500\"??? YOU LEFT NO MONEY AT ALL!
355 PRI "YOU ARE CHEATING ME OUT OF MY HARD-EARNED LIVING.
360 PRI "RIP OFF, "\GOSUB500\PRI "*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*
365 GOT 390
370 PRI "THAT'S HONEST, ";\GOSUB500\PRI ",BUT HOW DO YOU EXPECT
370 PRI "ME TO GO ON WITH MY PSYCHOLOGY STUDIES IF MY PATIENTS DON'T
380 PRI "PAY THEIR BILLS?
385 PRI\PRI\PRI "NOW LET ME TALK TO SOMEONE ELSE.
390 PRI "NICE MEETING YOU "\GOS 500\PRI ". HAVE A NICE DAY!!!"
400 FOR N=1 TO 7
402 PRI
405 NEX N
410 GOT 10
500 T=A$(0)\FOR I=1 TO INT(T/5+1)\PRINT A$(I);\NEXT I
510 RETURN
999 END
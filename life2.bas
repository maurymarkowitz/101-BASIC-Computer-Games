1 DIMN1(6,6),K1(18),A1(16),X(2),Y(2)
3 DATA 3,102,103,120,130,121,112,111,12
4 DATA 21,30,1020,1030,1011,1021,1003,1002,1012
10 FORM=1TO18:READK1(M):NEXTM
13 DATA -1,0,1,0,-1,-1,0,-1,1,-1,-1,1,0,1,1,1
14 FORO1=1TO16:READA1(O1):NEXTO1
20 GOTO500
50 FOR J=1TO5
51 FOR K=1TO5
55 IFN1(J,K)>99THENGOSUB200
60 NEXTK
65 NEXTJ
90 LETK=0:LETM2=0:LETM3=0
99 FOR J=0TO6:PRINT
100 FOR K=0TO6
101 IFJ<>0THENIFJ<>6THEN105
102 IFK=6THENPRINT0;:GOTO125
103 PRINTK;:GOTO120
105 IFK<>0THENIFK<>6THEN110
106 IFJ=6THENPRINT0;:GOTO126
107 PRINTJ;:GOTO120
110 GOSUB300
120 NEXTK
125 NEXTJ
126 RETURN
200 LETB=1:IFN1(J,K)>999THENLETB=10
220 FORO1=1TO15STEP2
230 LETN1(J+A1(O1),K+A1(O1+1))=N1(J+A1(O1),K+A1(O1+1))+B
231 NEXTO1
239 RETURN
300 IFN1(J,K)<3THEN399
305 FORO1=1TO18
310 IFN1(J,K)=K1(O1)THEN350
315 NEXTO1
320 GOTO399
350 IFO1>9THEN360
351 LETN1(J,K)=100:LETM2=M2+1:PRINT" * ";
355 RETURN
360 LETN1(J,K)=1000:LETM3=M3+1:PRINT" # ";
365 RETURN
399 LETN1(J,K)=0:PRINT"   ";:RETURN
500 PRINTTAB(10);"U.B. LIFE GAME"
505 LETM2=0:LETM3=0
510 FORJ=1T05
511 FORK=1T05
515 LETN1(J,K)=0
516 NEXTK
517 NEXTJ
519 FORB=1T02:LETP1=3:IFB=2THENLET P1=30
520 PRINT"PLAYER";B;"3 LIVE PIECES"
535 FORK1=1T03:GOSUB700
540 LETN1(X(B),Y(B))=P1:NEXTK1
542 NEXTB
559 GOSUB90
560 PRINT:GOSUB50
570 IFM2=0THENIFM3=0THEN574
571 IFM3=0THENLETB=1:GOTO575
572 IFM2=0THENLETB=2:GOTO575
573 GOTO580
574 PRINT:PRINT"A DRAW";RUN
575 PRINT:PRINT"PLAYER";B;" IS THE WINNER";RUN
580 FORB=1T02:PRINT:PRINT"PLAYER";B;:GOSUB700
581 IFB=99THEN560
582 NEXTB
586 LETN1(X(1),Y(1))=100:LETN1(X(2),Y(2))=1000
596 GOTO 560
700 PRINT"X,Y";:PRINT"XXXX";CHR$(13);"@@@@";CHR$(13);INPUTY(B),X(B)
705 IFX(B)<=5THENIFX(B)>0THEN708
706 GOTO750
708 IFY(B)<=5THENIFY(B)>0THEN715
710 GOTO750
715 IFN1(X(B),Y(B))<>0THEN750
720 IFB=1THEN RETURN
725 IFX(1)=X(2)THENIFY(1)=Y(2)THEN740
730 RETURN
740 PRINT"SAME COORD. SET TO 0"
741 LETN1(X(B)+1,Y(B)+1)=0:LETB=99:RETURN
750 PRINT"ILLEGAL COORDS. RETYPE":GOTO700
900 END
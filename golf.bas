100RANDOMIZE
110DIMX(20)
120PRINT"DO YOU WANT DIRECTIONS Y FOR YES N FOR ";
130INPUTZ$\PRINT
140IFZ$="Y"THEN160
150IFZ$="N"THEN290
160PRINT"DIRECTIONS FOR GOLF"
170PRINT
180PRINT"YOU HAVE A CHOICE OF 9 CLUBS"
190PRINT"WHEN THE COMPUTER TELLS YOU TO CHOSE YOUR CLUB"
200PRINT"INPUT 1 FOR A DRIVER  RANGE OF 150 TO 270 YARDS"
210PRINT"INPUT 2 FOR A 3 WOOD  RANGE OF 150 TO 220 YARDS"
220PRINT"INPUT 3 FOR A 5 IRON  RANGE OF 140 TO 180 YARDS"
230PRINT"INPUT 4 FOR A 6 IRON  RANGE OF 120 TO 180 YARDS  GOOD FROM ROUGH"
240PRINT"INPUT 5 FOR A 7 IRON  RANGE OF 100 TO 130 YARDS  GOOD FROM ROUGH"
250PRINT"INPUT 6 FOR A 8 IRON  RANGE OF  70 TO 100 YARDS  GOOD FROM TRAP"
260PRINT"INPUT 7 FOR A 9 IRON  RANGE OF  30 TO  70 YARDS  GOOD FROM TRAP"
270PRINT"INPUT 8 FOR A WEDGE   RANGE UP TO  30 YARDS      GOOD FROM TRAP"
280PRINT"INPUT 9 FOR A PUTTER  USE WHEN ON GREEN"
290PRINT
300PRINT"HOW MANY PLAYERS ARE PLAYING TODAY";\INPUTU\PRINT
310IFU<=4THEN340
320PRINT"ONLY FOUR ARE ALLOWED TO PLAY AT ONE TIME"
330GOTO300
340PRINT
350DATA360,4,585,5,400,4,185,3,415,4,375,4,219,3
360DATA395,4,630,5,330,4,610,5,440,4,180,3,420,4,595,5,195,3
370DATA450,4,370,4
380DIMR(18)
390DIMP(18)
400FORR=1TO18
410READR(R)\READP(R)
420NEXTR
430DIM M(4,18)
440DIMN(18)
450PRINT"HOW MANY HOLES UP TO 18 DO YOU WANT TO PLAY";\INPUTV
460PRINT
470FORJ=1TO V
480FOR Q=1TO U
490LETH$=R(J)
500PRINT"HOLE NUMBER",J;"IS";H;"YARDS PAR";P(J)
510LETK=0
520LETT=0
530LET T2=0
540PRINT"PLAYER NUMBER";Q;"CHOSE YOUR CLUB"
550INPUT X
560IFX=9THEN880
570LETK=K+1
580IF X=9 THEN 930
590GOTO1340
600 IFX=9THEN970
610LETD=X
620IFH<>X(D)THEN630\IFK<>1THEN990\PRINT"HOLE IN ONE!!!"\GOTO990
630PRINT"DISTANCE OF SHOT IS";X(D);"YARDS"
640LETL=INT(RND(X)*100)
650IFL=99THEN670\IFL=43THEN670\IFL=88THEN670
660IFL<>25THEN760
670PRINT"IN TRAP"\LETC=ABS(H-X(D))\GOTO680
680LETL8=INT(RND(X)*10)
690IFL8>3THEN680\IFL8=1THEN850
700LETT2=0
710FORZ=1TOL8
720LETT2=T2+1
730PRINT"CHOSE YOUR CLUB"\INPUTX
740PRINT"STILL IN TRAP"\NEXTZ
750GOTO850
760IFL=13THEN780\IFL=88THEN780
770IFL<>25THEN800
780PRINT"IN ROUGH"\LETC=ABS(H-X(D))\GOTO850
790IFL=69THEN810\IFL=73THEN810\IFL=41THEN810
800IFL<>75THEN 820
810PRINT"IN WATER"\LETT=T+1\PRINT"YOU LOSE 1 STROKE"\LETC=ABS(H-X(D))
820GOTO850
830LETC=ABS(H-X(D))
840IFC<30THEN930
850PRINT"DISTANCE REMAINING TO PIN IS";C;"YARDS"
860LETH=C
870GOTO540
880LETC=A(J)
890IFC>30THEN910
900GOTO970
910PRINT"YOU ARE NOT ON THE GREEN  CHOSE ANOTHER CLUB"
920GOTO550
930PRINT"PLAYER NUMBER";Q;"IS ON THE GREEN CHOSE YOUR CLUB"
940INPUTX
950LETD=X
960GOTO590
970PRINT X(D) "PUTTS"
980LETM(Q,J)=K+X(9)+T+T2\GOTO1000
990LETM(Q,J)=K\PRINT"YOU SUNK THE SHOT"
1000PRINTM(A,J)"STROKES FOR HOLE NUMBER";J;"FOR PLAYER";Q
1010NEXTQ\PRINT\PRINT
1020NEXT J
1030FORW=1TOV
1040LETN(1)=M(1,W)+N(1)
1050LETN(2)=M(2,W)+N(2)
1060LETN(3)=M(3,W)+N(3)
1070LETN(4)=M(4,W)+N(4)
1080LET E= P(W)+E
1090NEXTW
1100FORS=1TOU
1110PRINT"PLAYER NUMBER";S;"SHOT";N(S);"FOR";V;"HOLES PAR IS";E
1120NEXT S
1130GOTO1440
1140LETX(2)=INT(130+RND(X)+150)
1150GOTO600
1160LETX(1)=INT(90+RND(X)+180)
1170GOTO600
1180LETX(3)=INT(40+RND(X)+140)
1190GOTO600
1200LETX(4)=INT(60+RND(X)+120)
1210GOTO600
1220LETX(5)=INT(30+RND(X)+100)
1230GOTO600
1240LETX(6)=INT(30+RND(X)+70)
1250GOTO600
1260LETX(7)=INT(40+RND(X)+30)
1270GOTO600
1280LETX(8)=INT(30+RND(X)+1)
1290IFX(8)<1THEN1280
1300GOTO600
1310LETX(9)=INT(3*RND(X)+1)
1320GOTO600
1330STOP
1340IFX=1THEN1160
1350IFX=2THEN1140
1360IFX=3THEN1180
1370IFX=4THEN1200
1380IFX=5THEN1220
1390IFX=6THEN1240
1400IFX=7THEN1260
1410IFX=8THEN1280
1420IFX=9THEN1310
1430GOTO600
1440END
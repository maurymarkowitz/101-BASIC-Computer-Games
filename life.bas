1 REM LIFE CLARK BAKER 3/72 C.O.G.
2 PRINT CHR$(31%);CHR$(29%);CHR$(31%);"ENTER YOUR PATTERN"
3 X1%=Y1%=1: X2%=24X: Y2%=70%
10 DIM A%(24%,70%),BS(24%)
20 OPEN "KB1" AS FILE 1
30 ON ERROR GO TO 80
40 C%=1
50 INPUT LINE #1,B$(C%):B$(C%)=LEFT(B$(C%),LEN(B$(C%))=2%)
60 CX=CX+1
70 GO TO 50
80 LX=0X
90 FOR XX=1 TO CX=1
100 IF LEN(BS(XX))>LX THEN LX=LEN(BS(XX))
110 NEXT XX
120 X1X=11X=CX/2X
130 Y1X=33X=LX/2X
140 FOR XX=1 TO CX
150 FOR YX=1 TO LEN(BS(XX))
160 IF MID(BS(XX),YX,1)<>" " THEN AX(X1X+XX,Y1X+YX)=1:PX=PX+1
170 NEXT YX
180 NEXT XX
200 PRINT CHR$(29X);CHR$(30X)
210 PRINT "GENERATION";GX;"POPULATION";PX;CHR$(30X);IF I9X THEN PRINT "INVALID"
215 X3X=24X:Y3X=70X:X4X=Y4X=1:PX=0X
220 GX=GX+1X
225 PRINT CHR$(13X);CHR$(10X);CHR$(30X); FOR XX=1 TO X1X-1
230 FOR XX=X1X TO X2X
240 PRINT
250 FOR YX=Y1X TO Y2X
253 IF AX(XX,YX)=2X THEN AX(XX,YX)=0X:GO TO 270
256 IF AX(XX,YX)=3X THEN AX(XX,YX)=1:GO TO 261
260 IF AX(XX,YX)<>1 THEN 270

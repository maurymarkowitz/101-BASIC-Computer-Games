1 ! MONOPOLY GAME BY DAVID BARKER, SOUTHEASTERN STATE COLLEGE, DURANT, OK
2 ! SLIGHT PROGRAM MODIFICATIONS BY DAVID AHL, DIGITAL
3 M(1),M(2)=1500%: I(1),I(2)=0: DIM A$(25),B$(25),H%(40)
7 OPEN "PRPRTY" AS FILE 1: DIM #1,G$(40%)=25,L%(40),P%(40%),H%(40%)
8 FOR I=1 TO 39:L%(I),H%(I)=0:NEXT I:FOR I=1 TO 8:U(I)=0:NEXT I
9 DEF FNR=(H%(I(Z))*R(I(Z))*10%)
10 OPEN "MESAJ" AS FILE 3: DIM #3,C$(10)=50%,Z$(10)=50%,M$(20)=50%
15 & M$(1):&:&:& "**RULES**":&M$(2):&M$(3):&M$(4):&M$(5)
30 INPUT"WHO IS PLAYER #1";N$(1): INPUT"WHO IS PLAYER #2";N$(2)
100 PRINT: PRINT "**"N$(1)";S TURN**********":          F=0
102 Z=1%: GOSUB 1000: GOSUB 2000
115 IF D=D1 THEN F=F+1: IF F<3 THEN PRINT M$(9): GOTO 102
117 IF F=3 THEN PRINT M$(10): I(Z)=10: M(Z)=M(Z)-50%
200 PRINT: PRINT "**"NS(2)"'S TURN**********":          F=0
202 Z=2%: GOSUB 1000: GOSUB 2000
215 IF D=D1 THEN F=F+1: IF F<3 THEN PRINT M$(9): GOTO 202
217 IF F=3 THEN PRINT M$(10): I(Z)=10: M(Z)=M(Z)-50%
225 PRINT M$(11);:INPUT F$: IF F$="QUIT" THEN 30000 ELSE 100
1000 PRINT M$(6);:INPUT F$! RANDOMIZE: X=RND(0): Y=RND(0) !DICE ROLL
1002 IF X>=0 AND X<=.16 THEN D=1
1003 IF X>.16 AND X<=.32 THEN D=2
1004 IF X>.32 AND X<=.48 THEN D=3
1005 IF X>.48 AND X<=.64 THEN D=4
1006 IF X>.64 AND X<=.81 THEN D=5
1007 IF X>.81 AND X<=1 THEN D=6
1009 IF Y>=0 AND Y<=.16 THEN D1=1
1010 IF Y>.16 AND Y<=.32 THEN D1=2
1011 IF Y>.32 AND Y<=.48 THEN D1=3
1012 IF Y>.48 AND Y<=.64 THEN D1=4
1013 IF Y>.64 AND Y<=.81 THEN D1=5
1014 IF Y>.81 AND Y<=1 THEN D1=6
1015 PRINT "YOU ROLLED A"D"AND A"D1:I(Z)=I(Z)+(D+D1)
1016 IF I(Z)>40% THEN I(Z)=I(Z)-40%:M(Z)=M(Z)-200%
1017 RETURN
2000 PRINT"YOU ARE ON ";G$(I(Z))   !PLACEMENT
2002 IF I(Z)=2 OR I(Z)=17 OR I(Z)=33 THEN 4100 !COM CHEST
2004 IF I(Z)=4 THEN M(Z)=M(Z)-200% :RETURN !INC TAX
2006 IF I(Z)=7 OR I(Z)=22 OR I(Z)=36 THEN 4400 !CHANCE
2008 IF I(Z)=10 OR I(Z)=20 THEN RETURN !VISIT IN JAIL&FREE PARKING
2010 IF I(Z)=30 THEN M(Z)=M(Z)-50%: I(Z)=10! RETURN !JAIL
2011 IF I(Z)=38 THEN M(Z)=M(Z)-75% !RETURN !LUX TAX
2012 IF I(Z)=40 THEN M(Z)=M(Z)+200%! I(Z)=0: RETURN !GO
2018 IF L%(I(Z))=Z THEN PRINT M$(12): GOTO 3100
2019 IF (H%(I(Z))=0 AND L%(I(Z))>0 AND L%(I(Z))<>Z) THEN 2125
2020 IF (H%(I(Z))>0 AND L%(I(Z))>0 AND L%(I(Z))<>Z) THEN 2100
2022 PRINT M$(7);P(I(Z));"DOLLARS"
2024 PRINT M$(8);:INPUT F$: IF F$<>"BUY" THEN 3100
2026M(Z)=M(Z)-P(I(Z)): PRINT "YOU NOW HAVE"M(Z)"DOLLARS
2027 L%(I(Z))=Z:GOTO 3100
2100 IF Z=1 THEN M(Z)=M(Z)-FNR: M(2)=M(2)+FNR
2101 PRINT "YOU OWE"FNR"DOLLARS RENT":RETURN
2102 IF Z=2 THEN M(Z)=M(Z)-FNR: M(1)=M(1)+FNR
2103 PRINT "YOU OWE"FNR"DOLLARS RENT": RETURN
2125 IF Z=1 THEN M(Z)=M(Z)-R(I(Z)): M(2)=M(2)+R(I(Z))
2126 PRINT "YOU OWE"R(I(Z))"DOLLARS RENT":RETURN
2127 IF Z=2 THEN M(Z)=M(Z)-R(I(Z)): M(1)=M(1)+R(I(Z)
2128 PRINT "YOU OWE"R(I(Z)"DOLLARS RENT":RETURN
3100 PRINT M$(13): PRINT M$(14);:INPUT F$: IF F$="SELL" THEN GOSUB 3150
3105 PRINT M$(19);:INPUT H$: IF H$="HOUSE" THEN 3200 ELSE RETURN
3150 PRINT M$(15);:INPUT F$: IF F$="LIST" THEN GOSUB 3170
3152 PRINT M$(17);:INPUT V$: INPUT "HOW MUCH DO YOU WANT FOR IT";V
3154 FOR I=1 TO 39
3156 IF V$=G$(I) THEN IF L%(I)=0 THEN PRINT M$(16): RETURN
3158 IF V$=G$(I) THEN IF L%(I)=1 THEN M(1)=M(1)+V
        :M(2)=M(2)-V: L%(I)=2: GOTO 3165
3160 IF V$=G$(I) THEN IF L%(I)=2 THEN M(2)=M(2)+V
        :M(1)=M(1)-V: L%(I)=1: GOTO 3165
3162 NEXT I
3165 PRINT M$(18);:INPUT F$: IF F$="YES" THEN 3152 ELSE RETURN
3170 C,D:=0: FOR I=1 TO 39
3172 IF L%(I)=1 THEN C=C+1: A$(C)=G$(I)
3174 IF L%(I)=2 THEN D=D+1: B$(D)=G$(I)
3175 NEXT I
3176 PRINT N$(1)"'S PROPERTY": FOR I=1 TO C: PRINT A$(I): NEXT I
3178 PRINT N$(2)"'S PROPERTY": FOR I=1 TO D: PRINT B$(I): NEXT I:RETURN
3200 IF L%(1)=Z AND L%(3)=Z THEN &"HOW MANY HOUSES AT $50 EACH DO YOU WANT ON"
        :PRINT G$(1)" "G$(3);:INPUT U:GOSUB 3250
3202 IF L%(6)=Z AND L%(8)=Z AND L%(9)=Z THEN
        PRINT "HOW MANY HOUSES AT $50 EACH DO YOU WANT ON"
        :PRINT G$(6)" "G$(8)" "G$(9);:INPUT U:GOSUB 3252
3204 IF L%(11)=Z AND L%(13)=Z AND L%(14)=Z THEN
        PRINT "HOW MANY HOUSES AT $100 EACH DO YOU WANT ON"
        :PRINT G$(11)" "G$(13)" "G$(14);:INPUT U:GOSUB 3254
3206 IF L%(16)=Z AND L%(18)=Z AND L%(19)=Z THEN
        PRINT "HOW MANY HOUSES AT $100 EACH DO YOU WANT ON"
        :PRINT G$(16)" "G$(18)" "G$(19);:INPUT U:GOSUB 3256
3208 IF L%(21)=Z AND L%(23)=Z AND L%(24)=Z THEN
        PRINT "HOW MANY HOUSES AT $150 EACH DO YOU WANT ON"
        :PRINT G$(21)" "G$(23)" "G$(24);:INPUT U:GOSUB 3258
3210 IF L%(26)=Z AND L%(27)=Z AND L%(29)=Z THEN
        PRINT "HOW MANY HOUSES AT $150 EACH DO YOU WANT ON"
        :PRINT G$(26)" "G$(27)" "G$(29);:INPUT U:GOSUB 3260
3212 IF L%(31)=Z AND L%(32)=Z AND L%(34)=Z THEN
        PRINT "HOW MANY HOUSES AT $200 EACH DO YOU WANT ON"
        :PRINT G$(31)" "G$(32)" "G$(34);:INPUT U: OSUB 3262
3214 IF L%(37)=Z AND L%(39)=Z THEN
        PRINT "HOW MANY HOUSES AT $200 EACH DO YOU WANT ON"
        :PRINT G$(37)" "G$(39);:INPUT U:GOSUB 3264
3220 RETURN
3250 U(1)=U(1)+U: M(Z)=M(Z)-(U*100%): IF M(Z)<0 THEN PRINT M$(20)
        :M(Z)=M(Z)+(U*100%): U(1)=U(1)-U: RETURN
3251 H%(1),H%(3)=U(1): RETURN
3252 U(2)=U(2)+U: M(Z)=M(Z)-(U*150%): IF M(Z)<0 THEN PRINT M$(20)
        :M(Z)=M(Z)+(U*150%): U(2)=U(2)-U: RETURN
3253 H%(6),H%(8),H%(9)=U(2): RETURN
3254 U(3)=U(3)+U: M(Z)=M(Z)-(U*150%): IF M(Z)<0 THEN PRINT M$(20)
        :M(Z)=M(Z)+(U*150%): U(3)=U(3)-U: RETURN
3255 H%(11),H%(13),H%(14)=U(3): RETURN
3256 U(4)=U(4)+U: M(Z)=M(Z)-(U*300%): IF M(Z)<0 THEN PRINT M$(20)
        :M(Z)=M(Z)+(U*300%): U(4)=U(4)-U: RETURN
3257 H%(16),H%(18),H%(19)=U(4): RETURN
3258 U(5)=U(5)+U: M(Z)=M(Z)-(U*450%): IF M(Z)<0 THEN PRINT M$(20)
        :M(Z)=M(Z)+(U*450%): U(5)=U(5)-U: RETURN
3259 H%(21),H%(23),H%(24)=U(5): RETURN
3260 U(6)=U(6)+U: M(Z)=M(Z)-(U*450%): IF M(Z)<0 THEN PRINT M$(20)
        :M(Z)=M(Z)+(U*450%): U(6)=U(6)-U: RETURN
3261 H%(26),H%(27),H%(29)=U(6): RETURN
3262 U(7)=U(7)+U: M(Z)=M(Z)-(U*600%): IF M(Z)<0 THEN PRINT M$(20)
        :M(Z)=M(Z)+(U*600%): U(7)=U(7)-U: RETURN
3263 H%(31),H%(32),H%(34)=U(7): RETURN
3264 U(8)=U(8)+U: M(Z)=M(Z)-(U*400%): IF M(Z)<0 THEN PRINT M$(20)
        :M(Z)=M(Z)+(U*400%): U(8)=U(8)-U: RETURN
3265 H%(37),H%(39)=U(8): RETURN
4100 RANDOMIZE: L=RND(0) !COMMUNITY CHEST
4102 IF L>=0 AND L<=.1 THEN PRINT Z$(1): M(Z)=M(Z)+100%: RETURN
4104 IF L>.1 AND L<=.2 THEN PRINT Z$(2): M(Z)=M(Z)+100%: RETURN
4106 IF L>.2 AND L<=.3 THEN PRINT Z$(3): M(Z)=M(Z)+20%: RETURN
4108 IF L>.3 AND L<=.4 THEN PRINT Z$(4): M(Z)=M(Z)+50%: RETURN
4110 IF L>.4 AND L<=.5 THEN PRINT Z$(5): M(Z)=M(Z)+100%: RETURN
4112 IF L>.5 AND L<=.6 THEN PRINT Z$(6): M(Z)=M(Z)+200%: I(Z)=0: RETURN
4114 IF L>.6 AND L<=.7 THEN PRINT Z$(7): M(Z)=M(Z)+100%: RETURN
4116 IF L>.7 AND L<=.8 THEN PRINT Z$(8): M(Z)=M(Z)+50%: I(Z)=10: RETURN
4118 IF L>.8 AND L<=.9 THEN PRINT Z$(9): M(Z)=M(Z)+50%: RETURN
4120 IF L>.9 AND L<=1 THEN PRINT Z$(10): M(Z)=M(Z)+200%: RETURN
4400 RANDOMIZE: L=RND(0) !CHANCE
4402 IF L>=0 AND L<=.1 THEN PRINT C$(1): M(Z)=M(Z)+15%: RETURN
4404 IF L>.1 AND L<=.2 THEN PRINT C$(2): I(Z)=24: GOSUB 2000: RETURN
4406 IF L>.2 AND L<=.3 THEN PRINT C$(3): I(Z)=I(Z)+3: GOSUB 2000: RETURN
4408 IF L>.3 AND L<=.4 THEN PRINT C$(4): I(Z)=0: M(Z)=M(Z)+200%: RETURN
4410 IF L>.4 AND L<=.5 THEN PRINT C$(5): M(Z)=M(Z)+50%: RETURN
4412 IF L>.5 AND L<=.6 THEN PRINT C$(6): I(Z)=5
        :M(Z)=M(Z)+200%: GOSUB 2000: RETURN
4414 IF L>.6 AND L<=.7 THEN PRINT C$(7): I(Z)=10: M(Z)=M(Z)+50%: RETURN
4416 IF L>.7 AND L<=.8 THEN PRINT C$(8): M(Z)=M(Z)+150%: RETURN
4418 IF L>.8 AND L<=.9 THEN PRINT C$(9): I(Z)=39: GOSUB 2000: RETURN
4420 IF L>.9 AND L<=1 THEN PRINT C$(10): I(Z)=11: GOSUB 2000: RETURN
30000 C,D=0
30002 FOR I=1 TO 39
30004 IF L%(I)=1 THEN C=C+1:A$(C)=G$(I)
30006 IF L%(I)=2 THEN D=D+1:B$(D)=G$(I)
30008 NEXT I:PRINT:PRINT
30009 PRINT N$(1)" OWNED THE FOLLOWING PROPERTY"
        :FOR I=1 TO C:PRINT A$(I):NEXT I
30010 PRINT "AND HAD";M(1);"DOLLARS AT THE END OF THE GAME"
30011 PRINT N$(2)" OWNED THE FOLLOWING PROPERTY"
        :FOR I=1 TO D:PRINT B$(I):NEXT I
30012 PRINT "AND HAD";M(2);"DOLLARS AT THE END OF THE GAME"
30013 CLOSE 1,3:END
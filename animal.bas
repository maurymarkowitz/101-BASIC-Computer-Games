100 &"PLAY 'GUESS THE ANIMAL' WITH RSTS
150 &"THINK OF AN ANIMAL AND THE COMPUTER WILL TRY TO GUESS IT...":&
500 DIM A$(200)
525 F$="ANIMAL.GME"
        :ON ERROR GOTO 700
550 OPEN F$ FOR INPUT AS FILE 1%
        :INPUT #1%,N%
        :INPUT #1%,A$(I%) FOR I%=1%TO N%
        :CLOSE 1%
        :A$(0%)=NUM$(N%)
        :ON ERROR GOTO 0
        :GOTO 1300
700 ON ERROR GOTO 1050
        :F$="$"+F$
        :RESUME 550
1050 READ A$(I%) FOR I%=0% TO 3%
1100 DATA "4","\QDOES IT SWIM\Y2\N3\","\AFISH","\ABIRD"
1300 INPUT "ARE YOU THINKING OF AN ANIMAL" ;Z9$
        :GOTO 1350 IF LEFT$(Z9$,1%)="Y"
        :GOTO 1300 IF LEFT$(Z9$,1%)="N"
1310 IF Z9$="SAVE" THEN
                OPEN "ANIMAL.GME" FOR OUTPUT AS FILE 1%
                :PRINT #1%,A$(I%) FOR I%=0% TO VAL(A$(0%))
                :PRINT #1%,CHR$(26%)
                :CLOSE 1%
                :GOTO 1300
1320 IF Z9$="LIST" THEN
        PRINT "ANIMALS I ALREADY KNOW ARE:"
        :PRINT RIGHT$(A$(I%),3%), IF INSTR(1%,A$(I%),"\A") FOR I%=1% TO 200%
        :PRINT
        :GOTO 1300
1350 K%=1%
1400 K%=FNAN%(A$(K%))
        :GOTO 3000 IF LEN(A$(K%))=0%
        :GOTO 1400 IF LEFT$(A$(K%),2%)="\Q"
        :PRINT "IS IT A "RIGHT$(A$(K%),3%);
        :INPUT Z7$
        :Z7$=LEFT$(Z7$,1%)
1450 IF Z7$="Y" THEN
         PRINT "WHY NOT TRY ANOTHER ANIMAL"
        :GOTO 1300
2000 INPUT "THE ANIMAL YOU WERE THINKING OF WAS A ";Z9$
2050 PRINT "PLEASE TYPE IN A QUESTION THAT WOULD DISTINGUISH A "
        Z9$;" FROM A "RIGHT$(A$(K%),3%)
        :INPUT Z8$
2100 PRINT "FOR A ";Z9$;" THE ANSWER WOULD BE";
        :INPUT Z7$
        :Z7$=LEFT$(Z7$,1%)
        :IF Z7$="Y" THEN Z6$="N"
                ELSE IF Z7$="N" THEN Z6$="Y"
                ELSE PRINT "PLEASE ANSWER 'YES' OR 'NO'"
                :GOTO 2100
2200 Z1%=VAL(A$(0%))
        :A$(0%)=NUM$(Z1%+2%)
        :A$(Z1%)=A$(K%)
        :A$(Z1%+1%)=Z9$
        :A$(K%)="\Q"+Z8$+"\"+Z7$+NUM$(Z1%+1%)+"\"+Z6$+NUM$(Z1%)+"\"
12400 GOTO 1300
3000 DEF FNAN%(Q$)
        :PRINT MID$(Q$,3%,INSTR(3%,Q$,"\")-3%);
        :INPUT Z9$
        :Z9$=LEFT$(Z9$,1%)
        :Z9$="N" IF Z9$<>"Y"
        :Z1%=INSTR(3%,Q$,"\"+Z9$)+2%
        :Z2%=INSTR(Z1%,Q$,"\")
        :FNAN%=VAL(MID$(Q$,Z1%,Z2%-Z1%))
        :FNEND
9999 END
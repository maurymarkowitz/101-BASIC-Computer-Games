1 REM JIM STORER
2 PRINT "HOW MANY TIMES HAVE YOU PLAYED";
3 INPUT Z
5 LET N5=8
6 RANDOMIZE
12 IF Z=500 THEN 47
14 IF Z=1000 THEN 1960
17 FOR Y1=1 TO 10
18 PRINT
19 NEXT Y1
20 PRINT "CONGRATULATIONS! YOU'VE BEEN ELECTED PREMIER OF SETATS DETINU,"
22 PRINT "A SMALL COMMUNIST ISLAND 30 BY 70 MILES LONG. YOUR JOB IS TO"
24 PRINT "DECIDE UPON THE COUNTRY'S BUDGET AND DISTRIBUTE MONEY TO YOUR"
26 PRINT "COUNTRYMEN FROM THE COMMUNAL TREASURY.";
27 IF Z<>0 THEN 47
28 PRINT " THE MONEY SYSTEM IS RALLODS."
30 PRINT "AND EACH PERSON NEEDS 100 RALLODS PER YEAR TO SURVIVE."
32 PRINT "YOUR COUNTRY'S INCOME COMES FROM FARM PRODUCE AND TOURISTS"
34 PRINT "VISITING YOUR MAGNIFICIENT FORESTS, HUNTING, FISHING, ETC. HALF"
36 PRINT "YOUR LAND IS FARM LAND WHICH ALSO HAS AN EXCELLENT MINERAL"
38 PRINT "CONTENT AND MAY BE SOLD TO FOREIGN INDUSTRY (STRIP MINING)"
39 PRINT "WHO IMPORT AND SUPPORT THEIR OWN WORKERS. CROPS COST BETWEEN"
40 PRINT "10 AND 15 RALLODS PER SQ. MILE TO PLANT."
42 PRINT "YOUR GOAL IS TO COMPLETE YOUR ";N5;"YEAR TERM OF OFFICE.";
44 PRINT " GOOD LUCK!"
47 FOR Y1=1 TO 4
48 PRINT
49 NEXT Y1
50 LET A=INT(64000 + (RND(1) * 1000) - (RND(1) * 1000)
55 LET B=INT(500 + (RND(1) * 10) - (RND(1) * 10))
65 LET D=2000
100 LET W=INT(RND(1) * 10 + 95)
101 FOR Y1=1 TO 8
102 PRINT
103 NEXT Y1
105 PRINT "YOU NOW HAVE";A;"RALLODS IN THE TREASURY."
110 PRINT INT(B); " COUNTRYMEN,";
115 LET V9=INT(((RND(1) / 2)*10+10))
120 IF C=0 THEN 140
130 PRINT INT(C);"FOREIGN WORKERS,";
140 PRINT " AND";INT(D);"SQ. MILES OF LAND."
150 PRINT"THIS YEAR INDUSTRY WILL BUY LAND FOR";W;"RALLODS PER SQ. MILE."
155 PRINT "LAND CURRENTLY COSTS";V9;"RALLODS PER SQ. MILE TO PLANT."
160 FOR Y1=1 TO 3
162 PRINT
164 NEXT Y1
200 PRINT "HOW MANY SQ. MILES DO YOU WISH TO SELL TO INDUSTRY ";
210 INPUT H
215 IF H<0 THEN 200
220 IF H<=D-1000 THEN 300
230 PRINT "    THINK AGAIN, YOU'VE ONLY ";D-1000;"SQ. MILES OF FARM LAND"
240 IF X <> 0 THEN 270
250 PRINT "(FOREIGN INDUSTRY WILL ONLY BUY FARM LAND BECAUSE FOREST"
260 PRINT "LAND IS UNECONOMICAL TO STRIP MINE DUE TO TREES,"
270 PRINT "THICKER TOP SOIL, ETC.)"
280 LET X=1
299 GOTO 200
300 LET D=INT(D-H)
310 LET A=INT(A+(H*W)) // Note: OCR read A(HW)
320 PRINT "HOW MANY RALLODS DO YOU WISH TO DISTRIBUTE TO YOUR COUNTRYMEN ";
340 INPUT I
342 IF I<0 THEN 320
350 IF I<A THEN 400
360 IF I=A THEN 380
370 PRINT "    THINK AGAIN YOU'VE ONLY ";A;"RALLODS IN THE TREASURY"
375 GOTO 320
380 LET J=0
390 LET K=0
395 LET A=0
399 GOTO 1000
400 LET A=INT(A-I)
410 PRINT "HOW MANY SQ. MILES DO YOU WISH TO PLANT ";
420 INPUT J
421 IF J<0 THEN 410
422 IF J<=B*2 THEN 426
423 PRINT "    SORRY, BUT EACH COUNTRYMAN CAN ONLY PLANT 2 SQ. MILES"
424 GOTO 410
426 IF J<=D-1000 THEN 430
427 PRINT "    SORRY, BUT YOU'VE ONLY";D-1000;"SQ. MILES OF FARM LAND"
428 GOTO 410
430 LET U1=INT(J*V9)
435 IF U1<A THEN 500
440 IF U1=A THEN 490
450 PRINT "    THINK AGAIN, YOU'VE ONLY";A;"RALLODS LEFT IN THE TREASURY"
460 GOTO 410
490 LET K=0
495 LET A=0
499 GOTO 1000
500 LET A=A-U1
505 IF D=2000 THEN 1000
510 PRINT "HOW MANY RALLODS DO YOU WISH TO SPEND ON POLLUTION CONTROL";
520 INPUT K
522 IF K<0 THEN 510
530 IF K<=A THEN 1000
540 PRINT "    THINK AGAIN, YOU'VE ONLY";A;"RALLODS REMAINING"
550 GOTO 510
600 IF H<>0 THEN 1002
602 IF I<>0 THEN 1002
604 IF J<>0 THEN 1002
606 IF K<>0 THEN 1002
608 FOR Y1=1 TO 5
609 PRINT
610 NEXT Y1
612 PRINT "GOODBYE."
614 PRINT "(IF YOU WISH TO CONTINUE THIS GAME AT A LATER DATE, ANSWER "
616 PRINT "1000 FOR HOW MANY TIMES YOU'VE PLAYED, AT BEGINNING OF NEXT ";
617 PRINT "GAME.)"
618 GOTO 1590
1000 GOTO 600
1002 FOR Y1=1 TO 3
1003 PRINT
1004 NEXT Y1
1010 LET A=INT(A-K)
1020 LET A4=A
1100 IF INT(I/100-B)>=0 THEN 1120
1105 IF I/100 <50 THEN 1700
1110 PRINT INT(B-(I/100));"COUNTRYMEN DIED OF STARVATION"
1120 LET F1=INT(RND(1)*(2000-D))
1122 IF K<25 THEN 1130
1125 LET F1=INT(F1/(K/25))
1130 IF F1<=0 THEN 1150
1140 PRINT F1;"COUNTRYMEN DIED OF CARBON-MONOXIDE AND DUST INHALATION"
1150 IF INT((I/100)-B)<0 THEN 1170
1160 IF F1>0 THEN 1180
1165 GOTO 1200
1170 PRINT "    YOU WERE FORCED TO SPEND";INT((F1+(B-(I/100)))*9));
1172 PRINT "RALLODS ON FUNERAL EXPENSES,"
1174 LET B5=INT(F1+(B-(I/100)))
1175 LET A=INT(A-((F1+(B-(I/100)))*9))
1176 GOTO 1185
1180 PRINT "    YOU WERE FORCED TO SPEND";INT(F1*9);"RALLODS ON ";
1181 PRINT "FUNERAL EXPENSES,"
1182 LET B5=F1
1183 LET A=INT(A-(F1*9))
1185 IF A>=0 THEN 1194
1187 PRINT "    INSUFFICIENT RESERVES TO COVER COST -LAND WAS SOLD"
1189 LET  D=INT(D+(A/4))
1190 LET A=0
1194 LET B=INT(B-B5)
1200 IF H=0 THEN 1250
1220 LET C1=INT((H+(RND(1)*10)-(RND(1)*20)))
1224 IF C>=0 THEN 1230
1226 LET C1=C1+20
1230 PRINT C1;"WORKERS CAME TO THE COUNTRY AND";
1250 LET P1=INT(((I/100-B)/10)+(K/25)+((2000-D)/50)-(F1/2))
1255 PRINT ABS(P1);"COUNTRYMEN ";
1260 IF P1<0 THEN 1275
1265 PRINT "CAME TO";
1270 GOTO 1280
1275 PRINT "LEFT";
1280 PRINT " THE ISLAND."
1290 LET H=INT(H+P1)
1292 LET C=INT(C+C1)
1305 LET U2=INT(((2000-C)*((RND(1)*1.5)/2)))
1310 IF C=0 THEN 1324
1320 PRINT " OF";INT(J);"SQ. MILES PLANTED,";
1324 IF J>U2 THEN 1330
1326 LET U2=J
1330 PRINT " YOU HARVESTED";INT(J-U2);"SQ. MILES OF CROPS."
1340 IF U2=0 THEN 1370
1344 IF T1>=2 THEN 1370
1350 PRINT "    (DUE TO ";
1355 IF T1=0 THEN 1365
1360 PRINT "INCREASED ";
1365 PRINT "AIR AND WATER POLLUTION FROM FOREIGN INDUSTRY.)"
1367 LET T1=T1+1
1370 LET Q=INT((J-U2)*(W/2))
1380 PRINT " MAKING";INT(Q);"RALLODS."
1390 LET A=INT(A+Q)
1400 LET V1=INT(((B-P1)*22)+(RND(1)*500))
1405 LET V2=INT((2000-D)*15)
1410 PRINT " YOU MADE";ABS(INT(V1-V2));"RALLODS FROM TOURIST TRADE."
1420 IF V2=0 THEN 1450
1425 IF V1-V2>=V3 THEN 1450
1430 PRINT "    DECREASE BECAUSE ";
1435 LET G1=RND(1)*10
1440 IF G1<=2 THEN 1460
1442 IF G1<=4 THEN 1465
1444 IF G1<=6 THEN 1470
1446 IF G1<=8 THEN 1475
1448 IF G1<=10 THEN 1480
1450 LET V3=INT(V1-V2)
1451 LET A=INT(A+V3)
1452 GOTO 1500
1460 PRINT "FISH POPULATION HAS DWINDLED DUE TO WATER POLLUTION."
1462 GOTO 1450
1465 PRINT "AIR POLLUTION IS KILLING GAME BIRD POPULATION."
1467 GOTO 1450
1470 PRINT "MINERAL BATHS ARE BEING RUINED BY WATER POLLUTION."
1472 GOTO 1450
1475 PRINT "UNPLEASANT SMOG IS DISCOURAGING SUN BATHERS."
1477 GOTO 1450
1480 PRINT "HOTELS ARE LOOKING SHABBY DUE TO SMOG GRIT."
1482 GOTO 1450
1500 IF B5>230 THEN 1600
1505 IF B<343 THEN 1700
1510 IF (A4/100)>5 THEN 1800
1515 IF C>B THEN 1550
1520 IF N5-1=5 THEN 1900
1545 GOTO 2000
1550 FOR Y1=1 TO 8
1552 PRINT
1555 NEXT Y1
1560 PRINT "THE NUMBER OF FOREIGN WORKERS HAS EXCEEDED THE NUMBER"
1562 PRINT "OF COUNTRYMEN. AS A MAJORITY THEY HAVE REVOLTED AND"
1564 PRINT "TAKEN OVER THE COUNTRY."
1570 IF RND(1)<=.5 THEN 1580
1574 PRINT "YOU HAVE BEEN THROWN OUT OF OFFICE AND YOU ARE NOW"
1576 PRINT "RESIDING IN PRISON."
1578 GOTO 1590
1580 PRINT "YOU HAVE BEEN ASSASSINATED."
1590 FOR Y1=1 TO 18
1592 PRINT
1594 NEXT Y1
1596 STOP
1600 FOR Y1=1 TO 8
1602 PRINT
1605 NEXT Y1
1610 PRINT B5;"COUNTRYMEN DIED IN ONE YEAR!!!!!"
1615 PRINT "DUE TO THIS EXTREME MISMANAGEMENT YOU HAVE NOT ONLY"
1620 PRINT "BEEN IMPEACHED AND THROWN OUT OF OFFICE BUT YOU"
1622 LET M6=INT(RND(1)*10)
1625 IF M6<=3 THEN 1670
1630 IF M6<=6 THEN 1680
1635 IF M6<=10 THEN 1690
1670 PRINT "ALSO HAD YOUR LEFT EYE GOUGED OUT."
1672 GOTO 1590
1680 PRINT "HAVE ALSO GAINED A VERY BAD REPUTATION."
1682 GOTO 1590
1690 PRINT "HAVE ALSO BEEN DECLARED NATIONAL FINK."
1692 GOTO 1590
1700 FOR Y1=1 TO 8
1702 PRINT
1705 NEXT Y1
1710 PRINT "OVER ONE THIRD OF THE POPULATION HAS DIED SINCE YOU"
1715 PRINT "WERE ELECTED TO OFFICE. THE PEOPLE (REMAINING)"
1720 PRINT "HATE YOUR GUTS."
1730 G OTO 1570
1800 IF B5-F1<2 THEN 1515
1805 FOR Y1=1 TO 8
1807 PRINT
1810 NEXT Y1
1815 PRINT "MONEY WAS LEFT OVER IN THE TREASURY WHICH YOU DID"
1820 PRINT "NOT SPEND. AS A RESULT SOME OF YOUR COUNTRYMEN DIED"
1825 PRINT "OF STARVATION. THE PUBLIC IS ENRAGED AND YOU HAVE"
1830 PRINT "BEEN FORCED TO EITHER RESIGN OR COMMIT SUICIDE"
1835 PRINT "THE CHOICE IS YOURS."
1840 PRINT "IF YOU CHOOSE THE LATTER, PLEASE TURN OFF YOUR TTY"
1845 PRINT "BEFORE PROCEEDING."
1850 GOTO 1590
1900 FOR Y1=1 TO 8
1902 PRINT
1905 NEXT Y1
1920 PRINT "CONGRATULATIONS!!!!!!!!!!!!!!!!!"
1925 PRINT "YOU HAVE SUCCESSFULLY COMPLETED YOUR";N5;"YEAR TERM"
1930 PRINT "OF OFFICE. YOU WERE, OF COURSE, EXTREMELY LUCKY, BUT NEVER THE"
1935 PRINT "LESS, IT'S QUITE AN ACHIEVEMENT. GOODBY AND GOOD LUCK -YOU'LL"
1940 PRINT "PROBABLY NEED IT IF YOU'RE THE TYPE THAT PLAYS THIS GAME."
1945 PRINT "  -FOR FURTHER THRILLS, TRY LANDING ON THE MOON"
1950 GOTO 1590
1960 PRINT "HOW MANY YEARS HAD YOU BEEN IN OFFICE WHEN INTERRUPTED";
1961 INPUT X5
1962 IF X5<=0 THEN 1590
1963 IF X5<=8 THEN 1969
1965 PRINT "COME ON, YOUR TERM OF OFFICE IS ONLY";N5;"YEARS"
1967 GOTO 1960
1969 PRINT "HOW MUCH DID YOU HAVE IN THE TREASURY";
1970 INPUT A
1971 IF A<0 THEN 1590
1975 PRINT "HOW MANY COUNTRYMEN";
1976 INPUT B
1977 IF B<0 THEN 1590
1980 PRINT "HOW MANY WORKERS";
1981 INPUT C
1982 IF C<0 THEN 1590
1990 PRINT "HOW MANY SQ. MILES OF LAND";
1991 INPUT D
1992 IF D<0 THEN 1590
1993 IF D>2000 THEN 1996
1994 IF D>1000 THEN 100
1996 PRINT "    COME ON, YOU STARTED WITH 1000 SQ. MILES OF FARM LAND"
1997 PRINT "    AND 1000 SQ. MILES OF FOREST LAND"
1998 GOTO 1990
2000 LET X5=X5+1
2020 LET B5=0
2040 GOTO 100
2046 END

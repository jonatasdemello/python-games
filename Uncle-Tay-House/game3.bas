10 REM *** UNCLE TAYS HOUSE ADVENTURE ***

20 REM *** VARIABLES *** 
100 DIM INW$(10):DIM INPTK(10):DIM VOCAB$(60):DIM NULLW$(4):DIM IDESC$(30)
140 DIM ILOC(30):DIM RNAME$(31):DIM RDESC$(31):DIM REXIT(31,6):DIM EXDESC$(10):DIM EXLOC(10,2)
180 SAFED = 0: LCL=1: IC = 0: SP = 0

299 REM VOCAB$(60)
300 DATA "NORTH", "SOUTH", "EAST", "WEST", "UP", "DOWN", "N", "S", "E", "W", "U", "D"
305 DATA "I", "INVENTORY", "SCORE", "JUMP", "HELP"
310 DATA "TAKE", "DROP", "LOOK", "READ", "EXAMINE", "UNLOCK", "EAT", "SPIN"
312 DATA "MOVE", "OPEN", "TIE", "OIL", "PUT", "LEFT", "CENTER", "RIGHT"
400 DATA "NEWSPAPER", "TEDDYBEAR", "FUSE", "JACK", "PICTURE", "BUNGEE"
405 DATA "KEY", "TOP", "NOTE", "GAINESBURGER", "GLOVES", "BOXSPRING"
410 DATA "BRACE", "MAGAZINE", "OILCAN", "CHECKBOOK", "DIAMOND", "LOVERBOY"
415 DATA "INVESTMENT", "LOONS", "FRIDGE", "COUCH", "CLOTHES", "DOOR"
420 DATA "RAILING", "DUMBWAITER", "FUSEBOX"

424 REM NULLW$(4)
425 DATA "THE", "TO", "WITH", "USING"

450 REM IDESC$(27)
451 DATA "TAYS HOUSE UNLIKELY EVER TO BE SOLD.  TALES OF GUTTED STAIRWELLS AND BOOBY TRAPS HAVE SPOOKED BUYERS..."
452 DATA "SOMEONE HAS BEEN PLAYING VERY ROUGH WITH THIS TOY", "OLD-FASHIONED ELECTRICAL FUSE"
454 DATA "TIRE JACK FOR LIFTING HEAVY OBJECTS LIKE CARS", "UNCLE TAYS IN ALL HIS SALLOW GLORY"
456 DATA "CORD FOR BUNGEE JUMPING", "A SMALL BRASS KEY", "A CHILD'S TOY", "THE WRITING IS REVERSED"
458 DATA "SUPPOSEDLY DOG FOOD, THOUGH IT APPEARS TO BE MADE OF PLASTIC"
459 DATA "RUBBER GLOVES USED FOR CLEANING", "A QUEEN-SIZED BOXSPRING", "A BACK BRACE"
460 DATA "TAYS' STRANGE INVENTIONS INCLUDE BOOBY-TRAPPED DOORS AND TOYS THAT OPEN DOORS BY REMOTE CONTROL..."
462 DATA "THIS CAN CONTAINS FINE LUBRICATING OIL", "UNCLE TAYS' CHECKBOOK LISTS A BALANCE OF $220,000"
464 DATA "THIS DIAMOND'S BEAUTY STEMS FROM ALL THE GODDAMNED MONEY IT IS WORTH"
466 DATA "LOVERBOY'S FIRST ALBUM IN VINYL, WORTH AN INCALCULABLE SUM"
467 DATA "PRE-IPO SHARES OF APOLLO COMPUTING HAVE TO BE WORTH ... SOMETHING"
468 DATA "A THICK WAD OF CANADIAN NOTES"
470 DATA "THIS OLD REFRIGERATOR'S MOTOR LABORS HEAVILY", "AN OVERSTUFFED, DUSTY COUCH"
472 DATA "A DISGUSTING PILE OF SOILED LAUNDRY", "", "", ""
473 DATA "AN OLD-FASHIONED FUSEBOX.  THE FUSE MARKED 'ATTIC' IS MISSING."

501 REM RNAME$(I), REXIT(I,J) X6, RDESC$(I)
502 DATA "FOYER", 2, 31, 3, 4, 0, 0, "THE ENTRYWAY TO THE HOUSE"
504 DATA "KITCHEN", 0, 1, 0, 0, 0, -1, "COUNTERTOPS ARE DUSTY AND THERE ARE RUSTING POTS AND PANS"
506 DATA "SITTING ROOM", 2, 0, 11, 1, 12, 0, "THIS ROOM IS TWO STORIES HIGH AND CONTAINS ELEGANT CHAIRS AND COUCHES"
508 DATA "HALLWAY", 6, 7, 1, 5, 0, 0, "A NARROW HALLWAY WHICH RUNS WEST OF THE FOYER"
510 DATA "HALLWAY", 0, 9, 4, 10, 0, 0, "A NARROW HALLWAY AT THE WEST END OF THE HOUSE"
512 DATA "DEN", 0, 4, 0, 0, 0, 0, "THIS ROOM HAS AN ANCIENT TELEVISION"
514 DATA "BATHROOM", 4, 0, 0, 0, 0, -1, "A DINGY BATHROOM WITH A CRACKED SINK"
516 DATA "LIBRARY", 0, 0, 0, 24, 0, 0, "THIS WELL-FURNISHED LIBRARY IS LINED WITH BOOKS AND LEATHER FURNITURE"
518 DATA "SMALL BEDROOM", 5, 0, 0, 0, 0, 0, "THIS SMALL BEDROOM HAS A TWIN BED AND CHAIR.  IT LOOKS LITTLE USED."
520 DATA "GARAGE", 0, 0, 5, 0, 0, 0, "THE CAVERNOUS GARAGE HOLDS A NON-OPERATIONAL GREMLIN AND PILES OF JUNK"
522 DATA "DINING ROOM", 0, 0, 0, 3, 0, 0, "TROPHIES LINE THE WALLS.  THERE ARE SIX CHAIRS AROUND A LONG TABLE."
524 DATA "BALCONY", 13, 0, 0, 14, -1, 3, "BALCONY ABOVE THE SITTING ROOM.  A RAILING PROTECTS YOU FROM A 15-FOOT DROP."
526 DATA "MASTER BEDROOM", 0, 12, 0, 0, 0, 0, "THIS LARGE CORNER BEDROOM HAS SOLID WALNUT FURNITURE AND A LARGE MIRROR"
528 DATA "HALLWAY", 0, 15, 12, 17, 0, 0, "A HALLWAY WITH A LARGE ARCH ON ITS SOUTH SIDE"
530 DATA "GAME ROOM", 14, 0, 0, 16, 0, 0, "THIS ELEGANT GAME ROOM HAS A POOL TABLE AND MARBLE CHESSBOARD"
532 DATA "CLOSET", 0, 0, 15, 0, 0, 0, "A SPACIOUS CLOSET OFF THE GAMEROOM"
534 DATA "HALLWAY", -1, 0, 14, -1, 0, 0, "A HALLWAY IN THE CENTER OF THE SECOND FLOOR"
536 DATA "CHILD'S ROOM", 0, 17, -1, 0, 0, 0, "YOUR COUSIN'S ROOM IN HAPPIER TIMES, BEFORE HE RAN OFF TO JOIN THE BAATH PARTY"
538 DATA "SECRET ROOM1", 0, 0, 0, 18, 0, 0, "A DARK CHAMBER OFF THE BEDROOM"
540 DATA "DANGEROUS HALL", 21, 22, 17, -1, 0, 0, "THIS EERIE HALL HAS THREE IDENTICAL DOORS ON THE WEST WALL"
542 DATA "CORNER BEDROOM", 0, 20, 0, 0, 0, 0, "A COZY CORNER ROOM WITH WINDOWS ON TWO WALLS"
544 DATA "BATHROOM", 20, 0, 0, 0, 0, 0, "AN ELEGANT BATH WITH A MIRROR OVER A MARBLE SINK"
546 DATA "DUMBWAITER", 0, 0, 20, 0, 0, -1, "A CRAMPED DUMBWAITER"
548 DATA "DUMBWAITER", 0, 0, 8, 0, 23, 0, "A CRAMPED DUMBWAITER"
550 DATA "ATTIC", 0, 0, 0, 0, 0, 12, "A DUSTY ATTIC WITH LOW SLOPING WALLS"
552 DATA "STORAGE ROOM", 0, 0, 27, 0, 0, 0, "A BARE ROOM USED TO STORE RANDOM EQUIPMENT AND FURNITURE"
554 DATA "LAUNDRY", 0, 0, 28, 26, 0, 0, "THIS ROOM HAS A WASHER AND DRYER, AS WELL AS A BOILER AND FURNACE"
556 DATA "WORKROOM", 0, 0, 29, 27, 0, 0, "EQUIPMENT FOR WORKING WOOD AND METAL"
558 DATA "BOTTOM OF STAIRS", 0, 0, 0, 28, -1, 0, "STAIRS FROM BASEMENT TO KITCHEN"
560 DATA "MID-AIR", 0, 0, 0, 0, 0, 0, "HANGING FROM A BUNGEE CORD"
562 DATA "LEAVE THE HOUSE (AND THE GAME)", 0, 0, 0, 0, 0, 0, ""

649 REM ILOC(27):
650 DATA 1, -1, -1, 10, 30, 10, 13, 15, 9, 16, 22, 26, 25, 25, 28, 8, -1, 19, 21, 27
655 DATA 2, 6, 7, -1, 12, -1, -1

700 DIROFF = 30: ITEMOFF = 33: LASTITEM = 27: IMMOFF = 20: LWRD = 60: NXDESC = 7

705 CLS : PRINT "LOADING..."; : SP = 1

709 REM -- READ DATA --
710 FOR I = 1 TO LWRD: READ D$: GOSUB 10000: VOCAB$(I) = D2$: NEXT
750 FOR I = 1 TO 4: READ D$: GOSUB 10000: NULLW$(I) = D2$: NEXT
780 FOR I = 1 TO LASTITEM: READ D$: GOSUB 10000: IDESC$(I) = D2$: NEXT
800 FOR I = 1 TO 31: READ D$: GOSUB 10000: RNAME$(I) = D2$
810    FOR J = 1 TO 6: READ REXIT(I,J): NEXT 
820    READ D$: GOSUB 10000: RDESC$(I) = D2$
825 NEXT
950 FOR I = 1 TO LASTITEM: READ ILOC(I): NEXT

999 REM --- EXLOC(I,1), EXLOC(I,2), EXDESC$(7) ---
1000 DATA 5, 6, "THERE IS A LOCKED DOOR TO THE NORTH"
1001 DATA 8, 6, "THERE IS A LOCKED DOOR TO THE SOUTH"
1005 DATA 2, 6, "STAIRS LEAD DOWN TO A CELLAR.  SEVERAL STEPS HAVE COLLAPSED, MAKING THE STAIRCASE UNUSABLE."
1010 DATA 29, 5, "STAIRS LEAD UP.  SEVERAL STEPS HAVE COLLAPSED, MAKING THE STAIRCASE UNUSABLE."
1015 DATA 12, 5, "DARK STAIRS LEAD UP TO THE ATTIC"
1016 DATA 17, 4, "A LOCKED DOOR TO THE WEST IS LABELLED 'EXTREME DANGER'"
1025 DATA 17, 1, "YOUR UNCLE'S DOBERMAN BLOCKS A DOORWAY TO THE NORTH"

1050 FOR I = 1 TO NXDESC: READ EXLOC(I,1): READ EXLOC(I,2): READ D$: GOSUB 10000: EXDESC$(I) = D2$: NEXT

1059 REM -- LOADING DONE, SHOW INTRO ---
1060 SP = 0 : CLS
2000 GOSUB 15000 : REM INTRO


2499 REM --- LOOP PRINCIPAL ---

2500 IF LCL = 30 THEN D$= "... AND SPRING BACK": GOSUB 11000: LCL = 12
2525 IF LCL = 31 THEN GOTO 19900

2509 REM --- SHOW LOCAL --
2510 PRINT RNAME$(LCL): PRINT RDESC$(LCL)

2530 FOR I = 1 TO 6: NEIGH = REXIT(LCL, I): IF NEIGH > 0 THEN PRINT VOCAB$(I) ; ": "; RNAME$(NEIGH)
2559 NEXT
2560 FOR I = 1 TO NXDESC: IF LCL = EXLOC(I,1) AND REXIT(EXLOC(I,1),EXLOC(I,2)) <= 0 THEN PRINT EXDESC$(I)
2569 NEXT
2570 IF LCL = 17 AND REXIT(17,1) > 0 THEN D$="YOUR UNCLE'S DOBERMAN IS SNORING PEACEFULLY": GOSUB 11000
2580 IF LCL = 3 AND ILOC(6) = -12 THEN D$="A BUNGEE CORD DANGLES FROM THE RAILING ABOVE": GOSUB 11000
2582 IF LCL = 12 AND ILOC(6) = -12 THEN D$="A BUNGEE CORD DANGLES FROM THE RAILING": GOSUB 11000
2600 FOR I = 1 TO LASTITEM: IF ILOC(I) = LCL THEN PRINT "THERE IS A "; VOCAB$(I + ITEMOFF); " HERE"
2619 NEXT
2620 IF LCL = 2 AND ILOC(3) = -1 THEN D$= "SOMETHING IS BARELY VISIBLE UNDER THE FRIDGE": GOSUB 11000
2650 IF LCL = 3 AND ILOC(5) = 30 THEN D$= "THERE IS A PICTURE HIGH UP ON THE WALL": GOSUB 11000

4979 REM --- DEAL WITH MID-AIR
4980 IF LCL = 30 THEN TURN1 = 1

4999 REM --- READ INPUT ---
5000 IF TURN1 <> 1 AND LCL = 30 THEN D$= "...AND SPRING BACK": GOSUB 11000: LCL = 12: GOTO 2500

5010 TURN1 = 0: INPUT "] "; I$: INWRD = 0: WIDX = 0
5020 FOR C = 1 TO LEN(I$): C$ = MID$(I$,C,1): IF C$ = " " AND INWRD = 1 THEN INWRD = 0
5060 IF C$ <> " " AND INWRD = 0 THEN WIDX = WIDX + 1: INW$(WIDX) = "": INWRD = 1
5065 IF WIDX > 10 GOTO 5100
5070 IF C$ <> " " THEN INW$(WIDX) = INW$(WIDX) + C$
5099 NEXT
5100 CURTOK = 1: FOR TIDX = 1 TO WIDX
5115 ISNULLW = 0
5120 FOR XN = 1 TO 4: IF INW$(TIDX) = NULLW$(XN) THEN ISNULLW = 1
5135 NEXT
5137 IF ISNULLW = 1 THEN GOTO 5170
5140 FOR CMDIDX = 1 TO LWRD: IF INW$(TIDX) = VOCAB$(CMDIDX) THEN INPTK(CURTOK) = CMDIDX: CURTOK = CURTOK + 1
5160 NEXT CMDIDX
5170 NEXT TIDX

5180 NTOK = CURTOK - 1
6000 COMM = INPTK(1): ON NTOK+1 GOTO 5000, 6050, 6400, 7100
6049 D$ = "YOU CAN'T DO THAT": GOSUB 11000: GOTO 5000

6050 IF INPTK(1) >= 1 AND INPTK(1) <= 12 THEN GOTO 7000
6070 IF COMM <= 20 THEN ON COMM-12 GOTO 6100, 6100, 6200, 6300, 6350, 6099, 6099, 2500

6099 D$ = "HUH?": GOSUB 11000: GOTO 5000
6100 D$ = "YOU ARE CARRYING:": GOSUB 11000
6110 FOR I = 1 TO LASTITEM
6120 IF ILOC(I) = 0 THEN PRINT "  "; VOCAB$(I+ITEMOFF)
6130 NEXT I
6199 GOTO 5000
6200 GOSUB 9500: GOTO 5000

6299 REM -- JUMP --
6300 IF LCL <> 12 THEN D$= "WHO ARE YOU, DAVID LEE ROTH?": GOSUB 11000: GOTO 5000
6320 IF ILOC(6) <> -12 THEN D$ = "YOU FORGOT YOUR PARACHUTE": GOSUB 11000: GOTO 5000
6330 D$= "YOU BUNGEE OFF THE BALCONY...": GOSUB 11000: LCL = 30: GOTO 2510

6350 GOSUB 15000: GOTO 5000

6400 ARG = INPTK(2) - DIROFF: IF ARG < 1 or ARG > LASTITEM THEN D$ = "HUH?": GOSUB 11000: GOTO 5000
6430 IF COMM > 17 AND COMM <= 27 THEN ON COMM-17 GOTO 6500, 6600, 6700, 6700, 6700, 6800, 6900, 7600, 6950, 8200
6499 D$ = "HUH?": GOSUB 11000: GOTO 5000

6500 IF ILOC(ARG) = 0 THEN D$ =  "YOU ALREADY HAVE IT": GOSUB 11000: GOTO 5000
6510 IF ILOC(ARG) = 30 AND LCL = 3 AND ARG = 5 THEN D$= "IT'S TOO HIGH": GOSUB 11000: GOTO 5000
6520 IF ILOC(ARG) <> LCL THEN D$ = "IT'S NOT HERE": GOSUB 11000: GOTO 5000

6530 IF IC >= 8 THEN D$ = "YOU'RE CARRYING TOO MUCH": GOSUB 11000: GOTO 5000
6540 IF ARG > IMMOFF THEN D$ = "IT'S TOO HEAVY": GOSUB 11000: GOTO 5000
6559 IF LCL = 29 AND ARG = 12 THEN D$ = "YOU CAN'T DO THAT": GOSUB 11000: GOTO 5000
6570 IC = IC + 1: IF LCL = 30 AND ARG = 5 THEN D$ = "TAKING THE PICTURE REVEALS A FUSEBOX": GOSUB 11000: ILOC(ARG) = 0: ILOC(IMMOFF+7) = 30: GOTO 2500
6590 ILOC(ARG) = 0: PRINT VOCAB$(INPTK(2)); ": TAKEN": GOTO 5000

6600 IF ILOC(ARG) <> 0 THEN D$= "YOU AREN'T CARRYING IT": GOSUB 11000: GOTO 5000
6630 IC = IC - 1: IF LCL = 17 AND ARG = 10 AND REXIT(17,1) <= 0 THEN D$= "THE DOG LOOKS DISGUSTED.  MAYBE YOU SHOULD EAT IT.": GOSUB 11000: GOTO 6690
6640 IF LCL = 17 AND ARG = 2 AND REXIT(17,1) <= 0 THEN D$= "THE DOG CHEWS HIS FAVORITE TOY AND IS SOON ASLEEP": GOSUB 11000: ILOC(ARG) = -999: REXIT(17,1)=18: GOTO 2500
6650 IF LCL = 29 AND ARG = 12 AND REXIT(29,5) <= 0 THEN D$= "THE BOXSPRING COVERS THE GAP IN THE STAIRS": GOSUB 11000: ILOC(ARG) = -999: REXIT(29,5) = 2: REXIT(2,6) = 29: GOTO 2500
6690 ILOC(ARG) = LCL: PRINT VOCAB$(INPTK(2)); ": DROPPED": GOTO 5000

6700 ARG = INPTK(2) - ITEMOFF
6740 IF ILOC(ARG) <> 0 AND ILOC(ARG) <> LCL THEN D$= "IT'S NOT HERE": GOSUB 11000: GOTO 5000
6750 IF ARG = 9 AND (LCL = 13 OR LCL = 22) THEN GOSUB 8000: GOSUB 8050: GOTO 5000
6755 IF IDESC$(ARG) = "" THEN PRINT "THERE'S NOTHING SPECIAL ABOUT THE "; VOCAB$(INPTK(2)): GOTO 5000
6760 PRINT IDESC$(ARG): GOTO 5000

6800 IF ILOC(7) <> 0 THEN D$ = "YOU DON'T HAVE A KEY!": GOSUB 11000: GOTO 5000
6820 IF LCL = 5 THEN D$= "THE KEY DOESN'T FIT THE LOCK": GOSUB 11000: GOTO 5000
6830 IF LCL = 17 THEN D$ = "YOU UNLOCK THE DOOR. BEWARE!": GOSUB 11000: REXIT(17,4) = 20: GOTO 2500
6899 D$ = "HUH?": GOSUB 11000: GOTO 5000

6900 IF ILOC(ARG) <> 0 THEN D$= "YOU DON'T HAVE IT!": GOSUB 11000: GOTO 5000
6920 IF ARG <> 10 THEN D$= "YOU CAN'T EAT THAT!": GOSUB 11000: GOTO 5000
6930 D$= "THERE WAS A DIAMOND HIDDEN INSIDE THE GAINESBURGER": GOSUB 11000: ILOC(ARG) = -2: ILOC(17) = 0: GOTO 2500

6950 AIMM = ARG - IMMOFF
6960 IF AIMM >= 1 AND AIMM <= 4 THEN ON AIMM GOTO 6970, 6975, 6980
6965 D$= "YOU CAN'T DO THAT": GOSUB 11000: GOTO 5000
6970 D$= "IT'S TOO HEAVY FOR YOU TO MOVE": GOSUB 11000: GOTO 5000
6975 D$= "YOUR BACK IS ACTING UP": GOSUB 11000: GOTO 5000
6980 D$= "THAT SEEMS POINTLESS AND UNSANITARY": GOSUB 11000: GOTO 5000

7000 GOARG = INPTK(1): IF GOARG > 6 THEN GOARG = GOARG - 6
7010 IF REXIT(LCL, GOARG) > 0 THEN LCL = REXIT(LCL, GOARG): GOTO 2500
7020 IF LCL = 12 AND GOARG = 5 THEN D$= "YOU'RE AFRAID OF THE DARK": GOSUB 11000: GOTO 5000
7025 IF LCL = 17 AND GOARG = 1 THEN D$= "YOU NEVER DID LIKE THAT DOG": GOSUB 11000: GOTO 5000
7030 IF LCL = 23 AND REXIT(23, 6) <= 0 THEN D$ = "THE DUMBWAITER MECHANISM IS CORRODED AND WON'T MOVE": GOSUB 11000: GOTO 5000
7099 D$= "YOU CAN'T GO THAT WAY": GOSUB 11000: GOTO 5000

7100 IF COMM < 23 OR COMM > 30 THEN GOTO 6899
7120 ARG = INPTK(2) - ITEMOFF: IF COMM <> 27 AND ARG < 1 or ARG > LASTITEM THEN D$ = "HUH?": GOSUB 11000: GOTO 5000
7130 IF COMM <> 23 AND COMM <> 29 AND ILOC(ARG) <> LCL AND ILOC(ARG) <> 0 THEN D$= "IT'S NOT HERE": GOSUB 11000: GOTO 5000
7140 ON COMM-22 GOTO 6800, 6899, 6899, 7200, 7400, 7500, 7700, 7800
7200 IF ARG < IMMOFF THEN D$= "YOU CAN JUST TAKE THAT": GOSUB 11000: GOTO 5000

7220 AIMM = ARG - IMMOFF: MVARG = INPTK(3) - ITEMOFF: IF AIMM < 1 OR AIMM > 3 THEN D$ = "YOU CAN'T DO THAT": GOSUB 11000: GOTO 5000
7230 IF ILOC(MVARG) <> 0 THEN D$ = "YOU DON'T HAVE IT!": GOSUB 11000: GOTO 5000
7240 ON AIMM GOTO 7250, 7300, 7350
7250 IF MVARG <> 4 OR ILOC(3) >= 0 THEN D$= "YOU CAN'T DO THAT": GOSUB 11000: GOTO 5000
7260 D$= "YOU JACK UP THE FRIDGE AND FIND A FUSE UNDER IT": GOSUB 11000: ILOC(3)=LCL: GOTO 2500
7300 IF MVARG <> 13 OR ILOC(2) >= 0 THEN D$ = "YOU CAN'T DO THAT": GOSUB 11000: GOTO 5000
7310 D$="YOU MOVE THE COUCH AND FIND A TEDDYBEAR BEHIND IT": GOSUB 11000: ILOC(2)=LCL: GOTO 2500
7350 IF MVARG <> 11 THEN D$ = "YOU CAN'T DO THAT": GOSUB 11000: GOTO 5000
7360 D$="MOVING THE CLOTHES REVEALS A LAUNDRY CHUTE TO THE BASEMENT": GOSUB 11000: REXIT(LCL,6) = 27: GOTO 2500

7400 IF LCL <> 20 THEN D$ = "HUH?": GOSUB 11000: GOTO 5000
7450 IF INPTK(3) - ITEMOFF <> IMMOFF + 4 THEN D$ = "HUH?": GOSUB 11000: GOTO 5000
7460 DOORDIR = INPTK(2) - DIROFF: IF DOORDIR < 1 OR DOORDIR > 3 THEN D$ = "HUH?": GOSUB 11000: GOTO 5000
7470 GOSUB 8025
7480 IF DOORDIR = SAFED THEN D$= "OPENING THE DOOR REVEALS A DUMBWAITER": GOSUB 11000: REXIT(LCL, 4) = 23: GOTO 2500
7490 IF INT(RND(2)) > 1 THEN D$= "A SHOT RINGS OUT!  IT WAS WELL-AIMED TOO.": GOSUB 11000: GOTO 19000
7495 D$= "AN IRONING BOARD SLAMS ONTO YOUR HEAD": GOSUB 11000: GOTO 19000
7500 IF LCL <> 12 THEN D$ = "YOU CAN'T DO THAT": GOSUB 11000: GOTO 5000
7520 IF INPTK(2) - ITEMOFF <> 6 THEN D$= "YOU CAN'T TIE THAT": GOSUB 11000: GOTO 5000
7530 IF INPTK(3) - ITEMOFF <> (IMMOFF + 5) THEN D$= "YOU CAN'T TIE TO THAT": GOSUB 11000: GOTO 5000
7540 IF ILOC(6) <> 0 THEN D$ = "YOU DON'T HAVE IT!": GOSUB 11000: GOTO 5000
7550 D$= "TIED": GOSUB 11000: ILOC(6) = -12: IC = IC - 1: GOTO 2500

7600 IF ILOC(8) <> 0 THEN D$ = "HUH?": GOSUB 11000: GOTO 5000

7610 IF LCL = 18 THEN D$= "THERE IS A FLASH OF LIGHT AND A CRACKING SOUND.  AN OPENING APPEARS IN THE EAST WALL": GOSUB 11000: REXIT(18, 3) = 19: GOTO 2500
7620 INVERSE: D$= "WHEE!": GOSUB 11000: NORMAL: PRINT "": GOTO 5000
7700 IF LCL <> 20 THEN D$ = "YOU CAN'T DO THAT": GOSUB 11000: GOTO 5000
7705 IF ILOC(15) <> 0 THEN D$= "YOU DON'T HAVE ANY OIL": GOSUB 11000: GOTO 5000
7720 IF INPTK(2) - ITEMOFF <> IMMOFF + 6 THEN D$ = "HUH?": GOSUB 11000: GOTO 5000
7725 D$= "THE DUMBWAITER MECHANISM NOW RUNS SMOOTHLY": GOSUB 11000: REXIT(23,6) = 24: GOTO 5000
7800 IF LCL <> 30 OR (INPTK(2) - ITEMOFF <> 3) THEN D$ = "YOU CAN'T DO THAT": GOSUB 10000: GOTO 5000

7830 IF INPTK(3) - ITEMOFF <> (IMMOFF + 7) THEN D$= "YOU CAN'T PUT IT THERE": GOSUB 11000: GOTO 5000
7840 IF ILOC(3) <> 0 THEN D$ = "YOU DON'T HAVE IT!": GOSUB 11000: GOTO 5000

7850 D$= "YOU PUT THE FUSE IN THE BOX": GOSUB 11000: ILOC(3) = -999: IC = IC - 1: REXIT(12,5) = 25: GOTO 5000

7999 REM *** SELECT SAFE DOOR ***
8000 IF SAFED <> 0 THEN RETURN
8020 SAFED = INT(RND(3) * 3) + 1: RETURN
8025 IF SAFED <> 0 THEN RETURN
8030 SAFED = (INPTK(2) - DIROFF) + 1: IF SAFED > 3 THEN SAFED = 1
8049 RETURN
8050 N1$ = VOCAB$(DIROFF+1): N2$ = VOCAB$(DIROFF+3): IF SAFED = 1 THEN N1$ = VOCAB$(DIROFF+2)
8070 IF SAFED = 3 THEN N2$ = VOCAB$(DIROFF+2)
8080 D$ = "EXPERIMENTS ON ": GOSUB 10000: NTMSG$ = D2$ + N1$
8085 D$ = " AND ": GOSUB 10000: NTMSG$ = NTMSG$ + D2$ + N2$
8090 D$ = " DOORS PROCEEDING WELL; FILE FOR PATENT": GOSUB 10000: NTMSG$=NTMSG$+D2$
8099 PRINT NTMSG$: RETURN

8200 IF LCL = 20 AND (INPTK(2) - ITEMOFF) = IMMOFF + 4 THEN D$= "PLEASE SPECIFY LEFT, CENTER, OR RIGHT": GOSUB 11000: GOTO 5000
8299 D$ = "HUH?": GOSUB 11000: GOTO 5000

9500 SCORE = 50
9510 FOR I = 16 TO 20: IF ILOC(I) = 0 THEN SCORE = SCORE + 10
9515 NEXT
9520 FOR I = 3 TO 30: FOR J = 1 TO 6: IF REXIT(I,J) = -1 THEN SCORE = SCORE -5
9525 NEXT J, I
9530 FOR I = 1 TO 15: IF ILOC(I) = -1 THEN SCORE = SCORE - 5
9535 NEXT
9540 PRINT "YOUR SCORE IS "; SCORE; " OUT OF A POSSIBLE 100": RETURN

9999 REM --- DECODE D$ INTO D2$ ---
10000 D2$ = "" : IF D$ = "" THEN GOTO 10070
10005 CS = 0: OFT = ASC(MID$(D$,1,1))-48
10010 FOR DC = 2 to LEN(D$)-1
10020 D2AS = ASC(MID$(D$,DC,1)): IF D2AS >= 65 AND D2AS <= 90 THEN D2AS=D2AS - OFT: IF D2AS < 65 THEN D2AS = D2AS+26
10030 D2$ = D2$ + CHR$(D2AS)
10040 IF D2AS >= 65 AND D2AS <= 90 THEN CS = CS + D2AS: IF CS > 9 THEN CS = CS-((INT(CS/10)) * 10)
10050 NEXT
10060 IF D$ <> "" THEN IF ASC(MID$(D$, LEN(D$), 1))-48 <> CS  THEN PRINT "BAD CHECKSUM FOR "; D$; ", FOUND "; CS: GOTO 19999
10070 IF SP THEN PRINT "."; REM loading
10071 PRINT D$: PRINT D2$: PRINT "---"
10099 RETURN
11000 GOSUB 10000: PRINT D2$: RETURN


14999 REM --- INTRO ---
15000 D$ = "TAYS HOUSE ADVENTURE": GOSUB 11000
15010 D$ = "FIND TREASURES AND VALUABLES IN YOUR MAD UNCLE TAYS' HOUSE": GOSUB 11000
15020 D$ = "TYPE SIMPLE COMMANDS: NORTH, SOUTH, ETC. TO MOVE (OR JUST 'N', 'S').": GOSUB 11000
15030 D$ = "TAKE AND DROP, INVENTORY, LOOK, READ, MOVE, AND SO ON.": GOSUB 11000
15040 D$ = "SOME COMMANDS ARE COMPLEX: 'MOVE THE HUBCAP WITH THE SPANNER'": GOSUB 11000
15045 RETURN

19000 D$ = "YOU HAVE DIED": GOSUB 11000: GOTO 19999
19900 GOSUB 9500: IF SCORE = 100 THEN D$ = "YOU HAVE WON THE GAME!": GOSUB 11000
19999 END

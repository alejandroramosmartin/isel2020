#ifdef PEG
struct T_SRC {
	char *fl; int ln;
} T_SRC[NTRANS];

void
tr_2_src(int m, char *file, int ln)
{	T_SRC[m].fl = file;
	T_SRC[m].ln = ln;
}

void
putpeg(int n, int m)
{	printf("%5d	trans %4d ", m, n);
	printf("%s:%d\n",
		T_SRC[n].fl, T_SRC[n].ln);
}
#endif

void
settable(void)
{	Trans *T;
	Trans *settr(int, int, int, int, int, char *, int, int, int);

	trans = (Trans ***) emalloc(8*sizeof(Trans **));

	/* proctype 6: alarm_button */

	trans[6] = (Trans **) emalloc(30*sizeof(Trans *));

	trans[6][27]	= settr(241,0,26,1,0,".(goto)", 0, 2, 0);
	T = trans[6][26] = settr(240,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(240,0,23,0,0,"DO", 0, 2, 0);
	T = trans[6][23] = settr(237,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(237,0,1,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(237,0,3,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(237,0,5,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(237,0,7,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(237,0,9,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(237,0,11,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(237,0,13,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(237,0,15,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(237,0,17,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(237,0,19,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(237,0,21,0,0,"IF", 0, 2, 0);
	trans[6][1]	= settr(215,0,2,3,0,"((state_digit==IDLE))", 1, 2, 0);
	trans[6][2]	= settr(216,0,25,4,4,"button_alarm = 1", 1, 2, 0);
	trans[6][24]	= settr(238,0,25,1,0,".(goto)", 0, 2, 0);
	trans[6][3]	= settr(217,0,4,5,0,"((state_digit==D1))", 1, 2, 0);
	trans[6][4]	= settr(218,0,25,6,6,"button_alarm = 1", 1, 2, 0);
	trans[6][5]	= settr(219,0,6,7,0,"((state_digit==D2))", 1, 2, 0);
	trans[6][6]	= settr(220,0,25,8,8,"button_alarm = 0", 1, 2, 0);
	trans[6][7]	= settr(221,0,8,9,0,"((state_digit==D3))", 1, 2, 0);
	trans[6][8]	= settr(222,0,25,10,10,"button_alarm = 0", 1, 2, 0);
	trans[6][9]	= settr(223,0,10,11,0,"((state_digit==D4))", 1, 2, 0);
	trans[6][10]	= settr(224,0,25,12,12,"button_alarm = 0", 1, 2, 0);
	trans[6][11]	= settr(225,0,12,13,0,"((state_digit==D5))", 1, 2, 0);
	trans[6][12]	= settr(226,0,25,14,14,"button_alarm = 0", 1, 2, 0);
	trans[6][13]	= settr(227,0,14,15,0,"((state_digit==D6))", 1, 2, 0);
	trans[6][14]	= settr(228,0,25,16,16,"button_alarm = 0", 1, 2, 0);
	trans[6][15]	= settr(229,0,16,17,0,"((state_digit==D7))", 1, 2, 0);
	trans[6][16]	= settr(230,0,25,18,18,"button_alarm = 0", 1, 2, 0);
	trans[6][17]	= settr(231,0,18,19,0,"((state_digit==D8))", 1, 2, 0);
	trans[6][18]	= settr(232,0,25,20,20,"button_alarm = 0", 1, 2, 0);
	trans[6][19]	= settr(233,0,20,21,0,"((state_digit==D9))", 1, 2, 0);
	trans[6][20]	= settr(234,0,25,22,22,"button_alarm = 0", 1, 2, 0);
	trans[6][21]	= settr(235,0,22,23,0,"((state_digit==D0))", 1, 2, 0);
	trans[6][22]	= settr(236,0,25,24,24,"button_alarm = 0", 1, 2, 0);
	trans[6][25]	= settr(239,0,26,25,0,"printf('state_alarm = %d, state_digit = %d, button_alarm = %d \\n',state_alarm,state_digit,button_alarm)", 1, 2, 0);
	trans[6][28]	= settr(242,0,29,1,0,"break", 0, 2, 0);
	trans[6][29]	= settr(243,0,0,26,26,"-end-", 0, 3500, 0);

	/* proctype 5: temp_alarm */

	trans[5] = (Trans **) emalloc(7*sizeof(Trans *));

	trans[5][4]	= settr(212,0,3,1,0,".(goto)", 0, 2, 0);
	T = trans[5][3] = settr(211,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(211,0,1,0,0,"DO", 0, 2, 0);
	trans[5][1]	= settr(209,0,2,27,27,"time = (time+1)", 1, 2, 0);
	trans[5][2]	= settr(210,0,3,28,0,"printf('state_alarm = %d, state_digit = %d, time = %d, next = %d \\n',state_alarm,state_digit,time,next)", 1, 2, 0);
	trans[5][5]	= settr(213,0,6,1,0,"break", 0, 2, 0);
	trans[5][6]	= settr(214,0,0,29,29,"-end-", 0, 3500, 0);

	/* proctype 4: fsm_alarm */

	trans[4] = (Trans **) emalloc(55*sizeof(Trans *));

	trans[4][1]	= settr(155,0,2,30,30,"state_alarm = DISARMED", 1, 2, 0);
	trans[4][2]	= settr(156,0,51,31,31,"time = next", 1, 2, 0);
	trans[4][52]	= settr(206,0,51,1,0,".(goto)", 0, 2, 0);
	T = trans[4][51] = settr(205,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(205,0,3,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(205,0,9,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(205,0,17,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(205,0,25,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(205,0,35,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(205,0,43,0,0,"DO", 0, 2, 0);
	trans[4][3]	= settr(157,0,8,32,0,"((state_alarm==DISARMED))", 1, 2, 0);
	T = trans[ 4][8] = settr(162,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(162,2,6,0,0,"ATOMIC", 1, 2, 0);
	T = trans[4][6] = settr(160,2,0,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(160,2,4,0,0,"IF", 1, 2, 0);
	trans[4][4]	= settr(158,0,51,33,33,"(digit_out)", 1, 2, 0); /* m: 5 -> 51,0 */
	reached4[5] = 1;
	trans[4][5]	= settr(0,0,0,0,0,"state_alarm = DIGIT1",0,0,0);
	trans[4][7]	= settr(161,0,51,1,0,".(goto)", 1, 2, 0);
	trans[4][9]	= settr(163,0,16,34,0,"((state_alarm==DIGIT1))", 1, 2, 0);
	T = trans[ 4][16] = settr(170,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(170,2,14,0,0,"ATOMIC", 1, 2, 0);
	T = trans[4][14] = settr(168,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(168,2,10,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(168,2,12,0,0,"IF", 1, 2, 0);
	trans[4][10]	= settr(164,0,51,35,35,"(digit_out)", 1, 2, 0); /* m: 11 -> 51,0 */
	reached4[11] = 1;
	trans[4][11]	= settr(0,0,0,0,0,"state_alarm = DIGIT2",0,0,0);
	trans[4][15]	= settr(169,0,51,36,36,".(goto)", 1, 2, 0);
	trans[4][12]	= settr(166,0,51,37,37,"((armed&&presence))", 1, 2, 0); /* m: 13 -> 51,0 */
	reached4[13] = 1;
	trans[4][13]	= settr(0,0,0,0,0,"state_alarm = ALERT1",0,0,0);
	trans[4][17]	= settr(171,0,24,38,0,"((state_alarm==DIGIT2))", 1, 2, 0);
	T = trans[ 4][24] = settr(178,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(178,2,22,0,0,"ATOMIC", 1, 2, 0);
	T = trans[4][22] = settr(176,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(176,2,18,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(176,2,20,0,0,"IF", 1, 2, 0);
	trans[4][18]	= settr(172,0,51,39,39,"(digit_out)", 1, 2, 0); /* m: 19 -> 51,0 */
	reached4[19] = 1;
	trans[4][19]	= settr(0,0,0,0,0,"state_alarm = DIGIT3",0,0,0);
	trans[4][23]	= settr(177,0,51,40,40,".(goto)", 1, 2, 0);
	trans[4][20]	= settr(174,0,51,41,41,"((armed&&presence))", 1, 2, 0); /* m: 21 -> 51,0 */
	reached4[21] = 1;
	trans[4][21]	= settr(0,0,0,0,0,"state_alarm = ALERT2",0,0,0);
	trans[4][25]	= settr(179,0,34,42,0,"((state_alarm==DIGIT3))", 1, 2, 0);
	T = trans[ 4][34] = settr(188,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(188,2,32,0,0,"ATOMIC", 1, 2, 0);
	T = trans[4][32] = settr(186,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(186,2,26,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(186,2,28,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(186,2,30,0,0,"IF", 1, 2, 0);
	trans[4][26]	= settr(180,0,51,43,43,"((armed&&code_ok))", 1, 2, 0); /* m: 27 -> 51,0 */
	reached4[27] = 1;
	trans[4][27]	= settr(0,0,0,0,0,"state_alarm = DISARMED",0,0,0);
	trans[4][33]	= settr(187,0,51,44,44,".(goto)", 1, 2, 0);
	trans[4][28]	= settr(182,0,51,45,45,"((!(armed)&&code_ok))", 1, 2, 0); /* m: 29 -> 51,0 */
	reached4[29] = 1;
	trans[4][29]	= settr(0,0,0,0,0,"state_alarm = ARMED",0,0,0);
	trans[4][30]	= settr(184,0,51,46,46,"(!(code_ok))", 1, 2, 0); /* m: 31 -> 51,0 */
	reached4[31] = 1;
	trans[4][31]	= settr(0,0,0,0,0,"state_alarm = NOT_OK",0,0,0);
	trans[4][35]	= settr(189,0,42,47,0,"((state_alarm==ARMED))", 1, 2, 0);
	T = trans[ 4][42] = settr(196,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(196,2,40,0,0,"ATOMIC", 1, 2, 0);
	T = trans[4][40] = settr(194,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(194,2,36,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(194,2,38,0,0,"IF", 1, 2, 0);
	trans[4][36]	= settr(190,0,51,48,48,"(digit_out)", 1, 2, 0); /* m: 37 -> 51,0 */
	reached4[37] = 1;
	trans[4][37]	= settr(0,0,0,0,0,"state_alarm = DIGIT1",0,0,0);
	trans[4][41]	= settr(195,0,51,49,49,".(goto)", 1, 2, 0);
	trans[4][38]	= settr(192,0,51,50,50,"(presence)", 1, 2, 0); /* m: 39 -> 51,0 */
	reached4[39] = 1;
	trans[4][39]	= settr(0,0,0,0,0,"state_alarm = ALERT3",0,0,0);
	trans[4][43]	= settr(197,0,50,51,0,"((state_alarm==NOT_OK))", 1, 2, 0);
	T = trans[ 4][50] = settr(204,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(204,2,48,0,0,"ATOMIC", 1, 2, 0);
	T = trans[4][48] = settr(202,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(202,2,44,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(202,2,46,0,0,"IF", 1, 2, 0);
	trans[4][44]	= settr(198,0,51,52,52,"(digit_out)", 1, 2, 0); /* m: 45 -> 51,0 */
	reached4[45] = 1;
	trans[4][45]	= settr(0,0,0,0,0,"state_alarm = DIGIT1",0,0,0);
	trans[4][49]	= settr(203,0,51,53,53,".(goto)", 1, 2, 0);
	trans[4][46]	= settr(200,0,51,54,54,"((armed&&presence))", 1, 2, 0); /* m: 47 -> 51,0 */
	reached4[47] = 1;
	trans[4][47]	= settr(0,0,0,0,0,"state_alarm = ALERT4",0,0,0);
	trans[4][53]	= settr(207,0,54,1,0,"break", 0, 2, 0);
	trans[4][54]	= settr(208,0,0,55,55,"-end-", 0, 3500, 0);

	/* proctype 3: fsm_digit */

	trans[3] = (Trans **) emalloc(115*sizeof(Trans *));

	trans[3][1]	= settr(41,0,2,56,56,"state_digit = IDLE", 1, 2, 0);
	trans[3][2]	= settr(42,0,111,57,57,"time = next", 1, 2, 0);
	trans[3][112]	= settr(152,0,111,1,0,".(goto)", 0, 2, 0);
	T = trans[3][111] = settr(151,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(151,0,3,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(151,0,11,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(151,0,21,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(151,0,31,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(151,0,41,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(151,0,51,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(151,0,61,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(151,0,71,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(151,0,81,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(151,0,91,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(151,0,101,0,0,"DO", 0, 2, 0);
	trans[3][3]	= settr(43,0,10,58,0,"((state_digit==IDLE))", 1, 2, 0);
	T = trans[ 3][10] = settr(50,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(50,2,8,0,0,"ATOMIC", 1, 2, 0);
	T = trans[3][8] = settr(48,2,0,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(48,2,4,0,0,"IF", 1, 2, 0);
	trans[3][4]	= settr(44,0,111,59,59,"(button_alarm)", 1, 2, 0); /* m: 5 -> 111,0 */
	reached3[5] = 1;
	trans[3][5]	= settr(0,0,0,0,0,"state_digit = D1",0,0,0);
	trans[3][6]	= settr(0,0,0,0,0,"next = (time+1)",0,0,0);
	trans[3][7]	= settr(0,0,0,0,0,"button_alarm = 0",0,0,0);
	trans[3][9]	= settr(49,0,111,1,0,".(goto)", 1, 2, 0);
	trans[3][11]	= settr(51,0,20,60,0,"((state_digit==D1))", 1, 2, 0);
	T = trans[ 3][20] = settr(60,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(60,2,18,0,0,"ATOMIC", 1, 2, 0);
	T = trans[3][18] = settr(58,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(58,2,12,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(58,2,14,0,0,"IF", 1, 2, 0);
	trans[3][12]	= settr(52,0,111,61,61,"(((time>=next)&&!(button_alarm)))", 1, 2, 0); /* m: 13 -> 111,0 */
	reached3[13] = 1;
	trans[3][13]	= settr(0,0,0,0,0,"state_digit = IDLE",0,0,0);
	trans[3][19]	= settr(59,0,111,62,62,".(goto)", 1, 2, 0);
	trans[3][14]	= settr(54,0,111,63,63,"((button_alarm&&(time<next)))", 1, 2, 0); /* m: 15 -> 111,0 */
	reached3[15] = 1;
	trans[3][15]	= settr(0,0,0,0,0,"state_digit = D2",0,0,0);
	trans[3][16]	= settr(0,0,0,0,0,"next = (time+1)",0,0,0);
	trans[3][17]	= settr(0,0,0,0,0,"button_alarm = 0",0,0,0);
	trans[3][21]	= settr(61,0,30,64,0,"((state_digit==D2))", 1, 2, 0);
	T = trans[ 3][30] = settr(70,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(70,2,28,0,0,"ATOMIC", 1, 2, 0);
	T = trans[3][28] = settr(68,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(68,2,22,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(68,2,24,0,0,"IF", 1, 2, 0);
	trans[3][22]	= settr(62,0,111,65,65,"(((time>=next)&&!(button_alarm)))", 1, 2, 0); /* m: 23 -> 111,0 */
	reached3[23] = 1;
	trans[3][23]	= settr(0,0,0,0,0,"state_digit = IDLE",0,0,0);
	trans[3][29]	= settr(69,0,111,66,66,".(goto)", 1, 2, 0);
	trans[3][24]	= settr(64,0,111,67,67,"((button_alarm&&(time<next)))", 1, 2, 0); /* m: 25 -> 111,0 */
	reached3[25] = 1;
	trans[3][25]	= settr(0,0,0,0,0,"state_digit = D3",0,0,0);
	trans[3][26]	= settr(0,0,0,0,0,"next = (time+1)",0,0,0);
	trans[3][27]	= settr(0,0,0,0,0,"button_alarm = 0",0,0,0);
	trans[3][31]	= settr(71,0,40,68,0,"((state_digit==D3))", 1, 2, 0);
	T = trans[ 3][40] = settr(80,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(80,2,38,0,0,"ATOMIC", 1, 2, 0);
	T = trans[3][38] = settr(78,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(78,2,32,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(78,2,34,0,0,"IF", 1, 2, 0);
	trans[3][32]	= settr(72,0,111,69,69,"(((time>=next)&&!(button_alarm)))", 1, 2, 0); /* m: 33 -> 111,0 */
	reached3[33] = 1;
	trans[3][33]	= settr(0,0,0,0,0,"state_digit = IDLE",0,0,0);
	trans[3][39]	= settr(79,0,111,70,70,".(goto)", 1, 2, 0);
	trans[3][34]	= settr(74,0,111,71,71,"((button_alarm&&(time<next)))", 1, 2, 0); /* m: 35 -> 111,0 */
	reached3[35] = 1;
	trans[3][35]	= settr(0,0,0,0,0,"state_digit = D4",0,0,0);
	trans[3][36]	= settr(0,0,0,0,0,"next = (time+1)",0,0,0);
	trans[3][37]	= settr(0,0,0,0,0,"button_alarm = 0",0,0,0);
	trans[3][41]	= settr(81,0,50,72,0,"((state_digit==D4))", 1, 2, 0);
	T = trans[ 3][50] = settr(90,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(90,2,48,0,0,"ATOMIC", 1, 2, 0);
	T = trans[3][48] = settr(88,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(88,2,42,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(88,2,44,0,0,"IF", 1, 2, 0);
	trans[3][42]	= settr(82,0,111,73,73,"(((time>=next)&&!(button_alarm)))", 1, 2, 0); /* m: 43 -> 111,0 */
	reached3[43] = 1;
	trans[3][43]	= settr(0,0,0,0,0,"state_digit = IDLE",0,0,0);
	trans[3][49]	= settr(89,0,111,74,74,".(goto)", 1, 2, 0);
	trans[3][44]	= settr(84,0,111,75,75,"((button_alarm&&(time<next)))", 1, 2, 0); /* m: 45 -> 111,0 */
	reached3[45] = 1;
	trans[3][45]	= settr(0,0,0,0,0,"state_digit = D5",0,0,0);
	trans[3][46]	= settr(0,0,0,0,0,"next = (time+1)",0,0,0);
	trans[3][47]	= settr(0,0,0,0,0,"button_alarm = 0",0,0,0);
	trans[3][51]	= settr(91,0,60,76,0,"((state_digit==D5))", 1, 2, 0);
	T = trans[ 3][60] = settr(100,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(100,2,58,0,0,"ATOMIC", 1, 2, 0);
	T = trans[3][58] = settr(98,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(98,2,52,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(98,2,54,0,0,"IF", 1, 2, 0);
	trans[3][52]	= settr(92,0,111,77,77,"(((time>=next)&&!(button_alarm)))", 1, 2, 0); /* m: 53 -> 111,0 */
	reached3[53] = 1;
	trans[3][53]	= settr(0,0,0,0,0,"state_digit = IDLE",0,0,0);
	trans[3][59]	= settr(99,0,111,78,78,".(goto)", 1, 2, 0);
	trans[3][54]	= settr(94,0,111,79,79,"((button_alarm&&(time<next)))", 1, 2, 0); /* m: 55 -> 111,0 */
	reached3[55] = 1;
	trans[3][55]	= settr(0,0,0,0,0,"state_digit = D6",0,0,0);
	trans[3][56]	= settr(0,0,0,0,0,"next = (time+1)",0,0,0);
	trans[3][57]	= settr(0,0,0,0,0,"button_alarm = 0",0,0,0);
	trans[3][61]	= settr(101,0,70,80,0,"((state_digit==D6))", 1, 2, 0);
	T = trans[ 3][70] = settr(110,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(110,2,68,0,0,"ATOMIC", 1, 2, 0);
	T = trans[3][68] = settr(108,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(108,2,62,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(108,2,64,0,0,"IF", 1, 2, 0);
	trans[3][62]	= settr(102,0,111,81,81,"(((time>=next)&&!(button_alarm)))", 1, 2, 0); /* m: 63 -> 111,0 */
	reached3[63] = 1;
	trans[3][63]	= settr(0,0,0,0,0,"state_digit = IDLE",0,0,0);
	trans[3][69]	= settr(109,0,111,82,82,".(goto)", 1, 2, 0);
	trans[3][64]	= settr(104,0,111,83,83,"((button_alarm&&(time<next)))", 1, 2, 0); /* m: 65 -> 111,0 */
	reached3[65] = 1;
	trans[3][65]	= settr(0,0,0,0,0,"state_digit = D7",0,0,0);
	trans[3][66]	= settr(0,0,0,0,0,"next = (time+1)",0,0,0);
	trans[3][67]	= settr(0,0,0,0,0,"button_alarm = 0",0,0,0);
	trans[3][71]	= settr(111,0,80,84,0,"((state_digit==D7))", 1, 2, 0);
	T = trans[ 3][80] = settr(120,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(120,2,78,0,0,"ATOMIC", 1, 2, 0);
	T = trans[3][78] = settr(118,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(118,2,72,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(118,2,74,0,0,"IF", 1, 2, 0);
	trans[3][72]	= settr(112,0,111,85,85,"(((time>=next)&&!(button_alarm)))", 1, 2, 0); /* m: 73 -> 111,0 */
	reached3[73] = 1;
	trans[3][73]	= settr(0,0,0,0,0,"state_digit = IDLE",0,0,0);
	trans[3][79]	= settr(119,0,111,86,86,".(goto)", 1, 2, 0);
	trans[3][74]	= settr(114,0,111,87,87,"((button_alarm&&(time<next)))", 1, 2, 0); /* m: 75 -> 111,0 */
	reached3[75] = 1;
	trans[3][75]	= settr(0,0,0,0,0,"state_digit = D8",0,0,0);
	trans[3][76]	= settr(0,0,0,0,0,"next = (time+1)",0,0,0);
	trans[3][77]	= settr(0,0,0,0,0,"button_alarm = 0",0,0,0);
	trans[3][81]	= settr(121,0,90,88,0,"((state_digit==D8))", 1, 2, 0);
	T = trans[ 3][90] = settr(130,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(130,2,88,0,0,"ATOMIC", 1, 2, 0);
	T = trans[3][88] = settr(128,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(128,2,82,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(128,2,84,0,0,"IF", 1, 2, 0);
	trans[3][82]	= settr(122,0,111,89,89,"(((time>=next)&&!(button_alarm)))", 1, 2, 0); /* m: 83 -> 111,0 */
	reached3[83] = 1;
	trans[3][83]	= settr(0,0,0,0,0,"state_digit = IDLE",0,0,0);
	trans[3][89]	= settr(129,0,111,90,90,".(goto)", 1, 2, 0);
	trans[3][84]	= settr(124,0,111,91,91,"((button_alarm&&(time<next)))", 1, 2, 0); /* m: 85 -> 111,0 */
	reached3[85] = 1;
	trans[3][85]	= settr(0,0,0,0,0,"state_digit = D9",0,0,0);
	trans[3][86]	= settr(0,0,0,0,0,"next = (time+1)",0,0,0);
	trans[3][87]	= settr(0,0,0,0,0,"button_alarm = 0",0,0,0);
	trans[3][91]	= settr(131,0,100,92,0,"((state_digit==D9))", 1, 2, 0);
	T = trans[ 3][100] = settr(140,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(140,2,98,0,0,"ATOMIC", 1, 2, 0);
	T = trans[3][98] = settr(138,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(138,2,92,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(138,2,94,0,0,"IF", 1, 2, 0);
	trans[3][92]	= settr(132,0,111,93,93,"(((time>=next)&&!(button_alarm)))", 1, 2, 0); /* m: 93 -> 111,0 */
	reached3[93] = 1;
	trans[3][93]	= settr(0,0,0,0,0,"state_digit = IDLE",0,0,0);
	trans[3][99]	= settr(139,0,111,94,94,".(goto)", 1, 2, 0);
	trans[3][94]	= settr(134,0,111,95,95,"((button_alarm&&(time<next)))", 1, 2, 0); /* m: 95 -> 111,0 */
	reached3[95] = 1;
	trans[3][95]	= settr(0,0,0,0,0,"state_digit = D0",0,0,0);
	trans[3][96]	= settr(0,0,0,0,0,"next = (time+1)",0,0,0);
	trans[3][97]	= settr(0,0,0,0,0,"button_alarm = 0",0,0,0);
	trans[3][101]	= settr(141,0,110,96,0,"((state_digit==D0))", 1, 2, 0);
	T = trans[ 3][110] = settr(150,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(150,2,108,0,0,"ATOMIC", 1, 2, 0);
	T = trans[3][108] = settr(148,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(148,2,102,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(148,2,104,0,0,"IF", 1, 2, 0);
	trans[3][102]	= settr(142,0,111,97,97,"(((time>=next)&&!(button_alarm)))", 1, 2, 0); /* m: 103 -> 111,0 */
	reached3[103] = 1;
	trans[3][103]	= settr(0,0,0,0,0,"state_digit = IDLE",0,0,0);
	trans[3][109]	= settr(149,0,111,98,98,".(goto)", 1, 2, 0);
	trans[3][104]	= settr(144,0,111,99,99,"((button_alarm&&(time<next)))", 1, 2, 0); /* m: 105 -> 111,0 */
	reached3[105] = 1;
	trans[3][105]	= settr(0,0,0,0,0,"state_digit = D1",0,0,0);
	trans[3][106]	= settr(0,0,0,0,0,"next = (time+1)",0,0,0);
	trans[3][107]	= settr(0,0,0,0,0,"button_alarm = 0",0,0,0);
	trans[3][113]	= settr(153,0,114,1,0,"break", 0, 2, 0);
	trans[3][114]	= settr(154,0,0,100,100,"-end-", 0, 3500, 0);

	/* proctype 2: light_button */

	trans[2] = (Trans **) emalloc(12*sizeof(Trans *));

	trans[2][9]	= settr(38,0,8,1,0,".(goto)", 0, 2, 0);
	T = trans[2][8] = settr(37,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(37,0,5,0,0,"DO", 0, 2, 0);
	T = trans[2][5] = settr(34,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(34,0,1,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(34,0,3,0,0,"IF", 0, 2, 0);
	trans[2][1]	= settr(30,0,2,101,0,"((state_light==LIGHT_OFF))", 1, 2, 0);
	trans[2][2]	= settr(31,0,7,102,102,"button_light = 1", 1, 2, 0);
	trans[2][6]	= settr(35,0,7,1,0,".(goto)", 0, 2, 0);
	trans[2][3]	= settr(32,0,4,103,0,"((state_light==LIGHT_ON))", 1, 2, 0);
	trans[2][4]	= settr(33,0,7,104,104,"button_light = 0", 1, 2, 0);
	trans[2][7]	= settr(36,0,8,105,0,"printf('state_light = %d, button_light = %d \\n',state_light,button_light)", 1, 2, 0);
	trans[2][10]	= settr(39,0,11,1,0,"break", 0, 2, 0);
	trans[2][11]	= settr(40,0,0,106,106,"-end-", 0, 3500, 0);

	/* proctype 1: temp_light */

	trans[1] = (Trans **) emalloc(7*sizeof(Trans *));

	trans[1][4]	= settr(27,0,3,1,0,".(goto)", 0, 2, 0);
	T = trans[1][3] = settr(26,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(26,0,1,0,0,"DO", 0, 2, 0);
	trans[1][1]	= settr(24,0,2,107,107,"time = (time+1)", 1, 2, 0);
	trans[1][2]	= settr(25,0,3,108,0,"printf('state_light = %d, time = %d, next = %d \\n',state_light,time,next)", 1, 2, 0);
	trans[1][5]	= settr(28,0,6,1,0,"break", 0, 2, 0);
	trans[1][6]	= settr(29,0,0,109,109,"-end-", 0, 3500, 0);

	/* proctype 0: fsm_light */

	trans[0] = (Trans **) emalloc(25*sizeof(Trans *));

	trans[0][1]	= settr(0,0,2,110,110,"state_light = LIGHT_OFF", 1, 2, 0);
	trans[0][2]	= settr(1,0,21,111,111,"next = time", 1, 2, 0);
	trans[0][22]	= settr(21,0,21,1,0,".(goto)", 0, 2, 0);
	T = trans[0][21] = settr(20,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(20,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(20,0,11,0,0,"DO", 0, 2, 0);
	trans[0][3]	= settr(2,0,10,112,0,"((state_light==LIGHT_OFF))", 1, 2, 0);
	T = trans[ 0][10] = settr(9,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(9,2,8,0,0,"ATOMIC", 1, 2, 0);
	T = trans[0][8] = settr(7,2,0,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(7,2,4,0,0,"IF", 1, 2, 0);
	trans[0][4]	= settr(3,0,21,113,113,"(button_light)", 1, 2, 0); /* m: 5 -> 21,0 */
	reached0[5] = 1;
	trans[0][5]	= settr(0,0,0,0,0,"state_light = LIGHT_ON",0,0,0);
	trans[0][6]	= settr(0,0,0,0,0,"button_light = 0",0,0,0);
	trans[0][7]	= settr(0,0,0,0,0,"next = (time+60)",0,0,0);
	trans[0][9]	= settr(8,0,21,1,0,".(goto)", 1, 2, 0);
	trans[0][11]	= settr(10,0,20,114,0,"((state_light==LIGHT_ON))", 1, 2, 0);
	T = trans[ 0][20] = settr(19,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(19,2,18,0,0,"ATOMIC", 1, 2, 0);
	T = trans[0][18] = settr(17,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(17,2,12,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(17,2,16,0,0,"IF", 1, 2, 0);
	trans[0][12]	= settr(11,0,21,115,115,"(button_light)", 1, 2, 0); /* m: 13 -> 21,0 */
	reached0[13] = 1;
	trans[0][13]	= settr(0,0,0,0,0,"state_light = LIGHT_ON",0,0,0);
	trans[0][14]	= settr(0,0,0,0,0,"button_light = 0",0,0,0);
	trans[0][15]	= settr(0,0,0,0,0,"next = (time+60)",0,0,0);
	trans[0][19]	= settr(18,0,21,116,116,".(goto)", 1, 2, 0);
	trans[0][16]	= settr(15,0,21,117,117,"((time>=next))", 1, 2, 0); /* m: 17 -> 21,0 */
	reached0[17] = 1;
	trans[0][17]	= settr(0,0,0,0,0,"state_light = LIGHT_OFF",0,0,0);
	trans[0][23]	= settr(22,0,24,1,0,"break", 0, 2, 0);
	trans[0][24]	= settr(23,0,0,118,118,"-end-", 0, 3500, 0);
	/* np_ demon: */
	trans[_NP_] = (Trans **) emalloc(2*sizeof(Trans *));
	T = trans[_NP_][0] = settr(9997,0,1,_T5,0,"(np_)", 1,2,0);
	    T->nxt	  = settr(9998,0,0,_T2,0,"(1)",   0,2,0);
	T = trans[_NP_][1] = settr(9999,0,1,_T5,0,"(np_)", 1,2,0);
}

Trans *
settr(	int t_id, int a, int b, int c, int d,
	char *t, int g, int tpe0, int tpe1)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	tmp->atom  = a&(6|32);	/* only (2|8|32) have meaning */
	if (!g) tmp->atom |= 8;	/* no global references */
	tmp->st    = b;
	tmp->tpe[0] = tpe0;
	tmp->tpe[1] = tpe1;
	tmp->tp    = t;
	tmp->t_id  = t_id;
	tmp->forw  = c;
	tmp->back  = d;
	return tmp;
}

Trans *
cpytr(Trans *a)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	int i;
	tmp->atom  = a->atom;
	tmp->st    = a->st;
#ifdef HAS_UNLESS
	tmp->e_trans = a->e_trans;
	for (i = 0; i < HAS_UNLESS; i++)
		tmp->escp[i] = a->escp[i];
#endif
	tmp->tpe[0] = a->tpe[0];
	tmp->tpe[1] = a->tpe[1];
	for (i = 0; i < 6; i++)
	{	tmp->qu[i] = a->qu[i];
		tmp->ty[i] = a->ty[i];
	}
	tmp->tp    = (char *) emalloc(strlen(a->tp)+1);
	strcpy(tmp->tp, a->tp);
	tmp->t_id  = a->t_id;
	tmp->forw  = a->forw;
	tmp->back  = a->back;
	return tmp;
}

#ifndef NOREDUCE
int
srinc_set(int n)
{	if (n <= 2) return LOCAL;
	if (n <= 2+  DELTA) return Q_FULL_F; /* 's' or nfull  */
	if (n <= 2+2*DELTA) return Q_EMPT_F; /* 'r' or nempty */
	if (n <= 2+3*DELTA) return Q_EMPT_T; /* empty */
	if (n <= 2+4*DELTA) return Q_FULL_T; /* full  */
	if (n ==   5*DELTA) return GLOBAL;
	if (n ==   6*DELTA) return TIMEOUT_F;
	if (n ==   7*DELTA) return ALPHA_F;
	Uerror("cannot happen srinc_class");
	return BAD;
}
int
srunc(int n, int m)
{	switch(m) {
	case Q_FULL_F: return n-2;
	case Q_EMPT_F: return n-2-DELTA;
	case Q_EMPT_T: return n-2-2*DELTA;
	case Q_FULL_T: return n-2-3*DELTA;
	case ALPHA_F:
	case TIMEOUT_F: return 257; /* non-zero, and > MAXQ */
	}
	Uerror("cannot happen srunc");
	return 0;
}
#endif
int cnt;
#ifdef HAS_UNLESS
int
isthere(Trans *a, int b)
{	Trans *t;
	for (t = a; t; t = t->nxt)
		if (t->t_id == b)
			return 1;
	return 0;
}
#endif
#ifndef NOREDUCE
int
mark_safety(Trans *t) /* for conditional safety */
{	int g = 0, i, j, k;

	if (!t) return 0;
	if (t->qu[0])
		return (t->qu[1])?2:1;	/* marked */

	for (i = 0; i < 2; i++)
	{	j = srinc_set(t->tpe[i]);
		if (j >= GLOBAL && j != ALPHA_F)
			return -1;
		if (j != LOCAL)
		{	k = srunc(t->tpe[i], j);
			if (g == 0
			||  t->qu[0] != k
			||  t->ty[0] != j)
			{	t->qu[g] = k;
				t->ty[g] = j;
				g++;
	}	}	}
	return g;
}
#endif
void
retrans(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
	/* process n, with m states, is=initial state */
{	Trans *T0, *T1, *T2, *T3;
	Trans *T4, *T5; /* t_reverse or has_unless */
	int i;
#if defined(HAS_UNLESS) || !defined(NOREDUCE)
	int k;
#endif
#ifndef NOREDUCE
	int g, h, j, aa;
#endif
#ifdef HAS_UNLESS
	int p;
#endif
	if (state_tables >= 4)
	{	printf("STEP 1 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	do {
		for (i = 1, cnt = 0; i < m; i++)
		{	T2 = trans[n][i];
			T1 = T2?T2->nxt:(Trans *)0;
/* prescan: */		for (T0 = T1; T0; T0 = T0->nxt)
/* choice in choice */	{	if (T0->st && trans[n][T0->st]
				&&  trans[n][T0->st]->nxt)
					break;
			}
#if 0
		if (T0)
		printf("\tstate %d / %d: choice in choice\n",
		i, T0->st);
#endif
			if (T0)
			for (T0 = T1; T0; T0 = T0->nxt)
			{	T3 = trans[n][T0->st];
				if (!T3->nxt)
				{	T2->nxt = cpytr(T0);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
					continue;
				}
				do {	T3 = T3->nxt;
					T2->nxt = cpytr(T3);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
				} while (T3->nxt);
				cnt++;
			}
		}
	} while (cnt);
	if (state_tables >= 3)
	{	printf("STEP 2 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	for (i = 1; i < m; i++)
	{	if (trans[n][i] && trans[n][i]->nxt) /* optimize */
		{	T1 = trans[n][i]->nxt;
#if 0
			printf("\t\tpull %d (%d) to %d\n",
			T1->st, T1->forw, i);
#endif
			srcln[i] = srcln[T1->st];	/* Oyvind Teig, 5.2.0 */

			if (!trans[n][T1->st]) continue;
			T0 = cpytr(trans[n][T1->st]);
			trans[n][i] = T0;
			reach[T1->st] = 1;
			imed(T0, T1->st, n, i);
			for (T1 = T1->nxt; T1; T1 = T1->nxt)
			{
#if 0
			printf("\t\tpull %d (%d) to %d\n",
				T1->st, T1->forw, i);
#endif
		/*		srcln[i] = srcln[T1->st];  gh: not useful */
				if (!trans[n][T1->st]) continue;
				T0->nxt = cpytr(trans[n][T1->st]);
				T0 = T0->nxt;
				reach[T1->st] = 1;
				imed(T0, T1->st, n, i);
	}	}	}
	if (state_tables >= 2)
	{	printf("STEP 3 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
#ifdef HAS_UNLESS
	for (i = 1; i < m; i++)
	{	if (!trans[n][i]) continue;
		/* check for each state i if an
		 * escape to some state p is defined
		 * if so, copy and mark p's transitions
		 * and prepend them to the transition-
		 * list of state i
		 */
	 if (!like_java) /* the default */
	 {	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->e_trans = p;
				T2->nxt = trans[n][i];
				trans[n][i] = T2;
		}	}
	 } else /* outermost unless checked first */
	 {	T4 = T3 = (Trans *) 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->nxt = (Trans *) 0;
				T2->e_trans = p;
				if (T3)	T3->nxt = T2;
				else	T4 = T2;
				T3 = T2;
		}	}
		if (T4)
		{	T3->nxt = trans[n][i];
			trans[n][i] = T4;
		}
	 }
	}
#endif
#ifndef NOREDUCE
	for (i = 1; i < m; i++)
	{	if (a_cycles)
		{ /* moves through these states are visible */
	#if PROG_LAB>0 && defined(HAS_NP)
			if (progstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (progstate[n][T1->st])
					goto degrade;
	#endif
			if (accpstate[n][i] || visstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (accpstate[n][T1->st])
					goto degrade;
		}
		T1 = trans[n][i];
		if (!T1) continue;
		g = mark_safety(T1);	/* V3.3.1 */
		if (g < 0) goto degrade; /* global */
		/* check if mixing of guards preserves reduction */
		if (T1->nxt)
		{	k = 0;
			for (T0 = T1; T0; T0 = T0->nxt)
			{	if (!(T0->atom&8))
					goto degrade;
				for (aa = 0; aa < 2; aa++)
				{	j = srinc_set(T0->tpe[aa]);
					if (j >= GLOBAL && j != ALPHA_F)
						goto degrade;
					if (T0->tpe[aa]
					&&  T0->tpe[aa]
					!=  T1->tpe[0])
						k = 1;
			}	}
			/* g = 0;	V3.3.1 */
			if (k)	/* non-uniform selection */
			for (T0 = T1; T0; T0 = T0->nxt)
			for (aa = 0; aa < 2; aa++)
			{	j = srinc_set(T0->tpe[aa]);
				if (j != LOCAL)
				{	k = srunc(T0->tpe[aa], j);
					for (h = 0; h < 6; h++)
						if (T1->qu[h] == k
						&&  T1->ty[h] == j)
							break;
					if (h >= 6)
					{	T1->qu[g%6] = k;
						T1->ty[g%6] = j;
						g++;
			}	}	}
			if (g > 6)
			{	T1->qu[0] = 0;	/* turn it off */
				printf("pan: warning, line %d, ",
					srcln[i]);
			 	printf("too many stmnt types (%d)",
					g);
			  	printf(" in selection\n");
			  goto degrade;
			}
		}
		/* mark all options global if >=1 is global */
		for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			if (!(T1->atom&8)) break;
		if (T1)
degrade:	for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			T1->atom &= ~8;	/* mark as unsafe */
		/* can only mix 'r's or 's's if on same chan */
		/* and not mixed with other local operations */
		T1 = trans[n][i];
		if (!T1 || T1->qu[0]) continue;
		j = T1->tpe[0];
		if (T1->nxt && T1->atom&8)
		{ if (j == 5*DELTA)
		  {	printf("warning: line %d ", srcln[i]);
			printf("mixed condition ");
			printf("(defeats reduction)\n");
			goto degrade;
		  }
		  for (T0 = T1; T0; T0 = T0->nxt)
		  for (aa = 0; aa < 2; aa++)
		  if  (T0->tpe[aa] && T0->tpe[aa] != j)
		  {	printf("warning: line %d ", srcln[i]);
			printf("[%d-%d] mixed %stion ",
				T0->tpe[aa], j, 
				(j==5*DELTA)?"condi":"selec");
			printf("(defeats reduction)\n");
			printf("	'%s' <-> '%s'\n",
				T1->tp, T0->tp);
			goto degrade;
		} }
	}
#endif
	for (i = 1; i < m; i++)
	{	T2 = trans[n][i];
		if (!T2
		||  T2->nxt
		||  strncmp(T2->tp, ".(goto)", 7)
		||  !stopstate[n][i])
			continue;
		stopstate[n][T2->st] = 1;
	}
	if (state_tables && !verbose)
	{	if (dodot)
		{	char buf[256], *q = buf, *p = procname[n];
			while (*p != '\0')
			{	if (*p != ':')
				{	*q++ = *p;
				}
				p++;
			}
			*q = '\0';
			printf("digraph ");
			switch (Btypes[n]) {
			case I_PROC:  printf("init {\n"); break;
			case N_CLAIM: printf("claim_%s {\n", buf); break;
			case E_TRACE: printf("notrace {\n"); break;
			case N_TRACE: printf("trace {\n"); break;
			default:      printf("p_%s {\n", buf); break;
			}
			printf("size=\"8,10\";\n");
			printf("  GT [shape=box,style=dotted,label=\"%s\"];\n", buf);
			printf("  GT -> S%d;\n", is);
		} else
		{	switch (Btypes[n]) {
			case I_PROC:  printf("init\n"); break;
			case N_CLAIM: printf("claim %s\n", procname[n]); break;
			case E_TRACE: printf("notrace assertion\n"); break;
			case N_TRACE: printf("trace assertion\n"); break;
			default:      printf("proctype %s\n", procname[n]); break;
		}	}
		for (i = 1; i < m; i++)
		{	reach[i] = 1;
		}
		tagtable(n, m, is, srcln, reach);
		if (dodot) printf("}\n");
	} else
	for (i = 1; i < m; i++)
	{	int nrelse;
		if (Btypes[n] != N_CLAIM)
		{	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			{	if (T0->st == i
				&& strcmp(T0->tp, "(1)") == 0)
				{	printf("error: proctype '%s' ",
						procname[n]);
		  			printf("line %d, state %d: has un",
						srcln[i], i);
					printf("conditional self-loop\n");
					pan_exit(1);
		}	}	}
		nrelse = 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		{	if (strcmp(T0->tp, "else") == 0)
				nrelse++;
		}
		if (nrelse > 1)
		{	printf("error: proctype '%s' state",
				procname[n]);
		  	printf(" %d, inherits %d", i, nrelse);
		  	printf(" 'else' stmnts\n");
			pan_exit(1);
	}	}
#if !defined(LOOPSTATE) && !defined(BFS_PAR)
	if (state_tables)
#endif
	do_dfs(n, m, is, srcln, reach, lpstate);

	if (!t_reverse)
	{	return;
	}
	/* process n, with m states, is=initial state -- reverse list */
	if (!state_tables && Btypes[n] != N_CLAIM)
	{	for (i = 1; i < m; i++)
		{	Trans *Tx = (Trans *) 0; /* list of escapes */
			Trans *Ty = (Trans *) 0; /* its tail element */
			T1 = (Trans *) 0; /* reversed list */
			T2 = (Trans *) 0; /* its tail */
			T3 = (Trans *) 0; /* remembers possible 'else' */

			/* find unless-escapes, they should go first */
			T4 = T5 = T0 = trans[n][i];
	#ifdef HAS_UNLESS
			while (T4 && T4->e_trans) /* escapes are first in orig list */
			{	T5 = T4;	  /* remember predecessor */
				T4 = T4->nxt;
			}
	#endif
			/* T4 points to first non-escape, T5 to its parent, T0 to original list */
			if (T4 != T0)		 /* there was at least one escape */
			{	T3 = T5->nxt;		 /* start of non-escapes */
				T5->nxt = (Trans *) 0;	 /* separate */
				Tx = T0;		 /* start of the escapes */
				Ty = T5;		 /* its tail */
				T0 = T3;		 /* the rest, to be reversed */
			}
			/* T0 points to first non-escape, Tx to the list of escapes, Ty to its tail */

			/* first tail-add non-escape transitions, reversed */
			T3 = (Trans *) 0;
			for (T5 = T0; T5; T5 = T4)
			{	T4 = T5->nxt;
	#ifdef HAS_UNLESS
				if (T5->e_trans)
				{	printf("error: cannot happen!\n");
					continue;
				}
	#endif
				if (strcmp(T5->tp, "else") == 0)
				{	T3 = T5;
					T5->nxt = (Trans *) 0;
				} else
				{	T5->nxt = T1;
					if (!T1) { T2 = T5; }
					T1 = T5;
			}	}
			/* T3 points to a possible else, which is removed from the list */
			/* T1 points to the reversed list so far (without escapes) */
			/* T2 points to the tail element -- where the else should go */
			if (T2 && T3)
			{	T2->nxt = T3;	/* add else */
			} else
			{	if (T3) /* there was an else, but there's no tail */
				{	if (!T1)	/* and no reversed list */
					{	T1 = T3; /* odd, but possible */
					} else		/* even stranger */
					{	T1->nxt = T3;
			}	}	}

			/* add in the escapes, to that they appear at the front */
			if (Tx && Ty) { Ty->nxt = T1; T1 = Tx; }

			trans[n][i] = T1;
			/* reversed, with escapes first and else last */
	}	}
	if (state_tables && verbose)
	{	printf("FINAL proctype %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
	}
}
void
imed(Trans *T, int v, int n, int j)	/* set intermediate state */
{	progstate[n][T->st] |= progstate[n][v];
	accpstate[n][T->st] |= accpstate[n][v];
	stopstate[n][T->st] |= stopstate[n][v];
	mapstate[n][j] = T->st;
}
void
tagtable(int n, int m, int is, short srcln[], uchar reach[])
{	Trans *z;

	if (is >= m || !trans[n][is]
	||  is <= 0 || reach[is] == 0)
		return;
	reach[is] = 0;
	if (state_tables)
	for (z = trans[n][is]; z; z = z->nxt)
	{	if (dodot)
			dot_crack(n, is, z);
		else
			crack(n, is, z, srcln);
	}

	for (z = trans[n][is]; z; z = z->nxt)
	{
#ifdef HAS_UNLESS
		int i, j;
#endif
		tagtable(n, m, z->st, srcln, reach);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			tagtable(n, m, j, srcln, reach);
		}
#endif
	}
}

extern Trans *t_id_lkup[];

void
dfs_table(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	Trans *z;

	if (is >= m || is <= 0 || !trans[n][is])
		return;
	if ((reach[is] & (4|8|16)) != 0)
	{	if ((reach[is] & (8|16)) == 16)	/* on stack, not yet recorded */
		{	lpstate[is] = 1;
			reach[is] |= 8; /* recorded */
			if (state_tables && verbose)
			{	printf("state %d line %d is a loopstate\n", is, srcln[is]);
		}	}
		return;
	}
	reach[is] |= (4|16);	/* visited | onstack */
	for (z = trans[n][is]; z; z = z->nxt)
	{	t_id_lkup[z->t_id] = z;
#ifdef HAS_UNLESS
		int i, j;
#endif
		dfs_table(n, m, z->st, srcln, reach, lpstate);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			dfs_table(n, m, j, srcln, reach, lpstate);
		}
#endif
	}
	reach[is] &= ~16; /* no longer on stack */
}
void
do_dfs(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	int i;
	dfs_table(n, m, is, srcln, reach, lpstate);
	for (i = 0; i < m; i++)
		reach[i] &= ~(4|8|16);
}
void
crack(int n, int j, Trans *z, short srcln[])
{	int i;

	if (!z) return;
	printf("	state %3d -(tr %3d)-> state %3d  ",
		j, z->forw, z->st);
	printf("[id %3d tp %3d", z->t_id, z->tpe[0]);
	if (z->tpe[1]) printf(",%d", z->tpe[1]);
#ifdef HAS_UNLESS
	if (z->e_trans)
		printf(" org %3d", z->e_trans);
	else if (state_tables >= 2)
	for (i = 0; i < HAS_UNLESS; i++)
	{	if (!z->escp[i]) break;
		printf(" esc %d", z->escp[i]);
	}
#endif
	printf("]");
	printf(" [%s%s%s%s%s] %s:%d => ",
		z->atom&6?"A":z->atom&32?"D":"-",
		accpstate[n][j]?"a" :"-",
		stopstate[n][j]?"e" : "-",
		progstate[n][j]?"p" : "-",
		z->atom & 8 ?"L":"G",
		PanSource, srcln[j]);
	for (i = 0; z->tp[i]; i++)
		if (z->tp[i] == '\n')
			printf("\\n");
		else
			putchar(z->tp[i]);
	if (verbose && z->qu[0])
	{	printf("\t[");
		for (i = 0; i < 6; i++)
			if (z->qu[i])
				printf("(%d,%d)",
				z->qu[i], z->ty[i]);
		printf("]");
	}
	printf("\n");
	fflush(stdout);
}
/* spin -a m.pml; cc -o pan pan.c; ./pan -D | dot -Tps > foo.ps; ps2pdf foo.ps */
void
dot_crack(int n, int j, Trans *z)
{	int i;

	if (!z) return;
	printf("	S%d -> S%d  [color=black", j, z->st);

	if (z->atom&6) printf(",style=dashed");
	else if (z->atom&32) printf(",style=dotted");
	else if (z->atom&8) printf(",style=solid");
	else printf(",style=bold");

	printf(",label=\"");
	for (i = 0; z->tp[i]; i++)
	{	if (z->tp[i] == '\\'
		&&  z->tp[i+1] == 'n')
		{	i++; printf(" ");
		} else
		{	putchar(z->tp[i]);
	}	}
	printf("\"];\n");
	if (accpstate[n][j]) printf("  S%d [color=red,style=bold];\n", j);
	else if (progstate[n][j]) printf("  S%d [color=green,style=bold];\n", j);
	if (stopstate[n][j]) printf("  S%d [color=blue,style=bold,shape=box];\n", j);
}

#ifdef VAR_RANGES
#define BYTESIZE	32	/* 2^8 : 2^3 = 256:8 = 32 */

typedef struct Vr_Ptr {
	char	*nm;
	uchar	vals[BYTESIZE];
	struct Vr_Ptr *nxt;
} Vr_Ptr;
Vr_Ptr *ranges = (Vr_Ptr *) 0;

void
logval(char *s, int v)
{	Vr_Ptr *tmp;

	if (v<0 || v > 255) return;
	for (tmp = ranges; tmp; tmp = tmp->nxt)
		if (!strcmp(tmp->nm, s))
			goto found;
	tmp = (Vr_Ptr *) emalloc(sizeof(Vr_Ptr));
	tmp->nxt = ranges;
	ranges = tmp;
	tmp->nm = s;
found:
	tmp->vals[(v)/8] |= 1<<((v)%8);
}

void
dumpval(uchar X[], int range)
{	int w, x, i, j = -1;

	for (w = i = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
from:		if ((X[w] & (1<<x)))
		{	printf("%d", i);
			j = i;
			goto upto;
	}	}
	return;
	for (w = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
upto:		if (!(X[w] & (1<<x)))
		{	if (i-1 == j)
				printf(", ");
			else
				printf("-%d, ", i-1);
			goto from;
	}	}
	if (j >= 0 && j != 255)
		printf("-255");
}

void
dumpranges(void)
{	Vr_Ptr *tmp;
	printf("\nValues assigned within ");
	printf("interval [0..255]:\n");
	for (tmp = ranges; tmp; tmp = tmp->nxt)
	{	printf("\t%s\t: ", tmp->nm);
		dumpval(tmp->vals, BYTESIZE);
		printf("\n");
	}
}
#endif

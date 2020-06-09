#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* PROC alarm_button */
	case 3: // STATE 1 - model.pml:258 - [((state_digit==IDLE))] (0:0:0 - 1)
		IfNotBlocked
		reached[6][1] = 1;
		if (!((now.state_digit==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - model.pml:258 - [button_alarm = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[6][2] = 1;
		(trpt+1)->bup.oval = ((int)now.button_alarm);
		now.button_alarm = 1;
#ifdef VAR_RANGES
		logval("button_alarm", ((int)now.button_alarm));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - model.pml:259 - [((state_digit==D1))] (0:0:0 - 1)
		IfNotBlocked
		reached[6][3] = 1;
		if (!((now.state_digit==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 4 - model.pml:259 - [button_alarm = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[6][4] = 1;
		(trpt+1)->bup.oval = ((int)now.button_alarm);
		now.button_alarm = 1;
#ifdef VAR_RANGES
		logval("button_alarm", ((int)now.button_alarm));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 5 - model.pml:260 - [((state_digit==D2))] (0:0:0 - 1)
		IfNotBlocked
		reached[6][5] = 1;
		if (!((now.state_digit==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 6 - model.pml:260 - [button_alarm = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[6][6] = 1;
		(trpt+1)->bup.oval = ((int)now.button_alarm);
		now.button_alarm = 0;
#ifdef VAR_RANGES
		logval("button_alarm", ((int)now.button_alarm));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 7 - model.pml:261 - [((state_digit==D3))] (0:0:0 - 1)
		IfNotBlocked
		reached[6][7] = 1;
		if (!((now.state_digit==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 8 - model.pml:261 - [button_alarm = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[6][8] = 1;
		(trpt+1)->bup.oval = ((int)now.button_alarm);
		now.button_alarm = 0;
#ifdef VAR_RANGES
		logval("button_alarm", ((int)now.button_alarm));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 9 - model.pml:262 - [((state_digit==D4))] (0:0:0 - 1)
		IfNotBlocked
		reached[6][9] = 1;
		if (!((now.state_digit==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 10 - model.pml:262 - [button_alarm = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[6][10] = 1;
		(trpt+1)->bup.oval = ((int)now.button_alarm);
		now.button_alarm = 0;
#ifdef VAR_RANGES
		logval("button_alarm", ((int)now.button_alarm));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 11 - model.pml:263 - [((state_digit==D5))] (0:0:0 - 1)
		IfNotBlocked
		reached[6][11] = 1;
		if (!((now.state_digit==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 12 - model.pml:263 - [button_alarm = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[6][12] = 1;
		(trpt+1)->bup.oval = ((int)now.button_alarm);
		now.button_alarm = 0;
#ifdef VAR_RANGES
		logval("button_alarm", ((int)now.button_alarm));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 13 - model.pml:264 - [((state_digit==D6))] (0:0:0 - 1)
		IfNotBlocked
		reached[6][13] = 1;
		if (!((now.state_digit==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 14 - model.pml:264 - [button_alarm = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[6][14] = 1;
		(trpt+1)->bup.oval = ((int)now.button_alarm);
		now.button_alarm = 0;
#ifdef VAR_RANGES
		logval("button_alarm", ((int)now.button_alarm));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 15 - model.pml:265 - [((state_digit==D7))] (0:0:0 - 1)
		IfNotBlocked
		reached[6][15] = 1;
		if (!((now.state_digit==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 16 - model.pml:265 - [button_alarm = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[6][16] = 1;
		(trpt+1)->bup.oval = ((int)now.button_alarm);
		now.button_alarm = 0;
#ifdef VAR_RANGES
		logval("button_alarm", ((int)now.button_alarm));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 17 - model.pml:266 - [((state_digit==D8))] (0:0:0 - 1)
		IfNotBlocked
		reached[6][17] = 1;
		if (!((now.state_digit==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 18 - model.pml:266 - [button_alarm = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[6][18] = 1;
		(trpt+1)->bup.oval = ((int)now.button_alarm);
		now.button_alarm = 0;
#ifdef VAR_RANGES
		logval("button_alarm", ((int)now.button_alarm));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 19 - model.pml:267 - [((state_digit==D9))] (0:0:0 - 1)
		IfNotBlocked
		reached[6][19] = 1;
		if (!((now.state_digit==14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 20 - model.pml:267 - [button_alarm = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[6][20] = 1;
		(trpt+1)->bup.oval = ((int)now.button_alarm);
		now.button_alarm = 0;
#ifdef VAR_RANGES
		logval("button_alarm", ((int)now.button_alarm));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 21 - model.pml:268 - [((state_digit==D0))] (0:0:0 - 1)
		IfNotBlocked
		reached[6][21] = 1;
		if (!((now.state_digit==13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 22 - model.pml:268 - [button_alarm = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[6][22] = 1;
		(trpt+1)->bup.oval = ((int)now.button_alarm);
		now.button_alarm = 0;
#ifdef VAR_RANGES
		logval("button_alarm", ((int)now.button_alarm));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 25 - model.pml:271 - [printf('state_alarm = %d, state_digit = %d, button_alarm = %d \\n',state_alarm,state_digit,button_alarm)] (0:0:0 - 12)
		IfNotBlocked
		reached[6][25] = 1;
		Printf("state_alarm = %d, state_digit = %d, button_alarm = %d \n", now.state_alarm, now.state_digit, ((int)now.button_alarm));
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 29 - model.pml:273 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[6][29] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC temp_alarm */
	case 27: // STATE 1 - model.pml:248 - [time = (time+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[5][1] = 1;
		(trpt+1)->bup.oval = now._time;
		now._time = (now._time+1);
#ifdef VAR_RANGES
		logval("time", now._time);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 2 - model.pml:250 - [printf('state_alarm = %d, state_digit = %d, time = %d, next = %d \\n',state_alarm,state_digit,time,next)] (0:0:0 - 1)
		IfNotBlocked
		reached[5][2] = 1;
		Printf("state_alarm = %d, state_digit = %d, time = %d, next = %d \n", now.state_alarm, now.state_digit, now._time, now._next);
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 6 - model.pml:253 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[5][6] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC fsm_alarm */
	case 30: // STATE 1 - model.pml:203 - [state_alarm = DISARMED] (0:0:1 - 1)
		IfNotBlocked
		reached[4][1] = 1;
		(trpt+1)->bup.oval = now.state_alarm;
		now.state_alarm = 12;
#ifdef VAR_RANGES
		logval("state_alarm", now.state_alarm);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 2 - model.pml:204 - [time = next] (0:0:1 - 1)
		IfNotBlocked
		reached[4][2] = 1;
		(trpt+1)->bup.oval = now._time;
		now._time = now._next;
#ifdef VAR_RANGES
		logval("time", now._time);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 3 - model.pml:207 - [((state_alarm==DISARMED))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][3] = 1;
		if (!((now.state_alarm==12)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 4 - model.pml:209 - [(digit_out)] (51:0:1 - 1)
		IfNotBlocked
		reached[4][4] = 1;
		if (!(((int)now.digit_out)))
			continue;
		/* merge: state_alarm = DIGIT1(51, 5, 51) */
		reached[4][5] = 1;
		(trpt+1)->bup.oval = now.state_alarm;
		now.state_alarm = 11;
#ifdef VAR_RANGES
		logval("state_alarm", now.state_alarm);
#endif
		;
		/* merge: .(goto)(51, 7, 51) */
		reached[4][7] = 1;
		;
		/* merge: .(goto)(0, 52, 51) */
		reached[4][52] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 34: // STATE 9 - model.pml:212 - [((state_alarm==DIGIT1))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][9] = 1;
		if (!((now.state_alarm==11)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 10 - model.pml:214 - [(digit_out)] (51:0:1 - 1)
		IfNotBlocked
		reached[4][10] = 1;
		if (!(((int)now.digit_out)))
			continue;
		/* merge: state_alarm = DIGIT2(51, 11, 51) */
		reached[4][11] = 1;
		(trpt+1)->bup.oval = now.state_alarm;
		now.state_alarm = 10;
#ifdef VAR_RANGES
		logval("state_alarm", now.state_alarm);
#endif
		;
		/* merge: .(goto)(51, 15, 51) */
		reached[4][15] = 1;
		;
		/* merge: .(goto)(0, 52, 51) */
		reached[4][52] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 36: // STATE 15 - model.pml:217 - [.(goto)] (0:51:0 - 2)
		IfNotBlocked
		reached[4][15] = 1;
		;
		/* merge: .(goto)(0, 52, 51) */
		reached[4][52] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 37: // STATE 12 - model.pml:215 - [((armed&&presence))] (51:0:1 - 1)
		IfNotBlocked
		reached[4][12] = 1;
		if (!((((int)now.armed)&&((int)now.presence))))
			continue;
		/* merge: state_alarm = ALERT1(51, 13, 51) */
		reached[4][13] = 1;
		(trpt+1)->bup.oval = now.state_alarm;
		now.state_alarm = 6;
#ifdef VAR_RANGES
		logval("state_alarm", now.state_alarm);
#endif
		;
		/* merge: .(goto)(51, 15, 51) */
		reached[4][15] = 1;
		;
		/* merge: .(goto)(0, 52, 51) */
		reached[4][52] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 38: // STATE 17 - model.pml:218 - [((state_alarm==DIGIT2))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][17] = 1;
		if (!((now.state_alarm==10)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 18 - model.pml:220 - [(digit_out)] (51:0:1 - 1)
		IfNotBlocked
		reached[4][18] = 1;
		if (!(((int)now.digit_out)))
			continue;
		/* merge: state_alarm = DIGIT3(51, 19, 51) */
		reached[4][19] = 1;
		(trpt+1)->bup.oval = now.state_alarm;
		now.state_alarm = 9;
#ifdef VAR_RANGES
		logval("state_alarm", now.state_alarm);
#endif
		;
		/* merge: .(goto)(51, 23, 51) */
		reached[4][23] = 1;
		;
		/* merge: .(goto)(0, 52, 51) */
		reached[4][52] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 40: // STATE 23 - model.pml:223 - [.(goto)] (0:51:0 - 2)
		IfNotBlocked
		reached[4][23] = 1;
		;
		/* merge: .(goto)(0, 52, 51) */
		reached[4][52] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 41: // STATE 20 - model.pml:221 - [((armed&&presence))] (51:0:1 - 1)
		IfNotBlocked
		reached[4][20] = 1;
		if (!((((int)now.armed)&&((int)now.presence))))
			continue;
		/* merge: state_alarm = ALERT2(51, 21, 51) */
		reached[4][21] = 1;
		(trpt+1)->bup.oval = now.state_alarm;
		now.state_alarm = 5;
#ifdef VAR_RANGES
		logval("state_alarm", now.state_alarm);
#endif
		;
		/* merge: .(goto)(51, 23, 51) */
		reached[4][23] = 1;
		;
		/* merge: .(goto)(0, 52, 51) */
		reached[4][52] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 42: // STATE 25 - model.pml:224 - [((state_alarm==DIGIT3))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][25] = 1;
		if (!((now.state_alarm==9)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 26 - model.pml:226 - [((armed&&code_ok))] (51:0:1 - 1)
		IfNotBlocked
		reached[4][26] = 1;
		if (!((((int)now.armed)&&((int)now.code_ok))))
			continue;
		/* merge: state_alarm = DISARMED(51, 27, 51) */
		reached[4][27] = 1;
		(trpt+1)->bup.oval = now.state_alarm;
		now.state_alarm = 12;
#ifdef VAR_RANGES
		logval("state_alarm", now.state_alarm);
#endif
		;
		/* merge: .(goto)(51, 33, 51) */
		reached[4][33] = 1;
		;
		/* merge: .(goto)(0, 52, 51) */
		reached[4][52] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 44: // STATE 33 - model.pml:230 - [.(goto)] (0:51:0 - 3)
		IfNotBlocked
		reached[4][33] = 1;
		;
		/* merge: .(goto)(0, 52, 51) */
		reached[4][52] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 45: // STATE 28 - model.pml:227 - [((!(armed)&&code_ok))] (51:0:1 - 1)
		IfNotBlocked
		reached[4][28] = 1;
		if (!(( !(((int)now.armed))&&((int)now.code_ok))))
			continue;
		/* merge: state_alarm = ARMED(51, 29, 51) */
		reached[4][29] = 1;
		(trpt+1)->bup.oval = now.state_alarm;
		now.state_alarm = 8;
#ifdef VAR_RANGES
		logval("state_alarm", now.state_alarm);
#endif
		;
		/* merge: .(goto)(51, 33, 51) */
		reached[4][33] = 1;
		;
		/* merge: .(goto)(0, 52, 51) */
		reached[4][52] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 46: // STATE 30 - model.pml:228 - [(!(code_ok))] (51:0:1 - 1)
		IfNotBlocked
		reached[4][30] = 1;
		if (!( !(((int)now.code_ok))))
			continue;
		/* merge: state_alarm = NOT_OK(51, 31, 51) */
		reached[4][31] = 1;
		(trpt+1)->bup.oval = now.state_alarm;
		now.state_alarm = 7;
#ifdef VAR_RANGES
		logval("state_alarm", now.state_alarm);
#endif
		;
		/* merge: .(goto)(51, 33, 51) */
		reached[4][33] = 1;
		;
		/* merge: .(goto)(0, 52, 51) */
		reached[4][52] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 47: // STATE 35 - model.pml:231 - [((state_alarm==ARMED))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][35] = 1;
		if (!((now.state_alarm==8)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 36 - model.pml:233 - [(digit_out)] (51:0:1 - 1)
		IfNotBlocked
		reached[4][36] = 1;
		if (!(((int)now.digit_out)))
			continue;
		/* merge: state_alarm = DIGIT1(51, 37, 51) */
		reached[4][37] = 1;
		(trpt+1)->bup.oval = now.state_alarm;
		now.state_alarm = 11;
#ifdef VAR_RANGES
		logval("state_alarm", now.state_alarm);
#endif
		;
		/* merge: .(goto)(51, 41, 51) */
		reached[4][41] = 1;
		;
		/* merge: .(goto)(0, 52, 51) */
		reached[4][52] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 49: // STATE 41 - model.pml:236 - [.(goto)] (0:51:0 - 2)
		IfNotBlocked
		reached[4][41] = 1;
		;
		/* merge: .(goto)(0, 52, 51) */
		reached[4][52] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 50: // STATE 38 - model.pml:234 - [(presence)] (51:0:1 - 1)
		IfNotBlocked
		reached[4][38] = 1;
		if (!(((int)now.presence)))
			continue;
		/* merge: state_alarm = ALERT3(51, 39, 51) */
		reached[4][39] = 1;
		(trpt+1)->bup.oval = now.state_alarm;
		now.state_alarm = 4;
#ifdef VAR_RANGES
		logval("state_alarm", now.state_alarm);
#endif
		;
		/* merge: .(goto)(51, 41, 51) */
		reached[4][41] = 1;
		;
		/* merge: .(goto)(0, 52, 51) */
		reached[4][52] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 51: // STATE 43 - model.pml:237 - [((state_alarm==NOT_OK))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][43] = 1;
		if (!((now.state_alarm==7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 44 - model.pml:239 - [(digit_out)] (51:0:1 - 1)
		IfNotBlocked
		reached[4][44] = 1;
		if (!(((int)now.digit_out)))
			continue;
		/* merge: state_alarm = DIGIT1(51, 45, 51) */
		reached[4][45] = 1;
		(trpt+1)->bup.oval = now.state_alarm;
		now.state_alarm = 11;
#ifdef VAR_RANGES
		logval("state_alarm", now.state_alarm);
#endif
		;
		/* merge: .(goto)(51, 49, 51) */
		reached[4][49] = 1;
		;
		/* merge: .(goto)(0, 52, 51) */
		reached[4][52] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 53: // STATE 49 - model.pml:242 - [.(goto)] (0:51:0 - 2)
		IfNotBlocked
		reached[4][49] = 1;
		;
		/* merge: .(goto)(0, 52, 51) */
		reached[4][52] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 54: // STATE 46 - model.pml:240 - [((armed&&presence))] (51:0:1 - 1)
		IfNotBlocked
		reached[4][46] = 1;
		if (!((((int)now.armed)&&((int)now.presence))))
			continue;
		/* merge: state_alarm = ALERT4(51, 47, 51) */
		reached[4][47] = 1;
		(trpt+1)->bup.oval = now.state_alarm;
		now.state_alarm = 3;
#ifdef VAR_RANGES
		logval("state_alarm", now.state_alarm);
#endif
		;
		/* merge: .(goto)(51, 49, 51) */
		reached[4][49] = 1;
		;
		/* merge: .(goto)(0, 52, 51) */
		reached[4][52] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 55: // STATE 54 - model.pml:244 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[4][54] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC fsm_digit */
	case 56: // STATE 1 - model.pml:130 - [state_digit = IDLE] (0:0:1 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		(trpt+1)->bup.oval = now.state_digit;
		now.state_digit = 23;
#ifdef VAR_RANGES
		logval("state_digit", now.state_digit);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 2 - model.pml:131 - [time = next] (0:0:1 - 1)
		IfNotBlocked
		reached[3][2] = 1;
		(trpt+1)->bup.oval = now._time;
		now._time = now._next;
#ifdef VAR_RANGES
		logval("time", now._time);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 3 - model.pml:134 - [((state_digit==IDLE))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][3] = 1;
		if (!((now.state_digit==23)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 4 - model.pml:136 - [(button_alarm)] (111:0:3 - 1)
		IfNotBlocked
		reached[3][4] = 1;
		if (!(((int)now.button_alarm)))
			continue;
		/* merge: state_digit = D1(111, 5, 111) */
		reached[3][5] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.state_digit;
		now.state_digit = 22;
#ifdef VAR_RANGES
		logval("state_digit", now.state_digit);
#endif
		;
		/* merge: next = (time+1)(111, 6, 111) */
		reached[3][6] = 1;
		(trpt+1)->bup.ovals[1] = now._next;
		now._next = (now._time+1);
#ifdef VAR_RANGES
		logval("next", now._next);
#endif
		;
		/* merge: button_alarm = 0(111, 7, 111) */
		reached[3][7] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.button_alarm);
		now.button_alarm = 0;
#ifdef VAR_RANGES
		logval("button_alarm", ((int)now.button_alarm));
#endif
		;
		/* merge: .(goto)(111, 9, 111) */
		reached[3][9] = 1;
		;
		/* merge: .(goto)(0, 112, 111) */
		reached[3][112] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 60: // STATE 11 - model.pml:139 - [((state_digit==D1))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][11] = 1;
		if (!((now.state_digit==22)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 12 - model.pml:141 - [(((time>=next)&&!(button_alarm)))] (111:0:1 - 1)
		IfNotBlocked
		reached[3][12] = 1;
		if (!(((now._time>=now._next)&& !(((int)now.button_alarm)))))
			continue;
		/* merge: state_digit = IDLE(111, 13, 111) */
		reached[3][13] = 1;
		(trpt+1)->bup.oval = now.state_digit;
		now.state_digit = 23;
#ifdef VAR_RANGES
		logval("state_digit", now.state_digit);
#endif
		;
		/* merge: .(goto)(111, 19, 111) */
		reached[3][19] = 1;
		;
		/* merge: .(goto)(0, 112, 111) */
		reached[3][112] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 62: // STATE 19 - model.pml:144 - [.(goto)] (0:111:0 - 2)
		IfNotBlocked
		reached[3][19] = 1;
		;
		/* merge: .(goto)(0, 112, 111) */
		reached[3][112] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 63: // STATE 14 - model.pml:142 - [((button_alarm&&(time<next)))] (111:0:3 - 1)
		IfNotBlocked
		reached[3][14] = 1;
		if (!((((int)now.button_alarm)&&(now._time<now._next))))
			continue;
		/* merge: state_digit = D2(111, 15, 111) */
		reached[3][15] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.state_digit;
		now.state_digit = 21;
#ifdef VAR_RANGES
		logval("state_digit", now.state_digit);
#endif
		;
		/* merge: next = (time+1)(111, 16, 111) */
		reached[3][16] = 1;
		(trpt+1)->bup.ovals[1] = now._next;
		now._next = (now._time+1);
#ifdef VAR_RANGES
		logval("next", now._next);
#endif
		;
		/* merge: button_alarm = 0(111, 17, 111) */
		reached[3][17] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.button_alarm);
		now.button_alarm = 0;
#ifdef VAR_RANGES
		logval("button_alarm", ((int)now.button_alarm));
#endif
		;
		/* merge: .(goto)(111, 19, 111) */
		reached[3][19] = 1;
		;
		/* merge: .(goto)(0, 112, 111) */
		reached[3][112] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 64: // STATE 21 - model.pml:145 - [((state_digit==D2))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][21] = 1;
		if (!((now.state_digit==21)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 65: // STATE 22 - model.pml:147 - [(((time>=next)&&!(button_alarm)))] (111:0:1 - 1)
		IfNotBlocked
		reached[3][22] = 1;
		if (!(((now._time>=now._next)&& !(((int)now.button_alarm)))))
			continue;
		/* merge: state_digit = IDLE(111, 23, 111) */
		reached[3][23] = 1;
		(trpt+1)->bup.oval = now.state_digit;
		now.state_digit = 23;
#ifdef VAR_RANGES
		logval("state_digit", now.state_digit);
#endif
		;
		/* merge: .(goto)(111, 29, 111) */
		reached[3][29] = 1;
		;
		/* merge: .(goto)(0, 112, 111) */
		reached[3][112] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 66: // STATE 29 - model.pml:150 - [.(goto)] (0:111:0 - 2)
		IfNotBlocked
		reached[3][29] = 1;
		;
		/* merge: .(goto)(0, 112, 111) */
		reached[3][112] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 67: // STATE 24 - model.pml:148 - [((button_alarm&&(time<next)))] (111:0:3 - 1)
		IfNotBlocked
		reached[3][24] = 1;
		if (!((((int)now.button_alarm)&&(now._time<now._next))))
			continue;
		/* merge: state_digit = D3(111, 25, 111) */
		reached[3][25] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.state_digit;
		now.state_digit = 20;
#ifdef VAR_RANGES
		logval("state_digit", now.state_digit);
#endif
		;
		/* merge: next = (time+1)(111, 26, 111) */
		reached[3][26] = 1;
		(trpt+1)->bup.ovals[1] = now._next;
		now._next = (now._time+1);
#ifdef VAR_RANGES
		logval("next", now._next);
#endif
		;
		/* merge: button_alarm = 0(111, 27, 111) */
		reached[3][27] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.button_alarm);
		now.button_alarm = 0;
#ifdef VAR_RANGES
		logval("button_alarm", ((int)now.button_alarm));
#endif
		;
		/* merge: .(goto)(111, 29, 111) */
		reached[3][29] = 1;
		;
		/* merge: .(goto)(0, 112, 111) */
		reached[3][112] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 68: // STATE 31 - model.pml:151 - [((state_digit==D3))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][31] = 1;
		if (!((now.state_digit==20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 69: // STATE 32 - model.pml:153 - [(((time>=next)&&!(button_alarm)))] (111:0:1 - 1)
		IfNotBlocked
		reached[3][32] = 1;
		if (!(((now._time>=now._next)&& !(((int)now.button_alarm)))))
			continue;
		/* merge: state_digit = IDLE(111, 33, 111) */
		reached[3][33] = 1;
		(trpt+1)->bup.oval = now.state_digit;
		now.state_digit = 23;
#ifdef VAR_RANGES
		logval("state_digit", now.state_digit);
#endif
		;
		/* merge: .(goto)(111, 39, 111) */
		reached[3][39] = 1;
		;
		/* merge: .(goto)(0, 112, 111) */
		reached[3][112] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 70: // STATE 39 - model.pml:156 - [.(goto)] (0:111:0 - 2)
		IfNotBlocked
		reached[3][39] = 1;
		;
		/* merge: .(goto)(0, 112, 111) */
		reached[3][112] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 71: // STATE 34 - model.pml:154 - [((button_alarm&&(time<next)))] (111:0:3 - 1)
		IfNotBlocked
		reached[3][34] = 1;
		if (!((((int)now.button_alarm)&&(now._time<now._next))))
			continue;
		/* merge: state_digit = D4(111, 35, 111) */
		reached[3][35] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.state_digit;
		now.state_digit = 19;
#ifdef VAR_RANGES
		logval("state_digit", now.state_digit);
#endif
		;
		/* merge: next = (time+1)(111, 36, 111) */
		reached[3][36] = 1;
		(trpt+1)->bup.ovals[1] = now._next;
		now._next = (now._time+1);
#ifdef VAR_RANGES
		logval("next", now._next);
#endif
		;
		/* merge: button_alarm = 0(111, 37, 111) */
		reached[3][37] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.button_alarm);
		now.button_alarm = 0;
#ifdef VAR_RANGES
		logval("button_alarm", ((int)now.button_alarm));
#endif
		;
		/* merge: .(goto)(111, 39, 111) */
		reached[3][39] = 1;
		;
		/* merge: .(goto)(0, 112, 111) */
		reached[3][112] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 72: // STATE 41 - model.pml:157 - [((state_digit==D4))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][41] = 1;
		if (!((now.state_digit==19)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 73: // STATE 42 - model.pml:159 - [(((time>=next)&&!(button_alarm)))] (111:0:1 - 1)
		IfNotBlocked
		reached[3][42] = 1;
		if (!(((now._time>=now._next)&& !(((int)now.button_alarm)))))
			continue;
		/* merge: state_digit = IDLE(111, 43, 111) */
		reached[3][43] = 1;
		(trpt+1)->bup.oval = now.state_digit;
		now.state_digit = 23;
#ifdef VAR_RANGES
		logval("state_digit", now.state_digit);
#endif
		;
		/* merge: .(goto)(111, 49, 111) */
		reached[3][49] = 1;
		;
		/* merge: .(goto)(0, 112, 111) */
		reached[3][112] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 74: // STATE 49 - model.pml:162 - [.(goto)] (0:111:0 - 2)
		IfNotBlocked
		reached[3][49] = 1;
		;
		/* merge: .(goto)(0, 112, 111) */
		reached[3][112] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 75: // STATE 44 - model.pml:160 - [((button_alarm&&(time<next)))] (111:0:3 - 1)
		IfNotBlocked
		reached[3][44] = 1;
		if (!((((int)now.button_alarm)&&(now._time<now._next))))
			continue;
		/* merge: state_digit = D5(111, 45, 111) */
		reached[3][45] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.state_digit;
		now.state_digit = 18;
#ifdef VAR_RANGES
		logval("state_digit", now.state_digit);
#endif
		;
		/* merge: next = (time+1)(111, 46, 111) */
		reached[3][46] = 1;
		(trpt+1)->bup.ovals[1] = now._next;
		now._next = (now._time+1);
#ifdef VAR_RANGES
		logval("next", now._next);
#endif
		;
		/* merge: button_alarm = 0(111, 47, 111) */
		reached[3][47] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.button_alarm);
		now.button_alarm = 0;
#ifdef VAR_RANGES
		logval("button_alarm", ((int)now.button_alarm));
#endif
		;
		/* merge: .(goto)(111, 49, 111) */
		reached[3][49] = 1;
		;
		/* merge: .(goto)(0, 112, 111) */
		reached[3][112] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 76: // STATE 51 - model.pml:163 - [((state_digit==D5))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][51] = 1;
		if (!((now.state_digit==18)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 77: // STATE 52 - model.pml:165 - [(((time>=next)&&!(button_alarm)))] (111:0:1 - 1)
		IfNotBlocked
		reached[3][52] = 1;
		if (!(((now._time>=now._next)&& !(((int)now.button_alarm)))))
			continue;
		/* merge: state_digit = IDLE(111, 53, 111) */
		reached[3][53] = 1;
		(trpt+1)->bup.oval = now.state_digit;
		now.state_digit = 23;
#ifdef VAR_RANGES
		logval("state_digit", now.state_digit);
#endif
		;
		/* merge: .(goto)(111, 59, 111) */
		reached[3][59] = 1;
		;
		/* merge: .(goto)(0, 112, 111) */
		reached[3][112] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 78: // STATE 59 - model.pml:168 - [.(goto)] (0:111:0 - 2)
		IfNotBlocked
		reached[3][59] = 1;
		;
		/* merge: .(goto)(0, 112, 111) */
		reached[3][112] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 79: // STATE 54 - model.pml:166 - [((button_alarm&&(time<next)))] (111:0:3 - 1)
		IfNotBlocked
		reached[3][54] = 1;
		if (!((((int)now.button_alarm)&&(now._time<now._next))))
			continue;
		/* merge: state_digit = D6(111, 55, 111) */
		reached[3][55] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.state_digit;
		now.state_digit = 17;
#ifdef VAR_RANGES
		logval("state_digit", now.state_digit);
#endif
		;
		/* merge: next = (time+1)(111, 56, 111) */
		reached[3][56] = 1;
		(trpt+1)->bup.ovals[1] = now._next;
		now._next = (now._time+1);
#ifdef VAR_RANGES
		logval("next", now._next);
#endif
		;
		/* merge: button_alarm = 0(111, 57, 111) */
		reached[3][57] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.button_alarm);
		now.button_alarm = 0;
#ifdef VAR_RANGES
		logval("button_alarm", ((int)now.button_alarm));
#endif
		;
		/* merge: .(goto)(111, 59, 111) */
		reached[3][59] = 1;
		;
		/* merge: .(goto)(0, 112, 111) */
		reached[3][112] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 80: // STATE 61 - model.pml:169 - [((state_digit==D6))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][61] = 1;
		if (!((now.state_digit==17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 81: // STATE 62 - model.pml:171 - [(((time>=next)&&!(button_alarm)))] (111:0:1 - 1)
		IfNotBlocked
		reached[3][62] = 1;
		if (!(((now._time>=now._next)&& !(((int)now.button_alarm)))))
			continue;
		/* merge: state_digit = IDLE(111, 63, 111) */
		reached[3][63] = 1;
		(trpt+1)->bup.oval = now.state_digit;
		now.state_digit = 23;
#ifdef VAR_RANGES
		logval("state_digit", now.state_digit);
#endif
		;
		/* merge: .(goto)(111, 69, 111) */
		reached[3][69] = 1;
		;
		/* merge: .(goto)(0, 112, 111) */
		reached[3][112] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 82: // STATE 69 - model.pml:174 - [.(goto)] (0:111:0 - 2)
		IfNotBlocked
		reached[3][69] = 1;
		;
		/* merge: .(goto)(0, 112, 111) */
		reached[3][112] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 83: // STATE 64 - model.pml:172 - [((button_alarm&&(time<next)))] (111:0:3 - 1)
		IfNotBlocked
		reached[3][64] = 1;
		if (!((((int)now.button_alarm)&&(now._time<now._next))))
			continue;
		/* merge: state_digit = D7(111, 65, 111) */
		reached[3][65] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.state_digit;
		now.state_digit = 16;
#ifdef VAR_RANGES
		logval("state_digit", now.state_digit);
#endif
		;
		/* merge: next = (time+1)(111, 66, 111) */
		reached[3][66] = 1;
		(trpt+1)->bup.ovals[1] = now._next;
		now._next = (now._time+1);
#ifdef VAR_RANGES
		logval("next", now._next);
#endif
		;
		/* merge: button_alarm = 0(111, 67, 111) */
		reached[3][67] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.button_alarm);
		now.button_alarm = 0;
#ifdef VAR_RANGES
		logval("button_alarm", ((int)now.button_alarm));
#endif
		;
		/* merge: .(goto)(111, 69, 111) */
		reached[3][69] = 1;
		;
		/* merge: .(goto)(0, 112, 111) */
		reached[3][112] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 84: // STATE 71 - model.pml:175 - [((state_digit==D7))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][71] = 1;
		if (!((now.state_digit==16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 85: // STATE 72 - model.pml:177 - [(((time>=next)&&!(button_alarm)))] (111:0:1 - 1)
		IfNotBlocked
		reached[3][72] = 1;
		if (!(((now._time>=now._next)&& !(((int)now.button_alarm)))))
			continue;
		/* merge: state_digit = IDLE(111, 73, 111) */
		reached[3][73] = 1;
		(trpt+1)->bup.oval = now.state_digit;
		now.state_digit = 23;
#ifdef VAR_RANGES
		logval("state_digit", now.state_digit);
#endif
		;
		/* merge: .(goto)(111, 79, 111) */
		reached[3][79] = 1;
		;
		/* merge: .(goto)(0, 112, 111) */
		reached[3][112] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 86: // STATE 79 - model.pml:180 - [.(goto)] (0:111:0 - 2)
		IfNotBlocked
		reached[3][79] = 1;
		;
		/* merge: .(goto)(0, 112, 111) */
		reached[3][112] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 87: // STATE 74 - model.pml:178 - [((button_alarm&&(time<next)))] (111:0:3 - 1)
		IfNotBlocked
		reached[3][74] = 1;
		if (!((((int)now.button_alarm)&&(now._time<now._next))))
			continue;
		/* merge: state_digit = D8(111, 75, 111) */
		reached[3][75] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.state_digit;
		now.state_digit = 15;
#ifdef VAR_RANGES
		logval("state_digit", now.state_digit);
#endif
		;
		/* merge: next = (time+1)(111, 76, 111) */
		reached[3][76] = 1;
		(trpt+1)->bup.ovals[1] = now._next;
		now._next = (now._time+1);
#ifdef VAR_RANGES
		logval("next", now._next);
#endif
		;
		/* merge: button_alarm = 0(111, 77, 111) */
		reached[3][77] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.button_alarm);
		now.button_alarm = 0;
#ifdef VAR_RANGES
		logval("button_alarm", ((int)now.button_alarm));
#endif
		;
		/* merge: .(goto)(111, 79, 111) */
		reached[3][79] = 1;
		;
		/* merge: .(goto)(0, 112, 111) */
		reached[3][112] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 88: // STATE 81 - model.pml:181 - [((state_digit==D8))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][81] = 1;
		if (!((now.state_digit==15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 89: // STATE 82 - model.pml:183 - [(((time>=next)&&!(button_alarm)))] (111:0:1 - 1)
		IfNotBlocked
		reached[3][82] = 1;
		if (!(((now._time>=now._next)&& !(((int)now.button_alarm)))))
			continue;
		/* merge: state_digit = IDLE(111, 83, 111) */
		reached[3][83] = 1;
		(trpt+1)->bup.oval = now.state_digit;
		now.state_digit = 23;
#ifdef VAR_RANGES
		logval("state_digit", now.state_digit);
#endif
		;
		/* merge: .(goto)(111, 89, 111) */
		reached[3][89] = 1;
		;
		/* merge: .(goto)(0, 112, 111) */
		reached[3][112] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 90: // STATE 89 - model.pml:186 - [.(goto)] (0:111:0 - 2)
		IfNotBlocked
		reached[3][89] = 1;
		;
		/* merge: .(goto)(0, 112, 111) */
		reached[3][112] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 91: // STATE 84 - model.pml:184 - [((button_alarm&&(time<next)))] (111:0:3 - 1)
		IfNotBlocked
		reached[3][84] = 1;
		if (!((((int)now.button_alarm)&&(now._time<now._next))))
			continue;
		/* merge: state_digit = D9(111, 85, 111) */
		reached[3][85] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.state_digit;
		now.state_digit = 14;
#ifdef VAR_RANGES
		logval("state_digit", now.state_digit);
#endif
		;
		/* merge: next = (time+1)(111, 86, 111) */
		reached[3][86] = 1;
		(trpt+1)->bup.ovals[1] = now._next;
		now._next = (now._time+1);
#ifdef VAR_RANGES
		logval("next", now._next);
#endif
		;
		/* merge: button_alarm = 0(111, 87, 111) */
		reached[3][87] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.button_alarm);
		now.button_alarm = 0;
#ifdef VAR_RANGES
		logval("button_alarm", ((int)now.button_alarm));
#endif
		;
		/* merge: .(goto)(111, 89, 111) */
		reached[3][89] = 1;
		;
		/* merge: .(goto)(0, 112, 111) */
		reached[3][112] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 92: // STATE 91 - model.pml:187 - [((state_digit==D9))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][91] = 1;
		if (!((now.state_digit==14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 93: // STATE 92 - model.pml:189 - [(((time>=next)&&!(button_alarm)))] (111:0:1 - 1)
		IfNotBlocked
		reached[3][92] = 1;
		if (!(((now._time>=now._next)&& !(((int)now.button_alarm)))))
			continue;
		/* merge: state_digit = IDLE(111, 93, 111) */
		reached[3][93] = 1;
		(trpt+1)->bup.oval = now.state_digit;
		now.state_digit = 23;
#ifdef VAR_RANGES
		logval("state_digit", now.state_digit);
#endif
		;
		/* merge: .(goto)(111, 99, 111) */
		reached[3][99] = 1;
		;
		/* merge: .(goto)(0, 112, 111) */
		reached[3][112] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 94: // STATE 99 - model.pml:192 - [.(goto)] (0:111:0 - 2)
		IfNotBlocked
		reached[3][99] = 1;
		;
		/* merge: .(goto)(0, 112, 111) */
		reached[3][112] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 95: // STATE 94 - model.pml:190 - [((button_alarm&&(time<next)))] (111:0:3 - 1)
		IfNotBlocked
		reached[3][94] = 1;
		if (!((((int)now.button_alarm)&&(now._time<now._next))))
			continue;
		/* merge: state_digit = D0(111, 95, 111) */
		reached[3][95] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.state_digit;
		now.state_digit = 13;
#ifdef VAR_RANGES
		logval("state_digit", now.state_digit);
#endif
		;
		/* merge: next = (time+1)(111, 96, 111) */
		reached[3][96] = 1;
		(trpt+1)->bup.ovals[1] = now._next;
		now._next = (now._time+1);
#ifdef VAR_RANGES
		logval("next", now._next);
#endif
		;
		/* merge: button_alarm = 0(111, 97, 111) */
		reached[3][97] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.button_alarm);
		now.button_alarm = 0;
#ifdef VAR_RANGES
		logval("button_alarm", ((int)now.button_alarm));
#endif
		;
		/* merge: .(goto)(111, 99, 111) */
		reached[3][99] = 1;
		;
		/* merge: .(goto)(0, 112, 111) */
		reached[3][112] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 96: // STATE 101 - model.pml:193 - [((state_digit==D0))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][101] = 1;
		if (!((now.state_digit==13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 97: // STATE 102 - model.pml:195 - [(((time>=next)&&!(button_alarm)))] (111:0:1 - 1)
		IfNotBlocked
		reached[3][102] = 1;
		if (!(((now._time>=now._next)&& !(((int)now.button_alarm)))))
			continue;
		/* merge: state_digit = IDLE(111, 103, 111) */
		reached[3][103] = 1;
		(trpt+1)->bup.oval = now.state_digit;
		now.state_digit = 23;
#ifdef VAR_RANGES
		logval("state_digit", now.state_digit);
#endif
		;
		/* merge: .(goto)(111, 109, 111) */
		reached[3][109] = 1;
		;
		/* merge: .(goto)(0, 112, 111) */
		reached[3][112] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 98: // STATE 109 - model.pml:198 - [.(goto)] (0:111:0 - 2)
		IfNotBlocked
		reached[3][109] = 1;
		;
		/* merge: .(goto)(0, 112, 111) */
		reached[3][112] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 99: // STATE 104 - model.pml:196 - [((button_alarm&&(time<next)))] (111:0:3 - 1)
		IfNotBlocked
		reached[3][104] = 1;
		if (!((((int)now.button_alarm)&&(now._time<now._next))))
			continue;
		/* merge: state_digit = D1(111, 105, 111) */
		reached[3][105] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.state_digit;
		now.state_digit = 22;
#ifdef VAR_RANGES
		logval("state_digit", now.state_digit);
#endif
		;
		/* merge: next = (time+1)(111, 106, 111) */
		reached[3][106] = 1;
		(trpt+1)->bup.ovals[1] = now._next;
		now._next = (now._time+1);
#ifdef VAR_RANGES
		logval("next", now._next);
#endif
		;
		/* merge: button_alarm = 0(111, 107, 111) */
		reached[3][107] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.button_alarm);
		now.button_alarm = 0;
#ifdef VAR_RANGES
		logval("button_alarm", ((int)now.button_alarm));
#endif
		;
		/* merge: .(goto)(111, 109, 111) */
		reached[3][109] = 1;
		;
		/* merge: .(goto)(0, 112, 111) */
		reached[3][112] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 100: // STATE 114 - model.pml:200 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][114] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC light_button */
	case 101: // STATE 1 - model.pml:45 - [((state_light==LIGHT_OFF))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		if (!((now.state_light==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 102: // STATE 2 - model.pml:45 - [button_light = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		(trpt+1)->bup.oval = ((int)now.button_light);
		now.button_light = 1;
#ifdef VAR_RANGES
		logval("button_light", ((int)now.button_light));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 103: // STATE 3 - model.pml:46 - [((state_light==LIGHT_ON))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		if (!((now.state_light==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 104: // STATE 4 - model.pml:46 - [button_light = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][4] = 1;
		(trpt+1)->bup.oval = ((int)now.button_light);
		now.button_light = 0;
#ifdef VAR_RANGES
		logval("button_light", ((int)now.button_light));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 105: // STATE 7 - model.pml:49 - [printf('state_light = %d, button_light = %d \\n',state_light,button_light)] (0:0:0 - 3)
		IfNotBlocked
		reached[2][7] = 1;
		Printf("state_light = %d, button_light = %d \n", now.state_light, ((int)now.button_light));
		_m = 3; goto P999; /* 0 */
	case 106: // STATE 11 - model.pml:51 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][11] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC temp_light */
	case 107: // STATE 1 - model.pml:35 - [time = (time+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.oval = now.time;
		now.time = (now.time+1);
#ifdef VAR_RANGES
		logval("time", now.time);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 108: // STATE 2 - model.pml:37 - [printf('state_light = %d, time = %d, next = %d \\n',state_light,time,next)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		Printf("state_light = %d, time = %d, next = %d \n", now.state_light, now.time, now.next);
		_m = 3; goto P999; /* 0 */
	case 109: // STATE 6 - model.pml:40 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC fsm_light */
	case 110: // STATE 1 - model.pml:16 - [state_light = LIGHT_OFF] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = now.state_light;
		now.state_light = 2;
#ifdef VAR_RANGES
		logval("state_light", now.state_light);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 111: // STATE 2 - model.pml:17 - [next = time] (0:0:1 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		(trpt+1)->bup.oval = now.next;
		now.next = now.time;
#ifdef VAR_RANGES
		logval("next", now.next);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 112: // STATE 3 - model.pml:19 - [((state_light==LIGHT_OFF))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		if (!((now.state_light==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 113: // STATE 4 - model.pml:21 - [(button_light)] (21:0:3 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		if (!(((int)now.button_light)))
			continue;
		/* merge: state_light = LIGHT_ON(21, 5, 21) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.state_light;
		now.state_light = 1;
#ifdef VAR_RANGES
		logval("state_light", now.state_light);
#endif
		;
		/* merge: button_light = 0(21, 6, 21) */
		reached[0][6] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.button_light);
		now.button_light = 0;
#ifdef VAR_RANGES
		logval("button_light", ((int)now.button_light));
#endif
		;
		/* merge: next = (time+60)(21, 7, 21) */
		reached[0][7] = 1;
		(trpt+1)->bup.ovals[2] = now.next;
		now.next = (now.time+60);
#ifdef VAR_RANGES
		logval("next", now.next);
#endif
		;
		/* merge: .(goto)(21, 9, 21) */
		reached[0][9] = 1;
		;
		/* merge: .(goto)(0, 22, 21) */
		reached[0][22] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 114: // STATE 11 - model.pml:24 - [((state_light==LIGHT_ON))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][11] = 1;
		if (!((now.state_light==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 115: // STATE 12 - model.pml:26 - [(button_light)] (21:0:3 - 1)
		IfNotBlocked
		reached[0][12] = 1;
		if (!(((int)now.button_light)))
			continue;
		/* merge: state_light = LIGHT_ON(21, 13, 21) */
		reached[0][13] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.state_light;
		now.state_light = 1;
#ifdef VAR_RANGES
		logval("state_light", now.state_light);
#endif
		;
		/* merge: button_light = 0(21, 14, 21) */
		reached[0][14] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.button_light);
		now.button_light = 0;
#ifdef VAR_RANGES
		logval("button_light", ((int)now.button_light));
#endif
		;
		/* merge: next = (time+60)(21, 15, 21) */
		reached[0][15] = 1;
		(trpt+1)->bup.ovals[2] = now.next;
		now.next = (now.time+60);
#ifdef VAR_RANGES
		logval("next", now.next);
#endif
		;
		/* merge: .(goto)(21, 19, 21) */
		reached[0][19] = 1;
		;
		/* merge: .(goto)(0, 22, 21) */
		reached[0][22] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 116: // STATE 19 - model.pml:29 - [.(goto)] (0:21:0 - 2)
		IfNotBlocked
		reached[0][19] = 1;
		;
		/* merge: .(goto)(0, 22, 21) */
		reached[0][22] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 117: // STATE 16 - model.pml:27 - [((time>=next))] (21:0:1 - 1)
		IfNotBlocked
		reached[0][16] = 1;
		if (!((now.time>=now.next)))
			continue;
		/* merge: state_light = LIGHT_OFF(21, 17, 21) */
		reached[0][17] = 1;
		(trpt+1)->bup.oval = now.state_light;
		now.state_light = 2;
#ifdef VAR_RANGES
		logval("state_light", now.state_light);
#endif
		;
		/* merge: .(goto)(21, 19, 21) */
		reached[0][19] = 1;
		;
		/* merge: .(goto)(0, 22, 21) */
		reached[0][22] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 118: // STATE 24 - model.pml:31 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][24] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}


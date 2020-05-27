	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC alarm_button */
;
		;
		
	case 4: // STATE 2
		;
		now.button_alarm = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 6: // STATE 4
		;
		now.button_alarm = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 8: // STATE 6
		;
		now.button_alarm = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 10: // STATE 8
		;
		now.button_alarm = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 12: // STATE 10
		;
		now.button_alarm = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 14: // STATE 12
		;
		now.button_alarm = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 16: // STATE 14
		;
		now.button_alarm = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 18: // STATE 16
		;
		now.button_alarm = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 20: // STATE 18
		;
		now.button_alarm = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 22: // STATE 20
		;
		now.button_alarm = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 24: // STATE 22
		;
		now.button_alarm = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 26: // STATE 29
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC temp_alarm */

	case 27: // STATE 1
		;
		now._time = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 29: // STATE 6
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC fsm_alarm */

	case 30: // STATE 1
		;
		now.state_alarm = trpt->bup.oval;
		;
		goto R999;

	case 31: // STATE 2
		;
		now._time = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 33: // STATE 5
		;
		now.state_alarm = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 35: // STATE 11
		;
		now.state_alarm = trpt->bup.oval;
		;
		goto R999;
;
		
	case 36: // STATE 15
		goto R999;

	case 37: // STATE 13
		;
		now.state_alarm = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 39: // STATE 19
		;
		now.state_alarm = trpt->bup.oval;
		;
		goto R999;
;
		
	case 40: // STATE 23
		goto R999;

	case 41: // STATE 21
		;
		now.state_alarm = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 43: // STATE 27
		;
		now.state_alarm = trpt->bup.oval;
		;
		goto R999;
;
		
	case 44: // STATE 33
		goto R999;

	case 45: // STATE 29
		;
		now.state_alarm = trpt->bup.oval;
		;
		goto R999;

	case 46: // STATE 31
		;
		now.state_alarm = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 48: // STATE 37
		;
		now.state_alarm = trpt->bup.oval;
		;
		goto R999;
;
		
	case 49: // STATE 41
		goto R999;

	case 50: // STATE 39
		;
		now.state_alarm = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 52: // STATE 45
		;
		now.state_alarm = trpt->bup.oval;
		;
		goto R999;
;
		
	case 53: // STATE 49
		goto R999;

	case 54: // STATE 47
		;
		now.state_alarm = trpt->bup.oval;
		;
		goto R999;

	case 55: // STATE 54
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC fsm_digit */

	case 56: // STATE 1
		;
		now.state_digit = trpt->bup.oval;
		;
		goto R999;

	case 57: // STATE 2
		;
		now._time = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 59: // STATE 7
		;
		now.button_alarm = trpt->bup.ovals[2];
		now._next = trpt->bup.ovals[1];
		now.state_digit = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 61: // STATE 13
		;
		now.state_digit = trpt->bup.oval;
		;
		goto R999;
;
		
	case 62: // STATE 19
		goto R999;

	case 63: // STATE 17
		;
		now.button_alarm = trpt->bup.ovals[2];
		now._next = trpt->bup.ovals[1];
		now.state_digit = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 65: // STATE 23
		;
		now.state_digit = trpt->bup.oval;
		;
		goto R999;
;
		
	case 66: // STATE 29
		goto R999;

	case 67: // STATE 27
		;
		now.button_alarm = trpt->bup.ovals[2];
		now._next = trpt->bup.ovals[1];
		now.state_digit = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 69: // STATE 33
		;
		now.state_digit = trpt->bup.oval;
		;
		goto R999;
;
		
	case 70: // STATE 39
		goto R999;

	case 71: // STATE 37
		;
		now.button_alarm = trpt->bup.ovals[2];
		now._next = trpt->bup.ovals[1];
		now.state_digit = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 73: // STATE 43
		;
		now.state_digit = trpt->bup.oval;
		;
		goto R999;
;
		
	case 74: // STATE 49
		goto R999;

	case 75: // STATE 47
		;
		now.button_alarm = trpt->bup.ovals[2];
		now._next = trpt->bup.ovals[1];
		now.state_digit = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 77: // STATE 53
		;
		now.state_digit = trpt->bup.oval;
		;
		goto R999;
;
		
	case 78: // STATE 59
		goto R999;

	case 79: // STATE 57
		;
		now.button_alarm = trpt->bup.ovals[2];
		now._next = trpt->bup.ovals[1];
		now.state_digit = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 81: // STATE 63
		;
		now.state_digit = trpt->bup.oval;
		;
		goto R999;
;
		
	case 82: // STATE 69
		goto R999;

	case 83: // STATE 67
		;
		now.button_alarm = trpt->bup.ovals[2];
		now._next = trpt->bup.ovals[1];
		now.state_digit = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 85: // STATE 73
		;
		now.state_digit = trpt->bup.oval;
		;
		goto R999;
;
		
	case 86: // STATE 79
		goto R999;

	case 87: // STATE 77
		;
		now.button_alarm = trpt->bup.ovals[2];
		now._next = trpt->bup.ovals[1];
		now.state_digit = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 89: // STATE 83
		;
		now.state_digit = trpt->bup.oval;
		;
		goto R999;
;
		
	case 90: // STATE 89
		goto R999;

	case 91: // STATE 87
		;
		now.button_alarm = trpt->bup.ovals[2];
		now._next = trpt->bup.ovals[1];
		now.state_digit = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 93: // STATE 93
		;
		now.state_digit = trpt->bup.oval;
		;
		goto R999;
;
		
	case 94: // STATE 99
		goto R999;

	case 95: // STATE 97
		;
		now.button_alarm = trpt->bup.ovals[2];
		now._next = trpt->bup.ovals[1];
		now.state_digit = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 97: // STATE 103
		;
		now.state_digit = trpt->bup.oval;
		;
		goto R999;
;
		
	case 98: // STATE 109
		goto R999;

	case 99: // STATE 107
		;
		now.button_alarm = trpt->bup.ovals[2];
		now._next = trpt->bup.ovals[1];
		now.state_digit = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 100: // STATE 114
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC light_button */
;
		;
		
	case 102: // STATE 2
		;
		now.button_light = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 104: // STATE 4
		;
		now.button_light = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 106: // STATE 11
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC temp_light */

	case 107: // STATE 1
		;
		now.time = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 109: // STATE 6
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC fsm_light */

	case 110: // STATE 1
		;
		now.state_light = trpt->bup.oval;
		;
		goto R999;

	case 111: // STATE 2
		;
		now.next = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 113: // STATE 7
		;
		now.next = trpt->bup.ovals[2];
		now.button_light = trpt->bup.ovals[1];
		now.state_light = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 115: // STATE 15
		;
		now.next = trpt->bup.ovals[2];
		now.button_light = trpt->bup.ovals[1];
		now.state_light = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		
	case 116: // STATE 19
		goto R999;

	case 117: // STATE 17
		;
		now.state_light = trpt->bup.oval;
		;
		goto R999;

	case 118: // STATE 24
		;
		p_restor(II);
		;
		;
		goto R999;
	}


/* LIGHT */

ltl spec_light {
	[] (((state_light == LIGHT_OFF) && button_light) -> <> (state_light == LIGHT_ON)) &&
	[] (((state_light == LIGHT_ON) && (! button_light) && (time >= next)) -> <> (state_light == LIGHT_OFF))
}


mtype state_light;
mtype = {LIGHT_OFF, LIGHT_ON};

bit button_light;

int time;
int next;


active proctype fsm_light () {
	state_light = LIGHT_OFF;
	next = time;
	do
	:: (state_light == LIGHT_OFF) -> atomic {
		if
		:: button_light -> state_light = LIGHT_ON; button_light = 0; next = time + 60
		fi
	}
	:: (state_light == LIGHT_ON) -> atomic {
		if
		:: button_light -> state_light = LIGHT_ON; button_light = 0; next = time + 60
		:: (time >= next) -> state_light = LIGHT_OFF 
		fi
	}
	od
}

active proctype temp_light () {
	do
	:: time = time + 1

	printf ("state_light = %d, time = %d, next = %d \n", state_light, time, next)

	od
}

active proctype light_button () {
	do
	::	if
		:: (state_light == LIGHT_OFF) -> button_light = 1
		:: (state_light == LIGHT_ON) -> button_light = 0
		fi;

		printf ("state_light = %d, button_light = %d \n", state_light, button_light)
	od
}


/* ALARM */

ltl spec_digit {
	[] (((state_digit == IDLE) && button_alarm) -> <> (state_digit == D1)) &&
	[] (((state_digit == D1) && button_alarm && (_time < _next)) -> <> (state_digit == D2)) &&
	[] (((state_digit == D1) && (! button_alarm) && (_time >= _next)) -> <> (state_digit == IDLE)) &&
	[] (((state_digit == D2) && button_alarm && (_time < _next)) -> <> (state_digit == D3)) &&
	[] (((state_digit == D2) && (! button_alarm) && (_time >= _next)) -> <> (state_digit == IDLE)) &&
	[] (((state_digit == D3) && button_alarm && (_time < _next)) -> <> (state_digit == D4)) &&
	[] (((state_digit == D3) && (! button_alarm) && (_time >= _next)) -> <> (state_digit == IDLE)) &&
	[] (((state_digit == D4) && button_alarm && (_time < _next)) -> <> (state_digit == D5)) &&
	[] (((state_digit == D4) && (! button_alarm) && (_time >= _next)) -> <> (state_digit == IDLE)) &&
	[] (((state_digit == D5) && button_alarm && (_time < _next)) -> <> (state_digit == D6)) &&
	[] (((state_digit == D5) && (! button_alarm) && (_time >= _next)) -> <> (state_digit == IDLE)) &&
	[] (((state_digit == D6) && button_alarm && (_time < _next)) -> <> (state_digit == D7)) &&
	[] (((state_digit == D6) && (! button_alarm) && (_time >= _next)) -> <> (state_digit == IDLE)) &&
	[] (((state_digit == D7) && button_alarm && (_time < _next)) -> <> (state_digit == D8)) &&
	[] (((state_digit == D7) && (! button_alarm) && (_time >= _next)) -> <> (state_digit == IDLE)) &&
	[] (((state_digit == D8) && button_alarm && (_time < _next)) -> <> (state_digit == D9)) &&
	[] (((state_digit == D8) && (! button_alarm) && (_time >= _next)) -> <> (state_digit == IDLE)) &&
	[] (((state_digit == D9) && button_alarm && (_time < _next)) -> <> (state_digit == D0)) &&
	[] (((state_digit == D9) && (! button_alarm) && (_time >= _next)) -> <> (state_digit == IDLE)) &&
	[] (((state_digit == D0) && button_alarm && (_time < _next)) -> <> (state_digit == D1)) &&
	[] (((state_digit == D0) && (! button_alarm) && (_time >= _next)) -> <> (state_digit == IDLE))
}

ltl spec_alarm {
	[] (((state_alarm == DISARMED) && (_time >= _next)) -> <> (state_alarm == DIGIT1)) &&
	[] (((state_alarm == DIGIT1) && (_time >= _next)) -> <> (state_alarm == DIGIT2)) &&
	[] (((state_alarm == DIGIT1) && armed && presence) -> <> (state_alarm == ALERT1)) &&
	[] ((state_alarm == ALERT1) -> <> (state_alarm == DIGIT1))
	[] (((state_alarm == DIGIT2) && (_time >= _next)) -> <> (state_alarm == DIGIT3)) &&
	[] (((state_alarm == DIGIT2) && armed && presence) -> <> (state_alarm == ALERT2)) &&
	[] ((state_alarm == ALERT2) -> <> (state_alarm == DIGIT2))
	[] (((state_alarm == DIGIT3) && (! armed) && code_ok) -> <> (state_alarm == ARMED)) &&
	[] (((state_alarm == DIGIT3) && armed && code_ok) -> <> (state_alarm == DISARMED)) &&
	[] (((state_alarm == DIGIT3) && (! code_ok)) -> <> (state_alarm == NOT_OK)) &&
	[] (((state_alarm == ARMED) && (_time >= _next)) -> <> (state_alarm == DIGIT1)) &&
	[] (((state_alarm == ARMED) && presence) -> <> (state_alarm == ALERT3)) &&
	[] ((state_alarm == ALERT3) -> <> (state_alarm == ARMED))
	[] (((state_alarm == NOT_OK) && (_time >= _next)) -> <> (state_alarm == DIGIT1)) &&
	[] (((state_alarm == NOT_OK) && armed && presence) -> <> (state_alarm == ALERT4)) &&
	[] ((state_alarm == ALERT4) -> <> (state_alarm == NOT_OK))
}

mtype state_alarm;
mtype = {DISARMED, DIGIT1, DIGIT2, DIGIT3, ARMED, NOT_OK, ALERT1, ALERT2, ALERT3, ALERT4};

mtype state_digit;
mtype = {IDLE, D1, D2, D3, D4, D5, D6, D7, D8, D9, D0};

bit button_alarm;
bit digit_out;
bit armed;
bit presence;
bit alert;
bit code_ok;

int _time;
int _next;

active proctype fsm_digit () {
	state_digit = IDLE;
	_time = _next;

	do
	:: (state_digit == IDLE) -> atomic {
		if
		:: button_alarm -> state_digit = D1; _next = _time + 10; button_alarm = 0
		fi
	}
	:: (state_digit == D1) -> atomic {
		if
		:: ((_time >= _next) && (! button_alarm)) -> state_digit = IDLE;
		:: (button_alarm && (_time < _next)) -> state_digit = D2; _next = _time + 10; button_alarm = 0
		fi
	}
	:: (state_digit == D2) -> atomic {
		if
		:: ((_time >= _next) && (! button_alarm)) -> state_digit = IDLE;
		:: (button_alarm && (_time < _next)) -> state_digit = D3; _next = _time + 10; button_alarm = 0
		fi
	}
	:: (state_digit == D3) -> atomic {
		if
		:: ((_time >= _next) && (! button_alarm)) -> state_digit = IDLE;
		:: (button_alarm && (_time < _next)) -> state_digit = D4; _next = _time + 10; button_alarm = 0
		fi
	}
	:: (state_digit == D4) -> atomic {
		if
		:: ((_time >= _next) && (! button_alarm)) -> state_digit = IDLE;
		:: (button_alarm && (_time < _next)) -> state_digit = D5; _next = _time + 10; button_alarm = 0
		fi
	}
	:: (state_digit == D5) -> atomic {
		if
		:: ((_time >= _next) && (! button_alarm)) -> state_digit = IDLE;
		:: (button_alarm && (_time < _next)) -> state_digit = D6; _next = _time + 10; button_alarm = 0
		fi
	}
	:: (state_digit == D6) -> atomic {
		if
		:: ((_time >= _next) && (! button_alarm)) -> state_digit = IDLE;
		:: (button_alarm && (_time < _next)) -> state_digit = D7; _next = _time + 10; button_alarm = 0
		fi
	}
	:: (state_digit == D7) -> atomic {
		if
		:: ((_time >= _next) && (! button_alarm)) -> state_digit = IDLE;
		:: (button_alarm && (_time < _next)) -> state_digit = D8; _next = _time + 10; button_alarm = 0
		fi
	}
	:: (state_digit == D8) -> atomic {
		if
		:: ((_time >= _next) && (! button_alarm)) -> state_digit = IDLE;
		:: (button_alarm && (_time < _next)) -> state_digit = D9; _next = _time + 10; button_alarm = 0
		fi
	}
	:: (state_digit == D9) -> atomic {
		if
		:: ((_time >= _next) && (! button_alarm)) -> state_digit = IDLE;
		:: (button_alarm && (_time < _next)) -> state_digit = D0; _next = _time + 10; button_alarm = 0
		fi
	}
	:: (state_digit == D0) -> atomic {
		if
		:: ((_time >= _next) && (! button_alarm)) -> state_digit = IDLE;
		:: (button_alarm && (_time < _next)) -> state_digit = D1; _next = _time + 10; button_alarm = 0
		fi
	}
	od
}

active proctype fsm_alarm () {
	state_alarm = DISARMED;
	_time = _next;

	do
	:: (state_alarm == DISARMED) -> atomic {
		if
		:: digit_out -> state_alarm = DIGIT1
		fi
	}
	:: (state_alarm == DIGIT1) -> atomic {
		if
		:: digit_out -> state_alarm = DIGIT2
		:: (armed && presence) -> state_alarm = ALERT1
		fi
	}
	:: (state_alarm == DIGIT2) -> atomic {
		if
		:: digit_out -> state_alarm = DIGIT3
		:: (armed && presence) -> state_alarm = ALERT2
		fi
	}
	:: (state_alarm == DIGIT3) -> atomic {
		if
		:: (armed && code_ok) -> state_alarm = DISARMED
		:: ((! armed) && code_ok) -> state_alarm = ARMED
		:: (! code_ok) -> state_alarm = NOT_OK
		fi
	}
	:: (state_alarm == ARMED) -> atomic {
		if
		:: digit_out -> state_alarm = DIGIT1
		:: presence -> state_alarm = ALERT3
		fi
	}
	:: (state_alarm == NOT_OK) -> atomic {
		if
		:: digit_out -> state_alarm = DIGIT1
		:: (armed && presence) -> state_alarm = ALERT4
		fi
	}
	od
}

active proctype temp_alarm () {
	do
	:: _time = _time + 1

	printf ("state_alarm = %d, state_digit = %d, time = %d, next = %d \n", state_alarm, state_digit, _time, _next)

	od
}

active proctype alarm_button () {
	do
	::	if
		:: (state_digit == IDLE) -> button_alarm = 1
		:: (state_digit == D1) -> button_alarm = 1
		:: (state_digit == D2) -> button_alarm = 0
		:: (state_digit == D3) -> button_alarm = 0
		:: (state_digit == D4) -> button_alarm = 0
		:: (state_digit == D5) -> button_alarm = 0
		:: (state_digit == D6) -> button_alarm = 0
		:: (state_digit == D7) -> button_alarm = 0
		:: (state_digit == D8) -> button_alarm = 0
		:: (state_digit == D9) -> button_alarm = 0
		:: (state_digit == D0) -> button_alarm = 0
		fi;

		printf ("state_alarm = %d, state_digit = %d, button_alarm = %d \n", state_alarm, state_digit, button_alarm)
	od
}
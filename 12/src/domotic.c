#include "domotic.h"

int button_light = 0;
int light_active = 0;
int light_timeout = 0;

int button_alarm = 0;
int alarm_timeout = 0;
int digit_count = 0;
int digit_out = 0;	//Digit selected
int new_digit = 0;	//Boolean: new digit out

int alarm_armed = 0;
int presence = 0;
int code_ok = 0;
int alarm_code[3];
int num_digits = 0;	//Count of digits written in the code
int alarm_alert = 0; //Activated if presence detected and the alarm is armed
int mem_code[3] = {-1,-1,-1};

/*-------------------------------------------------------------
LIGHT CONTROL FUNCTIONS
-------------------------------------------------------------*/

int LightButtonPressed (fsm_t *this) {
	int result = 0;

	result = (button_light & LIGHT_ACTIVE);

	return result;
}

int LightTimeoutReached (fsm_t *this) {
	int timeout = 0;

	unsigned int now = clock()/CLOCKS_PER_SEC;

	if (now >= light_timeout) {
		timeout = 1;
	}

	return timeout;
}

void ActivateLight (fsm_t *this) {

	button_light &= (~LIGHT_ACTIVE);

	// Start/restart the timer
	unsigned int now = clock()/CLOCKS_PER_SEC;
	light_timeout = now + 10;	//The light switches off after 60 seconds

	light_active = 1;

	printf("Domotic Controller State: [LIGHT ON]\n");
	fflush(stdout);
}

void DeactivateLight (fsm_t *this) {

	light_active = 0;

	printf("Domotic Controller State: [LIGHT OFF]\n");
	fflush(stdout);
}

/*-------------------------------------------------------------
ALARM DIGIT SELECTION FUNCTIONS
-------------------------------------------------------------*/

int AlarmButtonPressed (fsm_t *this) {
	int result = 0;

	// result = (button_alarm & ALARM_BUTTON_PRESSED);
	result = button_alarm;

	return result;
}

int NextDigit (fsm_t *this) {
	int result = 0;

	unsigned int now = clock()/CLOCKS_PER_SEC;

	// result = (button_alarm & ALARM_BUTTON_PRESSED) && (now < alarm_timeout);
	result = button_alarm && (now < alarm_timeout);

	return result;
}

int DigitTimeout (fsm_t *this) {
	int timeout = 0;

	unsigned int now = clock()/CLOCKS_PER_SEC;

	if (now >= alarm_timeout) {
		timeout = 1;
	}

	return timeout;
}

void ReactivateCounter (fsm_t *this) {
	// button_alarm &= (~ALARM_BUTTON_PRESSED);
	digit_count += 1;
	button_alarm = 0;

	unsigned int now = clock()/CLOCKS_PER_SEC;

	alarm_timeout = now + 5;
}

void SelectDigit (fsm_t *this) {
	while (digit_count > 10) {
		digit_count -= 10;
	}

	digit_out = digit_count;
	digit_count = 0;
	new_digit = 1;
	printf("[DIGIT SELECTED: %d]\n", digit_out);
}

/*-------------------------------------------------------------
ALARM CODE CONTROL FUNCTIONS
-------------------------------------------------------------*/

int CheckNewDigit (fsm_t *this) {

	return new_digit;
}

int DetectedPresence (fsm_t *this) {

	return (alarm_armed && presence);
}

int VerifyToDisarm (fsm_t *this) {
	
	return (alarm_armed && code_ok);
}

int VerifyToArm (fsm_t *this) {
	
	return (!alarm_armed && code_ok);
}

int CodeNotOK (fsm_t *this) {

	printf("[CODE NOT OK]\n");
	return (!code_ok);
}

void AddToCode (fsm_t *this) {

	alarm_code[num_digits] = digit_out;
	printf("[ALARM CODE]: [%d,%d,%d]\n", alarm_code[0], alarm_code[1], alarm_code[2]);

	num_digits += 1;

	if (num_digits == 3) {
		code_ok = 1;
		if(alarm_armed) {
			int i;
			for (i=0; i < 3; i++){
				if (alarm_code[i] != mem_code[i]) {
					code_ok = 0;
				}
			}
		}
		num_digits = 0;	
	}
	new_digit = 0;
}

void ActivateAlert (fsm_t *this) {
	
	alarm_alert = 1;
	printf("[ALERT ACTIVATED]\n");
}

void EmptyCode (fsm_t *this) {
	alarm_code[0] = -1;
	alarm_code[1] = -1;
	alarm_code[2] = -1;
}

void DisarmAlarm (fsm_t *this) {

	alarm_armed = 0;
	alarm_alert = 0;

	mem_code[0] = -1;
	mem_code[1] = -1;
	mem_code[2] = -1;
	printf("[ALARM DISARMED]\n");

	code_ok = 0;
}

void ArmAlarm (fsm_t *this) {
	
	alarm_armed = 1;

	mem_code[0] = alarm_code[0];
	mem_code[1] = alarm_code[1];
	mem_code[2] = alarm_code[2];
	alarm_code[0] = -1;
	alarm_code[1] = -1;
	alarm_code[2] = -1;
	printf("[ALARM ARMED]\n");

	code_ok = 0;
}


// Introduces a delay until now >= next in milliseconds
// void delay_until (unsigned int next) {
// 	unsigned int now =  clock()/CLOCKS_PER_SEC * 1000;	//Current time since the process started (in ms)

// 	while(next > now){
// 		now = clock()/CLOCKS_PER_SEC * 1000;
// 	}
// 	//printf("Han pasado 10 ms\n");
// }

void *PC_keyboard (void *param) {
	int teclaPulsada;

	while (1) {

		if (kbhit()) {
			teclaPulsada = kbread();

			switch (teclaPulsada) {
				case 'l':
					printf("\nLight button pressed!\n");
					fflush(stdout);
					button_light |= LIGHT_ACTIVE;
					break;

				case 'c':
					printf("\nAlarm button pressed!\n");
					fflush(stdout);
					button_alarm |= ALARM_BUTTON_PRESSED;
					break;

				case 'p':
					printf("\nPresence detected!\n");
					fflush(stdout);
					presence = 1;
					break;
				case 'q':
					printf("\nKey q pressed! Exiting...\n");
					fflush(stdout);
					exit(0);
					break;

				default:
					printf("\nINVALID KEY\n");
					fflush(stdout);
					break;
			}
		}
	}
	
}


int main() {

	printf("Starting program...\n");

	printf("\nPlease press l to activate the light or c to introduce the code to arm/disarm the alarm system.\n");
	printf("If you want to exit the program please press q.\n");

	unsigned int next;

	// Creates thread for keyboard lecture
	pthread_t thread_keyboard_id;

	pthread_create(&thread_keyboard_id, NULL, PC_keyboard, NULL);
	// pthread_join(thread_keyboard_id, NULL);

	fsm_trans_t light[] = {
		{ LIGHT_OFF, LightButtonPressed, LIGHT_ON, ActivateLight },
		{ LIGHT_ON, LightTimeoutReached, LIGHT_OFF, DeactivateLight },
		{ LIGHT_ON, LightButtonPressed, LIGHT_ON, ActivateLight },
		{ -1, NULL, -1, NULL },
	};

	fsm_trans_t digits[] = {
		{ IDLE, AlarmButtonPressed, D1, ReactivateCounter },
		{ D1, NextDigit, D2, ReactivateCounter },
		{ D1, DigitTimeout, IDLE, SelectDigit },
		{ D2, NextDigit, D3, ReactivateCounter },
		{ D2, DigitTimeout, IDLE, SelectDigit },
		{ D3, NextDigit, D4, ReactivateCounter },
		{ D3, DigitTimeout, IDLE, SelectDigit },
		{ D4, NextDigit, D5, ReactivateCounter },
		{ D4, DigitTimeout, IDLE, SelectDigit },
		{ D5, NextDigit, D6, ReactivateCounter },
		{ D5, DigitTimeout, IDLE, SelectDigit },
		{ D6, NextDigit, D7, ReactivateCounter },
		{ D6, DigitTimeout, IDLE, SelectDigit },
		{ D7, NextDigit, D8, ReactivateCounter },
		{ D7, DigitTimeout, IDLE, SelectDigit },
		{ D8, NextDigit, D9, ReactivateCounter },
		{ D8, DigitTimeout, IDLE, SelectDigit },
		{ D9, NextDigit, D0, ReactivateCounter },
		{ D9, DigitTimeout, IDLE, SelectDigit },
		{ D0, NextDigit, D1, ReactivateCounter },
		{ D0, DigitTimeout, IDLE, SelectDigit },
		{ -1, NULL, -1, NULL },
	};

	fsm_trans_t code[] = {
		{ DISARMED, CheckNewDigit, DIGIT1, AddToCode },
		{ DIGIT1, CheckNewDigit, DIGIT2, AddToCode },
		{ DIGIT1, DetectedPresence, ALERT1, ActivateAlert },
		{ DIGIT2, CheckNewDigit, DIGIT3, AddToCode },
		{ DIGIT2, DetectedPresence, ALERT2, ActivateAlert },
		{ DIGIT3, VerifyToDisarm, DISARMED, DisarmAlarm },
		{ DIGIT3, VerifyToArm, ARMED, ArmAlarm },
		{ DIGIT3, CodeNotOK, NOT_OK, EmptyCode },
		{ ARMED, DetectedPresence, ALERT3, ActivateAlert },
		{ ARMED, CheckNewDigit, DIGIT1, AddToCode },
		{ NOT_OK, DetectedPresence, ALERT4, ActivateAlert },
		{ NOT_OK, CheckNewDigit, DIGIT1, AddToCode },
		{ ALERT1, NULL, DIGIT1, NULL },
		{ ALERT2, NULL, DIGIT2, NULL },
		{ ALERT3, NULL, ARMED, NULL },
		{ ALERT4, NULL, NOT_OK, NULL },
		{ -1, NULL, -1, NULL },
	};

	fsm_t* fsm_light = fsm_new (light);
	fsm_t* fsm_digit = fsm_new (digits);
	fsm_t* fsm_code = fsm_new (code);

	while (1) {
		fsm_fire (fsm_light);
		fsm_fire (fsm_digit);
		fsm_fire (fsm_code);
	}

	return 0;
}
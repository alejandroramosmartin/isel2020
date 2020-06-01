#include "domotic.h"

int button_light = 0;
int light_active = 0;
static struct timeval next_light;

int button_alarm = 0;
int digit_count = 0;
int digit_out = 0;	//Digit selected
int new_digit = 0;	//Boolean: new digit out
static struct timeval next_alarm;

int alarm_armed = 0;
int presence = 0;
int code_ok = 0;
int alarm_code[3];
int num_digits = 0;	//Count of digits written in the code
int alarm_alert = 0; //Activated if presence detected and the alarm is armed
int mem_code[3] = {-1,-1,-1};



/*-------------------------------------------------------------
TIME AUXILIAR FUNCTIONS
-------------------------------------------------------------*/

void delay_until (struct timeval* next_activation)
{
  struct timeval now, timeout;
  gettimeofday (&now, NULL);
  timeval_sub (&timeout, next_activation, &now);
  select (0, NULL, NULL, NULL, &timeout);
}

/*-------------------------------------------------------------
LIGHT CONTROL FUNCTIONS
-------------------------------------------------------------*/

int LightButtonPressed (fsm_t *this) {

	return button_light;
}

int LightTimeoutReached (fsm_t *this) {

	struct timeval now;
	gettimeofday (&now, NULL);

	return timeval_less (&next_light, &now);
}

void ActivateLight (fsm_t *this) {

	button_light = 0;

	// Start/restart the timer
	struct timeval now;
	gettimeofday (&now, NULL);

	static struct timeval period = { 60, 0 };	//The light switches off after 60 seconds
	timeval_add (&next_light, &now, &period);

	// Switch on the light
	light_active = 1;

	printf("Light Controller: [LIGHT ON]\n");
	fflush(stdout);
}

void DeactivateLight (fsm_t *this) {

	light_active = 0;

	printf("Light Controller: [LIGHT OFF]\n");
	fflush(stdout);
}

/*-------------------------------------------------------------
ALARM DIGIT SELECTION FUNCTIONS
-------------------------------------------------------------*/

int AlarmButtonPressed (fsm_t *this) {

	return button_alarm;
}

int NextDigit (fsm_t *this) {
	int result = 0;

	struct timeval now;
	gettimeofday (&now, NULL);

	result = button_alarm && (!timeval_less (&next_alarm, &now));

	return result;
}

int DigitTimeout (fsm_t *this) {

	struct timeval now;
	gettimeofday (&now, NULL);

	return timeval_less (&next_alarm, &now);
}

void ReactivateCounter (fsm_t *this) {

	digit_count += 1;
	button_alarm = 0;

	// Start/restart the timer
	struct timeval now;
	gettimeofday (&now, NULL);

	static struct timeval period = { 1, 0 };
	timeval_add (&next_alarm, &now, &period);
}

void SelectDigit (fsm_t *this) {
	while (digit_count >= 10) {
		digit_count -= 10;
	}

	digit_out = digit_count;
	digit_count = 0;
	new_digit = 1;
	printf("Alarm Controller: [DIGIT SELECTED: %d]\n", digit_out);
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

	printf("Alarm Controller: [CODE NOT OK]\n");
	return (!code_ok);
}

int always (fsm_t *this) {

	return 1;
}

void AddToCode (fsm_t *this) {

	alarm_code[num_digits] = digit_out;
	printf("Alarm Controller: [ALARM CODE: [%d,%d,%d]]\n", alarm_code[0], alarm_code[1], alarm_code[2]);

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
	presence = 0;
	printf("Alarm Controller: [ALERT ACTIVATED]\n");
}

void EmptyCode (fsm_t *this) {
	alarm_code[0] = -1;
	alarm_code[1] = -1;
	alarm_code[2] = -1;
}

void DisarmAlarm (fsm_t *this) {

	alarm_armed = 0;
	
	if (alarm_alert) {
		alarm_alert = 0;
		printf("Alarm Controller: [ALERT DEACTIVATED]\n");
	}
	
	mem_code[0] = -1;
	mem_code[1] = -1;
	mem_code[2] = -1;
	printf("Alarm Controller: [ALARM DISARMED]\n");

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
	printf("Alarm Controller: [ALARM ARMED]\n");

	code_ok = 0;
}



void * PC_keyboard (void *param) {
	int teclaPulsada;

	while (1) {

		if (kbhit()) {
			teclaPulsada = kbread();

			switch (teclaPulsada) {
				case 'l':
					printf("\nLight button pressed!\n");
					fflush(stdout);
					button_light = 1;
					break;

				case 'c':
					printf("\nAlarm button pressed!\n");
					fflush(stdout);
					button_alarm = 1;
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

fsm_t* fsm_new_light () {

	static struct fsm_trans_t light[] = {
		{ LIGHT_OFF, LightButtonPressed, LIGHT_ON, ActivateLight },
		{ LIGHT_ON, LightTimeoutReached, LIGHT_OFF, DeactivateLight },
		{ LIGHT_ON, LightButtonPressed, LIGHT_ON, ActivateLight },
		{ -1, NULL, -1, NULL },
	};

	return fsm_new(light);
}

fsm_t* fsm_new_digit () {

	static struct fsm_trans_t digits[] = {
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

	return fsm_new(digits);
}

fsm_t* fsm_new_code () {

	static struct fsm_trans_t code[] = {
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
		{ ALERT1, always, DIGIT1, NULL },
		{ ALERT2, always, DIGIT2, NULL },
		{ ALERT3, always, ARMED, NULL },
		{ ALERT4, always, NOT_OK, NULL },
		{ -1, NULL, -1, NULL },
	};

	return fsm_new(code);
}


fsm_t* fsm_light;
fsm_t* fsm_digit;
fsm_t* fsm_code;


static void light_function (struct event_handler_t* this) {
    	
    static const struct timeval period = { 0, 10 };	//10 ms
    fsm_fire (fsm_light);
    timeval_add (&this->next_activation, &this->next_activation, &period);
	
}

static void alarm_digit_function (struct event_handler_t* this) {

	static const struct timeval period = { 0, 10 };	//10 ms
    fsm_fire (fsm_digit);
    timeval_add (&this->next_activation, &this->next_activation, &period);

}

static void alarm_code_function (struct event_handler_t* this) {

	static const struct timeval period = { 0, 10 };	//10 ms
    fsm_fire (fsm_code);
    timeval_add (&this->next_activation, &this->next_activation, &period);
	
}


int main() {

	printf("Starting program...\n");

	printf("\nPlease press l to activate the light or c to introduce the code to arm/disarm the alarm system. Press p to detect presence.\n");
	printf("If you want to exit the program please press q.\n");

	// Creates thread for keyboard lecture
	pthread_t thread_keyboard_id;

	pthread_create(&thread_keyboard_id, NULL, PC_keyboard, NULL);

	EventHandler eh_light, eh_digit, eh_code;
	reactor_init ();

	fsm_light = fsm_new_light();
	fsm_digit = fsm_new_digit();
	fsm_code = fsm_new_code();

	event_handler_init (&eh_light, 3, light_function);
	reactor_add_handler (&eh_light);

	event_handler_init (&eh_digit, 2, alarm_digit_function);
	reactor_add_handler (&eh_digit);

	event_handler_init (&eh_code, 1, alarm_code_function);
	reactor_add_handler (&eh_code);

	while (1) {

    	reactor_handle_events ();
	}

	return 0;
}
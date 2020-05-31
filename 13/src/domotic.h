#include "fsm.c"
#include <time.h>
#include <sys/time.h>
#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>

#include "kbhit.c" // Para poder detectar las teclas pulsadas sin bloqueo y leer las teclas pulsadas
#include "task.c"

#define CLK_MS 10

enum fsm_light_state {
	LIGHT_ON,
	LIGHT_OFF
};

enum fsm_digit_state {
	IDLE,
	D1,
	D2,
	D3,
	D4,
	D5,
	D6,
	D7,
	D8,
	D9,
	D0
};

enum fsm_code_state {
	DISARMED,
	DIGIT1,
	DIGIT2,
	DIGIT3,
	ARMED,
	NOT_OK,
	ALERT1,
	ALERT2,
	ALERT3,
	ALERT4
};

#define LIGHT_ACTIVE			0x01
#define ALARM_BUTTON_PRESSED	0x10

void *PC_keyboard (void *param);

int LightButtonPressed (fsm_t *this);
int LightTimeoutReached (fsm_t *this);

void ActivateLight (fsm_t *this);
void DeactivateLight (fsm_t *this);

#include "fsm.c"
#include <time.h>
#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>

#include "kbhit.c" // Para poder detectar las teclas pulsadas sin bloqueo y leer las teclas pulsadas

#define CLK_MS 10

enum fsm_state {
	LIGHT_ON,
	LIGHT_OFF
};

#define LIGHT_ACTIVE	0x01

void *PC_keyboard (void *param);

int LightButtonPressed (fsm_t *this);
int LightTimeoutReached (fsm_t *this);

void ActivateLight (fsm_t *this);
void DeactivateLight (fsm_t *this);

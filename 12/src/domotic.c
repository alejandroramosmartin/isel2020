#include "domotic.h"

int button_light = 0;
int light_active = 0;
int light_timeout = 0;


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
	light_timeout = now + 60;	//The light switches off after 60 seconds

	light_active = 1;

	printf("Domotic Controller State: [LIGHT ON]\n");
	fflush(stdout);
}

void DeactivateLight (fsm_t *this) {

	light_active = 0;

	printf("Domotic Controller State: [LIGHT OFF]\n");
	fflush(stdout);
}

// Introduces a delay until now >= next in milliseconds
void delay_until (unsigned int next) {
	unsigned int now =  clock()/CLOCKS_PER_SEC * 1000;	//Current time since the process started (in ms)

	while(next > now){
		now = clock()/CLOCKS_PER_SEC * 1000;
	}
	//printf("Han pasado 10 ms\n");
}

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

	fsm_t* fsm_light = fsm_new (light);


	next = clock()/CLOCKS_PER_SEC * 1000;
	while (1) {
		fsm_fire (fsm_light);

		next += CLK_MS;
		delay_until (next);
	}

	return 0;
}
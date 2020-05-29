#include "domotic.h"

int LightButtonPressed (fsm_t* this) {
	int button_light = 0;

	// button_light = 

	return button_light;
}

int LightTimeoutReached (fsm_t* this) {
	int result = 0;

	return result;
}

void ActivateLight (fsm_t* this) {

}

void DeactivateLight (fsm_t* this) {

}

void delay_until (unsigned int next) {
	unsigned int now =  millis();

	if (next > now) {
		delay (next-now);
	}
}

int main() {

	fsm_trans_t light[] = {
		{ LIGHT_OFF, LightButtonPressed, LIGHT_ON, ActivateLight },
		{ LIGHT_ON, LightTimeoutReached, LIGHT_OFF, DeactivateLight },
		{ LIGHT_ON, LightButtonPressed, LIGHT_ON, ActivateLight },
		{ -1, NULL, -1, NULL },
	};

	fsm_t* fsm_light = fsm_new (light);

	next = millis();
	while (true) {
		fsm_fire (fsm_light);

		next += CLK_MS;
		delay_until (next);
	}
	
	return 0;
}
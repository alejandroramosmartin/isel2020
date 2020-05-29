/*
 * tmr.c
 *
 *  Created on: 1 de mar. de 2016
 *      Author: Administrador
 */

#include "tmr.h"
#include <stdlib.h>
#include <signal.h>
#include <time.h>

tmr_t*
tmr_new (notify_func_t isr)
{
    tmr_t* this = (tmr_t*) malloc (sizeof (tmr_t));
    tmr_init (this, isr);
    return this;

}

void
tmr_init (tmr_t* this, notify_func_t isr) {
    this->se.sigev_notify = SIGEV_THREAD;	//notificación cuando expire el tiempo: se crea y ejecuta una hebra
    this->se.sigev_value.sival_ptr = &(this->timerid); //argumento para el thread: direccion de timerid
    this->se.sigev_notify_function = isr; //cuerpo del thread: funcion isr. AQUI va la funcion isr de player.c
    this->se.sigev_notify_attributes = NULL; //no hay atributos para el isr
    timer_create (CLOCK_REALTIME, &(this->se), &(this->timerid));  /* o CLOCK_MONOTONIC si se soporta */
    //Se crea el temporizador CLOCK_REALTIME identificado por timerid y se especifica el tipo de notificación
    //a generar cuando expire el tiempo de temporización (se coge de se => en nuestro caso NULL => se genera
    //una señal de alarma SIGALRM
}

void
tmr_destroy(tmr_t* this)
{
    tmr_stop (this);
    free(this);	//se abandona el trozo de memoria reservado por el temporizador
}

void
tmr_startms(tmr_t* this, int ms) {
    this->spec.it_value.tv_sec = ms / 1000;	//it_value => valor inicial del temporizador
    this->spec.it_value.tv_nsec = (ms % 1000) * 1000000;
    this->spec.it_interval.tv_sec = 0;	//it_interval = 0; el temporizador no se reinicia al
    this->spec.it_interval.tv_nsec = 0;	//expirar el tiempo
    timer_settime (this->timerid, 0, &(this->spec), NULL); //se enciende el temporizador con los valores definidos
}

void
tmr_stop (tmr_t* this) {
    timer_delete (this->timerid);
}


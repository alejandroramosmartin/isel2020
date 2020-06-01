Para arrancar el programa deberá primero compilar el fichero domotic.c escribiendo el siguiente comando en el terminal:

	gcc domotic.c -o domotic -pthread

que generará el fichero ejecutable domotic. A continuación, podrá arrancar el programa escibiendo el siguiente comando:

	./domotic
	

NOTA IMPORTANTE:

Los ficheros para la lectura del teclado PC, kbhit.c, kbhit.h y dprintf.h, han sido copiados del código facilitado en la asignatura de SDG2 durante el curso 2018/19.

Los ficheros task.c, task.h, reactor.c y reactor.h han sido copiados del repositorio de la asignatura de ISEL 2020: https://github.com/josemmoya/isel2020, así como algunas funciones utilizadas en los otros ficheros.
all: pan
	./pan -a -f -N spec_light
	./pan -a -f -N spec_digit
	./pan -a -f -N spec_alarm

pan: pan.c
	gcc -o pan pan.c

pan.c: model.pml
	spin -a model.pml

clean:
	$(RM) pan.* pan *.tmp *.trail

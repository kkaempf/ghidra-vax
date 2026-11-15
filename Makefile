all: data/languages/vax.sla test

data/languages/vax.sla: data/languages/vax.slaspec 
	sleigh $^ $@

test:
	make -C tests

clean:
	rm -rf data/languages/vax.sla
	make -C tests clean

all: VAX/data/languages/vax.sla test

VAX/data/languages/vax.sla: VAX/data/languages/vax.slaspec 
	/abuild/projects/Ghidra/ghidra/Ghidra/Features/Decompiler/src/decompile/cpp/sleigh_dbg $^
	sleigh $^ $@

test:
	make -C tests

clean:
	rm -rf VAX/data/languages/vax.sla
	make -C tests clean

default:
	bison -d minic.y
	flex minic.l
	cc -o lex minic.tab.c lex.yy.c  -lc -ll
	./lex < input.c
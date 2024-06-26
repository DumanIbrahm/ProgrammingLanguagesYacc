hehe: hehe_parser
	./hehe_parser 

hehe_parser: lex.yy.c y.tab.c
	gcc -o hehe_parser lex.yy.c y.tab.c -ll

lex.yy.c: hehe.l
	lex hehe.l

y.tab.c: hehe.y
	yacc -d hehe.y

clean:
	rm -f hehe hehe_parser lex.yy.c y.tab.c y.tab.h

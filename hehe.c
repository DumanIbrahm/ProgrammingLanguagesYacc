#include <stdio.h>
#include "hehe.h"

extern int yylex();
extern int yylineno;
extern char* yytext;

char *names[] = {NULL,"numi","numf","strc","str","tf"};

int main(void){
	int ntoken, vtoken;
	ntoken = yylex();
	while(ntoken){
		printf("%d\n", ntoken);
		ntoken = yylex();
	}
	return 0;
}
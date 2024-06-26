%{
#include <stdlib.h>
#include "hehe.h"
#include "y.tab.h"
int multiline_comment_start = 0;
char currentType[32];
char currentID[32];
char currentValue[32]; //int,char,double,bool
char currentOp[10];
int globalScope = 0;
void yyerror(char *);
%}

%option yylineno
WHITESPACE          [ \t\r\f\v]+
%x COMMENT 



%%

{WHITESPACE}	;


"-*"                        {multiline_comment_start = yylineno; BEGIN COMMENT; 
                            }
<COMMENT>.|{WHITESPACE}     ;
<COMMENT>\n                 ;
<COMMENT>"*-"               {BEGIN INITIAL; printf("multiline comment ended at line %d\n", yylineno);}
<COMMENT><<EOF>>            {printf("Line %d multiline comment not terminated\n", multiline_comment_start); yyterminate();}             
"--".*                      {printf("single line comment at line %d\n", yylineno);}


"TRUE"          {return TRUE;}
"FALSE"         {return FALSE;}
"TF"   	        {return TYPE_BOOLEAN;}
"FUNCTION"	    {return FUNCTION;}
"ENDF"		    {return END_FUNCTION;}
"RET"	        {return RETURN;}
"IF"		    {return IF;}
"ELSE"		    {return ELSE;}
"ELIF"		    {return ELSE_IF;}
"DO"		    {return DO;}
"WHILE"		    {return WHILE;} /* calisiyor*/
"LPW"		    {return END_WHILE;} /* calisiyor*/
"FOR"		    {return FOR;}
"LPF"		    {return END_FOR;}
"TRY"		    {return TRY;}
"CATCH"		    {return CATCH;}
"THEN"		    {return THEN;}
"SWITCH"	    {return SWITCH;}
"CASE"		    {return CASE;}
"IMPORT"	    {return IMPORT;}
"STP"		    {return BREAK;}
"CONTINUE"	    {return CONTINUE;}
"PRINT"	        {return PRINT;}  /* calisiyor*/
"SCAN"	        {return SCAN;}
"NL"		    {return NL;}
"^"             {return POW;}
"+"             {return PLUS;}
"-"             {return MINUS;}
"*"             {return MULTIPLE;}
"/"             {return DIVIDE;}
"%"             {return MOD;}
"<"             {return LESSTHAN;}
">"             {return GREATERTHAN;}
">+"		    {return INCREASE;}
">-"		    {return DECREASE;}
":"		        {return COLON;}
";"		        {return SEMICOLON;}
","		        {return COMMA;}
">="		    {return EQUALORGREAT;}
"<="	        {return EQUALORLESS;}
"=="		    {return EQUAL;}
"!="		    {return ISNOTEQUAL;}
"&"		        {return LOGICAL_AND_OPERATOR;}
"|"		        {return OR;}
"("		        {return LEFT_PARENTHESIS;}
")"		        {return RIGHT_PARENTHESIS;}
"{"		        {return LEFT_BRACE;}
"}"		        {return RIGHT_BRACE;}
\[		        {return LEFTSQRBR;}
\]		        {return RIGHTSQRBR;}
\"		        {return QUOTES;}



0                           {yylval.integer = atoi(yytext); return INTEGER; }
[1-9][0-9]*                 {yylval.integer = atoi(yytext); return INTEGER; }
[a-zA-Z_]                   { yylval.ide = *yytext - 'a'; return IDENTIFIER; }
[-()<>=+*/;{}.]             {return *yytext; }
[ \t\n]		                ;
.		                    yyerror("Unknown character");
%%

int yywrap (void) {return 1;}
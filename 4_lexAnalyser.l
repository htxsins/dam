%{
#include<stdio.h>
%}

%%
"int"|"float"|"double"|"char"|"boolean"|"if"|"else"|"for"|"return"	{ printf("Keyword: %s\n", yytext); }
[0-9]+(\.[0-9]+)?							{ printf("Number: %s\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]*							{ printf("Identifier: %s\n", yytext); }
"<="|">="|"=="|"!"|"!="|"+"|"-"|"*"|"/"|"<"|">"				{ printf("Operator: %s\n", yytext); }
[{}();,]								{ printf("Special Character: %s\n", yytext); }
[ \t\n]+								{ /* Ignore whitespace */ }
.									{ printf("Unknown token: %s\n", yytext); }

%%

void main(){
	
	printf("Enter Code (ctrl+d to exit): ");
	yylex();
	
}
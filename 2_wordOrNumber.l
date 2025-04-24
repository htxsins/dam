%{
#include<stdio.h>
%}

%%

[0-9]+		{ printf("Its a number\n"); }
[a-zA-Z]+	{ printf("Its a Word\n"); }
[ \t\n]+	{ /* ignore white spaces*/ }
.		{ printf("Invalid Input\n"); }

%%


void main(){
	
	printf("Enter a char: ");
	yylex();

}
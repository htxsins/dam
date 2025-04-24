%{
#include<stdio.h>
int lines=0, words=0, chars=0;
%}

%%
\n		{ lines++; chars++; }
[ \t]+		{ chars+=yyleng; }
[a-zA-Z0-9]+	{ words++; chars+=yyleng; }
.		{ chars++; }
%%

void main(){
	
	printf("Enter the text:\n");
	yylex();
	printf("\nLines: %d\n", lines);
	printf("Words: %d", words);
	printf("Chars: %d", chars);
	
}

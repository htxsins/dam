%{
void display(int, char *);
int flag = 0;
%}

%%

[aeiouAEIOU]     { flag = 1; display(flag, yytext); }
[a-zA-Z]         { flag = 0; display(flag, yytext); }
.                { printf("Enter alphabet\n"); }

%%

void main()
{
   printf("Enter any character: ");
   yylex();
}

void display(int flag, char * t)
{
    if( flag == 1)
        printf("The given character %s is a vowel\n", t);
    else
        printf("The given character %s is a consonant\n", t);
}

%{
#include <stdio.h>
%}

%%
int|if|while|for    { printf("Keyword: %s\n", yytext); }
[0-9]+              { printf("Number: %s\n", yytext); }
[a-zA-Z][a-zA-Z0-9]+ { printf("Identifier: %s\n", yytext); }
[=+\-*/]            { printf("Operator: %s\n", yytext); }
[ \t\n]             /* Ignore whitespace and newlines */
.                   { printf("Invalid: %s\n", yytext); }
%%

int main() {
    yylex();
    return 0;
}


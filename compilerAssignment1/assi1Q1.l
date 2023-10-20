
%{ 
#include<stdio.h> 
#include<string.h> 
int i = 0; 
%} 

/* Rules Section*/
%% 
([a-zA-Z_][a-zA-Z_0-9]*) {printf("Valid identifier");} 

%% 

int yywrap(void){} 

int main() 
{ 
	// The function that starts the analysis 
	yylex(); 

	return 0; 
} 


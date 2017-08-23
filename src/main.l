%{

#include <stdio.h>
int rola =0;

%}

PALAVRA [[:alnum:]]

%%

\({PALAVRA}+[._-]*\)+[@]\({PALAVRA}+[._-]*{PALAVRA}*\)+ { printf("%s\n",yytext); }
	
%%

int main() {
  yylex();
  return 0;
}

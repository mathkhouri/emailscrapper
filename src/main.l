%{

#include <stdio.h>

%}

PALAVRA [[:alnum:]]
ESPACO  [[:space:]] 

%%

({PALAVRA}+[._-]*)+[@]({PALAVRA}+([._-]{PALAVRA})?)+ { printf("%s\n",yytext); }

.  ;
\n ;
	
%%

int main() {
  yylex();
  return 0;
}

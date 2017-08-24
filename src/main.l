%{

#include <stdio.h>

%}

PALAVRA [[:alnum:]]

%%

({PALAVRA}+([._-]{PALAVRA})?)+[@]({PALAVRA}+"-\ ")+[.]* ; 

({PALAVRA}+([._-]{PALAVRA})?)+[@]({PALAVRA}+([._-]{PALAVRA})?)+ { printf("%s\n",yytext); }

.  ;
\n ;
	
%%

int main() {
  yylex();
  return 0;
}

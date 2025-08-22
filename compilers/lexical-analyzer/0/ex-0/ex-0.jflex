// Code section
%%
// Declaration section
%class Lexer
%standalone


curr = [1-9][0-9]*"."[0-9][0-9] | 0?"."[0-9][0-9]
Int = 0 | [1-9][0-9]*

%%
// Rule section

{curr} { System.out.println("Currency: " + yytext()); }
{Int} { System.out.println("Integer: " + yytext()); }

. { System.out.println("Invalid: " + yytext()); }
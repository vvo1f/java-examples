

%%
%class Lexer
%standalone

word = [A-Z]{5}([A-Z]{2})* // at least 5 uppercase characters
sep = \*|\-

// reg = ({word}{sep}){4} // xxx wrong | why?! what do you think? :)
reg = ({word}{sep}){3}{word}(({sep}{word}){2})*

%%

{reg} {System.out.println("REGEX: " + yytext());}
. {System.out.println("Invalid: " + yytext());}
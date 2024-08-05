/* Exercise-1 */

%%

%standalone

%class Lexer
%unicode


nl = \n\r|\r\n

letter = [^\n\r\\/:*?\"->|0-9]
digit = [0-9]
id = ({letter}|{digit})+ /* sub-expression */

%%

^({letter}:)?(\\)?({id}\\)*{id}("."{id})?$ { 
    System.out.println("Path correct: " + yytext()); 
}

^.+$ {
    System.out.println("Path with Error: " + yytext());
}

{nl}    {;}
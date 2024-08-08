/* Exercise-2 */


%%

%standalone
%class Lexer
%unicode

nl          = \n\r|\r\n
ipcomp      = [0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5]
port        = [1-9][0-9]{0,3}
ipaddress   = ({ipcomp}.){3}{ipcomp}
name        = ([^\n\r%<>:.\\#]|{escape})+
escape      = %[0-9A-F][0-9A-F]
firstlevel  = com|it|gov|net|edu|fr|uk|jp|ch|de
domain      = {name}.{name}(.{name})*.{firstlevel}
schema      = http|https|ftp|geopher|file|nntp

%%

{schema}"://"({domain}|{ipaddress})(":"{port})?("/"{name})*("/"|("/"{name}"."{name} ("#"{name})?))? {
    System.out.println("Correct URL: " + yytext());
}

.* {
    System.out.println("Uncorrect URL: " + yytext());
}

{nl}    {;}
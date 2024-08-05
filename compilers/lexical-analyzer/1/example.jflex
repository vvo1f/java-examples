// (i) CODE SECTION

// (ii) DECLARATION SECTION
%%
%standalone
%class Calc

nl                          = \n|\r|\r\n
intNumber                   = [1-9][0-9]*
singedInteger               = ("+"|"-")?[0-9]*
floatingPointNumber         = ("+"|"-")?[1-9][0-9]*"."[0-9]|"."[0-9]*|0"."[0-9]*
stringStartedWithSA         == (SA|sa)([a-z]|[A-Z])


%%


// (iii) RULES SECTION

{intNumber}                 {System.out.println("Number: " +yytext());}
{singedInteger}             {System.out.println("signed Integer: " +yytext());}
{floatingPointNumber}       {System.out.println("FP Number: " +yytext());}
{stringStartedWithSA}       {System.out.println("String starting with SA: " +  yytext() + "repeated: " + yylength());}


"+"                         {System.out.println("PLUS");}
"-"                         {System.out.println("MINUS");}
"*"                         {System.out.println("STAR");}
"/"                         {System.out.println("DIV");}


"("                         {System.out.println("OPEN_BRACKET");}
")"                         {System.out.println("CLOSE_BRACKET");}


"="                         {System.out.println("EQUAL\n");}

{nl}|" "|\t                 {;}

.                           {System.out.println("Error: " + yytext());}



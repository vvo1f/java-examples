/**************************
 Scanner
***************************/

import java_cup.runtime.*;

%%

%unicode
%cup
%line
%column

%{
	private Symbol sym(int type) {
		return new Symbol(type, yyline, yycolumn);
	}
	
	private Symbol sym(int type, Object value) {
		return new Symbol(type, yyline, yycolumn, value);
	}
	
%}


// token1
token1 = (("%%%%%"("%%")*) | (("**"|"???"){2,3}) ) {odd_number} 
// -35 < odd_number < 333
odd_number =  "-"(3[135]|2[13579]|1[13579]|[13579]) | ([13579] | [1-9][13579] | [12][0-9][13579] | 3[0-2][13579] | 33[13])

// token2
token2 = {date} ("-"|"+") {date}
// 2015/12/12 < date < 2016/03/13 with exclusion of day: 2016/01/05. NOTE: Feb has 29 days.
date =  2015"/"12"/"(1[2-9]|2[0-9]|3[01]) | 2016"/"(01"/"(0[1-46-9]|1[0-9]|2[0-9]|3[01])|02"/"(0[1-9]|[12][0-9])|03"/"(0[1-9]|1[0-3]))

// token3
token3	= "$" {binary_number}
binary_number = 1[01][01] | 10[01][01] | 11[01][01] | 100[01][01] | 101[01][01] | 110[01][01] | 111[01][01] | 10000[01][01] | 1001[01][01] | 101000



uint = 0 | [1-9][0-9]*

q_string = \" ~ \"
cpp_comment     = "//" .*
separator = "##"("##")+

%%




{token1}        {return sym(sym.TOKEN1);}
{token2}        {return sym(sym.TOKEN2);}
{token3}        {return sym(sym.TOKEN3);}


{uint}				{ return sym(sym.UINT, new Integer(yytext())); }
{q_string}			{ return sym(sym.QSTRING, yytext()); }
{separator}			{ return sym(sym.SEP); }


"PRINT_MIN_MAX" 	{ return sym(sym.MINMAX);}
"PART" 				{ return sym(sym.PART); }
"m/s" 				{ return sym(sym.MS);}
"=" 				{ return sym(sym.EQ);}
"{" 				{ return sym(sym.SO);}
"}" 				{ return sym(sym.SC);}
"," 				{ return sym(sym.CM);}
";"					{ return sym(sym.S);}
"("             	{return sym(sym.RO);}
")"             	{return sym(sym.RC);}
"->" 				{ return sym(sym.ARROW);}
"|" 				{ return sym(sym.PIPE);}
":" 				{ return sym(sym.COL);}
"m" 				{ return sym(sym.M);}


{cpp_comment}	 		{;}
\r | \n | \r\n | " " | \t	{;}

.				{ System.out.println("Scanner Error: " + yytext()); }

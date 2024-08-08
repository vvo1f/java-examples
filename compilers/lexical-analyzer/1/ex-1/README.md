# Exercise#1

1 Exercise
Given the following regular definitions related to a filename description with an optional path (in DOS format)
write, using the JFLEX program, a scanner which recognizes a correct pathname.

1.1 Regular Definitions
PathFileName → ( Drive : )? (\)? (PathName \ )_ FileName (. FileType)?
Drive
→ letter
PathName
→ id
FileName
→ id
FileType
→ id
Id
→ (letter | digit )( letter | digit )_
letter: all the alphabet letters and the special characters except: slash, backslash, colon, star, question mark,
double quotes, minus, greater, OR symbol.
digit: digits from 0 to 9

1.2 Examples
A:\DIR1\DIR2\FILE1.EXE
E:\FILE1.BAT
DIR1\DIR2\FILE2
\UNIX\FILE.C
A:README.TXT
PIPPO

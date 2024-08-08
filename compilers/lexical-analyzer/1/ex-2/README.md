# Exercise#2

2 Exercise
Write the regular definitions and the correspondent JFLEX program for recognizing a subset of the URL defined
by HTTP. This subset must include:

    • The recognition of more than one scheme (like http:, ftp:, gopher: and similar ones).
    • The domains expressed as names (e.g. www.polito.it) or as IP addresses (e.g. 130.192.4.4)
    • The use of ports different from the default one for the current scheme (domain followed by “:” and by the
    number of the alternative port).
    • The use of anchors in the HTML file (file name followed by a “#” and by the anchor name).
    • Sequences of escape (i.e. the character “%” followed by a pair of exadecimal digits) in any position.

2.1 Examples of valid URL
Strings of characters recognized by the lexical analyzer as FileName:
http://www.mysite.it/file.html
ftp://10.9.9.71/prova.zip
http://another.site.com/%7Euser/index.html#rif33
nntp://news.site.ch:8181/data/

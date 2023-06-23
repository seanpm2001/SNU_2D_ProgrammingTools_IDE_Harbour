#include "hbclass.ch"
PROCEDURE Main()
LOCAL oPerson
CLS
oPerson := Person():New( "Dave" )
oPerson:Eyes := "Invalid"
oPerson:Eyes := "Blue"
Alert( oPerson:Describe() )
RETURN

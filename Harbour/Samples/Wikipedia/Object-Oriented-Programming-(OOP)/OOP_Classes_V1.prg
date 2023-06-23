CREATE CLASS Person
VAR Name INIT ""
METHOD New( cName )
METHOD Describe()
ACCESS Eyes INLINE ::pvtEyes
ASSIGN Eyes( x ) INLINE iif( HB_ISSTRING( x ) .AND. x $ "Blue,Brown,Green", ::pvtEyes :=
x, Alert( "Invalid value" ) )
PROTECTED:
VAR pvtEyes
ENDCLASS
// Sample of normal Method definition
METHOD New( cName ) CLASS Person
::Name := cName
RETURN Self
METHOD Describe() CLASS Person
LOCAL cDescription
IF Empty( ::Name )
cDescription := "I have no name yet."
ELSE
cDescription := "My name is: " + ::Name + ";"
ENDIF
IF ! Empty( ::Eyes )
cDescription += "my eyes' color is: " + ::Eyes
ENDIF
RETURN cDescription

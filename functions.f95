PROGRAM functions
!
! An example of basic input output
!
REAL :: x,y
WRITE (*,*) 'Please enter two numbers seperated by a comma'
READ (*,*) x,y
SUM = x + y
SUB = x - y
MULTI = x * y
DIV = x / y
EXP = x ** y
WRITE (*,*) 'The sum is', SUM
WRITE (*,*) 'The subtend is', SUB 
WRITE (*,*) 'The multiple is', MULTI
WRITE (*,*) 'The dividend is', DIV
WRITE (*,*) 'The exponant is', EXP
END PROGRAM

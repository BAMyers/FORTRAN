PROGRAM Quadratic
!
! Purpose:
!  This is to solve for the roots of the quadratic equation.
!  An Examplefrom FORTRAN for Scientists and engineers by Steven J. Chapman
!
IMPLICIT NONE

! Data Dictionary
REAL :: a
REAL :: b
REAL :: c
REAL :: discriminant
REAL :: imag_part
REAL :: r_part
REAL :: x1
REAL :: x2

! Prompt the user for coefficients of the eqn.
WRITE (*,*) 'This program solves for the roots of the quadratic'
WRITE (*,*) 'equation of the form A * X**2 + B * X + C = 0. '
WRITE (*,*) 'Enter the coefficients A, B, C: '
READ (*,*) a, b, c

! Echo the entry
WRITE (*,*) 'The coefficients A, B, and C are: ', a, b,c

! Calculate discriminant
discriminant = b**2 - 4. * a *c

! Solve for the roots
IF ( discriminant > 0. ) THEN 
   x1 = ( -b + sqrt( discriminant )) / ( 2. * a )
   x2 = ( -b - sqrt( discriminant )) / ( 2. * a )
   WRITE (*,*) 'This equation has two real roots:'
   WRITE (*,*) 'X1 = ', x1
   WRITE (*,*) 'X2 = ', x2

ELSE IF ( discriminant < 0. ) THEN
   r_part  = ( -b ) / ( 2. * a )
   imag_part = sqrt ( abs ( discriminant ) ) / ( 2. * a )
   WRITE (*,*) 'This equation has complex roots:'
   WRITE (*,*) 'X1 = ', r_part, ' +i ', imag_part
   WRITE (*,*) 'X2 = ', r_part, ' -i ', imag_part

ELSE IF ( discriminant == 0. ) THEN 
   x1 = ( -b ) / ( 2. * a )
   WRITE (*,*) 'This equation has two idential real roots:'
   WRITE (*,*) 'X1 = X2 = ', x1

END IF

END PROGRAM quadratic
 

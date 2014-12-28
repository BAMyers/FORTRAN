PROGRAM funxy
!
!Purpose:
! This program is an example from Fortran for Scientists and Engineers by Steven J. Chapman.
!
!          -
!         |X + Y           X >= 0 and Y>= 0
! F(X,Y)= |X + Y**2        X >= 0 and Y < 0
!         |X**2 + Y        X < 0 and Y >= 0
!         |X**2 + Y**2     X < 0 and Y < 0
!          -
!
IMPLICIT NONE

! Data Dictionary
REAL :: x
REAL :: y
REAL :: fun

! Prompt user for values of x,y
WRITE (*,*) 'Enter the coefficients of x and y.'
READ (*,*) x, y

! Echo inputs
WRITE (*,*) 'The coefficients of x and y are: ', x, y

! Calculate the function of f(x,y) based upon the signs
IF (( x >= 0. ) .AND. ( y >= 0. )) THEN
   fun = x + y
ELSE IF (( X >= 0. ) .AND. ( y < 0. )) THEN
   fun = x**2 + y
ELSE IF (( x < 0. ) .AND. ( y >= 0. )) THEN
   fun = x**2 + y
ELSE
   fun = x**2 + y**2
END IF

! Write the value of the function
WRITE (*,*) 'The calue of the function is: ', fun

END PROGRAM funxy

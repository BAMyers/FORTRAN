PROGRAM function
!
! This program is used to evaluate a natural log function
!
IMPLICIT NONE

! Data Dictionary
REAL :: x
REAL :: y

! Prompt user input
DO
   ! Read the next value
   WRITE (*,*) 'Enter the next value:'
   READ (*,*) x
   WRITE (*,*) 'The value entered was:', x

   IF ( x == 0 ) EXIT

   ! Calculate the answers
   y = LOG ( 1 / ( 1 - x ))
   WRITE (*,*) 'The natural log is:', y

END DO

END PROGRAM function

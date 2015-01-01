PROGRAM decibel
!
! Purpose:
!  To calculate the a power level against a refrence
!
IMPLICIT NONE

! Data Dictionary
REAL :: p2
REAL :: dB
REAL :: p1
p1 = 0.001

! Input values
WRITE (*,*) 'Please input p2'
READ (*,*) p2

! Ech0 Values
WRITE (*,*) 'The value you entered for p2 is:', p2

! Select responce
IF ( p2 > 0 ) THEN 
   dB = LOG10 ( p2 / p1 )
   WRITE (*,*) 'The power in decibels is:', dB

ELSE 
   WRITE (*,*) 'The input value will make the equation undefined. Please input a positive value greater than 0'

END IF

END PROGRAM decibel

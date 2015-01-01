PROGRAM factorial
!
! This is designed to calculate a factorial
!
IMPLICIT NONE

! Data Dictonary
INTEGER :: i
INTEGER :: n
REAL :: n_factorial

! User input of data
WRITE (*,*) 'This program will calculate a factorial in the form of N!'
WRITE (*,*) 'Insert N'

READ (*,*) n

WRITE (*,*) 'calculating the factorial for', n

! Formulas used for calculation
n_factorial = 1
DO i = 1, n
   n_factorial = n_factorial * i
END DO

WRITE (*,*) 'The result is:', n_factorial

END PROGRAM factorial

PROGRAM fizzbuzz
!
! Purpose:
!   This program is a basic test
!
IMPLICIT NONE

INTEGER :: i

DO i=1,100
    IF (MOD(i, 15) == 0) THEN
        WRITE (*,*) 'FizzBuzz'
    ELSE IF (MOD(i, 3) == 0) THEN
        WRITE (*,*) 'Fizz'
    ELSE IF (MOD(i, 5) == 0) THEN
        WRITE (*,*) 'Buzz'
    ELSE
        WRITE (*,*) i
    END IF

END DO

END PROGRAM fizzbuzz

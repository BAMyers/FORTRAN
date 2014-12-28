PROGRAM pickanumber
!
! Purpose:
!  To experiment with cases
!
IMPLICIT NONE

! Data Ductionary
INTEGER :: value

! Input data
WRITE (*,*) 'Pick a number from 1 to 10'
READ (*,*) value

! Select case
SELECT CASE (value)
CASE (1,3,5,7,9)
   WRITE (*,*) 'The value is odd.'
CASE (2,4,6,8,10)
   WRITE (*,*) 'The value is even.'
CASE (11:)
   WRITE (*,*) 'The value is too high.'
CASE DEFAULT
   WRITE (*,*) 'The value is negative or zero.'
END SELECT

END PROGRAM pickanumber

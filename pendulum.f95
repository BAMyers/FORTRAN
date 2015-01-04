PROGRAM Pendulum 
!
! A program designed to calculate the 
! period of a linear pendulum
!
IMPLICIT NONE

! DATA Dictionary
REAL :: L = 1.5			! Length (m)
REAL :: g = 9.81		! Gravity (m/s^2)
REAL :: T				! Period (s)
REAL, PARAMETER :: PI = 3.141593

! Perform calculations
T = 2. * PI * SQRT(L / g)

! output results
WRITE (*,*) 'The period of osciliation is', T, 'seconds'

END PROGRAM Pendulum
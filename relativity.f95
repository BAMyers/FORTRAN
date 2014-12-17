PROGRAM Relativity
!
! A program designed to calculate the mass consumption
! of a nuclear powerplant per year
!
IMPLICIT NONE

! DATA Dictionary
REAL :: E		! Energy in J/s
REAL :: m		! Mass in kg
REAL :: c		! Speed of light in m/s
REAL :: eff		! Efficiency
REAL :: effm		! mass required at efficency

! Input Efficiency
WRITE(*,*) 'Input efficiency rating 0 to 1'
READ (*,*) eff

! Define constants
E = 4. * (10. ** 8)
c = 2.9979 * (10. ** 8)

! Perform calculations
m = E / (c ** 2)

! Calculate efficency
effm = m / eff

! Output results
WRITE (*,*) 'Speed of light = ', c
WRITE (*,*) 'Energy = ', E
WRITE (*,*) 'Mass consumption per year is ', effm

END PROGRAM Relativity




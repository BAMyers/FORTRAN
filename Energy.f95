PROGRAM Energy
!
! A program designed to calculate the potential and kenetic energy
! of a falling mass in a gravitational field.  Total Energy.
!
IMPLICIT NONE
! DATA Dictionary
REAL :: PE	! Potential Energy 
REAL :: KE	! Kenetic Energy
REAL :: TE  ! Total Energy
REAL :: Mass
REAL :: Height
REAL :: Velocity
REAL :: GRAVITY

!Prompt user for inputs
WRITE (*,*) 'Please enter gravitational value'
READ (*,*) GRAVITY
WRITE (*,*) 'Please enter mass value'
READ (*,*) Mass
WRITE (*,*) 'Please enter height value'
READ (*,*) Height
WRITE (*,*) 'Please enter velocity value'
READ (*,*) Velocity

! Perform calculations
PE = Mass * GRAVITY * Height
KE = (0.5) * Mass * (Velocity ** 2)
TE = PE + KE

! Display results
WRITE (*,*) 'Potential Energy = ', PE
WRITE (*,*) 'Kenetic Energy = ', KE
WRITE (*,*) 'The Total Energy of the falling mass is ', TE

END PROGRAM Energy
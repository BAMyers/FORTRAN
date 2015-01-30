PROGRAM DIODE
!
! This program will solve for the current of a diode over a set of voltages
!
IMPLICIT NONE
 
! Data Dictionary
REAL :: q     ! Coulombs
REAL :: k     ! Boltzmann's Constant
REAL :: T     ! Temp. (K)
REAL :: VD    ! Voltage
REAL :: ID    ! Current in Amps
REAL :: Io    ! Leakage Current (AMPS)
REAL :: V1    ! Minimum Voltage
REAL :: V2    ! Maximum Voltage
REAL :: STEP  ! Step size between Voltages
INTEGER :: m  ! Number of temperatures to be calculated
INTEGER :: n  ! Maximum index variable for Voltage
INTEGER :: i  ! Index variable for temperature
INTEGER :: j  ! Index variable for Voltage

! Define constants
q = 1.602E-19
k = 1.38E-23

! Prompt user input
WRITE (*,*) 'Input the number of temperatures for which the current is to be determined.'
READ (*,*) m
WRITE (*,*) 'The number selected is:', m

! DO LOOP for temperature
DO i = 0, m-1

   ! Collect data
   WRITE (*,*) 'Please input the value for the temperature in Kelvin'
   READ (*,*) T
   WRITE (*,*) 'The temperature value is:', T 
   WRITE (*,*) 'Please input the value for leakage current in Amperes'
   READ (*,*) Io
   WRITE (*,*) 'The leakage current value is:', Io
   WRITE (*,*) 'Please input the lowest value of the voltage range'
   READ (*,*) V1
   WRITE (*,*) 'Please input the highest value of the voltage range'
   READ (*,*) V2
   WRITE (*,*) 'The voltage range is from', V1,'to', V2
   WRITE (*,*) 'Define the step value for the voltage'
   READ (*,*) STEP
   WRITE (*,*) 'The step value is', STEP
   
   ! DO LOOP for Voltage
   n = NINT ( (V2 - V1) / STEP )
   DO j = 0, n
      VD = V1 + ( STEP * REAL(j) )
      
      ! Perform computations
      ID = Io * ( EXP( ((q * VD) / (k * T)) ) - 1. ) 
  
      ! Provide output to the user
      WRITE (*,*) 'At VD = ',VD
      WRITE (*,*) 'The value for leakage is:', ID
      WRITE (*,*) '.................................'
   END DO

END DO

END PROGRAM DIODE   

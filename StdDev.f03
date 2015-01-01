PROGRAM StdDev
!
! Purpose:
!  To calculate the mean and standard deviation
!  of a data set. 
!
IMPLICIT NONE

! Data Dictionary
INTEGER :: i         ! Loop index
INTEGER :: n = 0     ! Number of input samples
REAL :: std_dev      ! Standard deviation
REAL :: sum_x = 0.   ! Sum of input samples
REAL :: sum_x2 = 0.  ! Sum of the squares of input samples
REAL :: x = 0.       ! Input data value
REAL :: x_bar        ! Average of input samples

! Get the number of points to input
WRITE (*,*) 'Enter the number of points: '
READ (*,*) n

! Check to see if the operation can be performed
IF ( N < 2 ) THEN 
   WRITE (*,*) 'At least 2 values must be entered.'

! Collect input values
ELSE 
   DO i = 1, n
      WRITE (*,*) 'Enter number: '
      READ (*,*) x
      WRITE (*,*) 'The number is ', x

! Calculate sums
      sum_x = sum_x + x
      Sum_x2 = sum_x2 + x**2

   END DO

! Calculate mean and standard deviation

   x_bar = sum_x / real(n)
   std_dev = sqrt( ( real(n) * sum_x2 - sum_x**2 ) / (real(n) * real(n-1) ) )

! Display answer
   WRITE (*,*) 'The mean of this data set is:', x_bar
   WRITE (*,*) 'The standard deviation is:', std_dev
   WRITE (*,*) 'The number of data points is:', n

END IF

END PROGRAM StdDev

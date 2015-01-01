PROGRAM date
!
! This program is used to calulate the number of days passed in the current year
!
IMPLICIT NONE

! Data dictionary
INTEGER :: day          ! Day (dd)
INTEGER :: day_of_year  ! Day of the year
INTEGER :: i            ! Index variable
INTEGER :: leap_day     ! Extra day for leap year
INTEGER :: month        ! month (mm)
INTEGER :: year         ! year (yyyy)

! Prompt user for day month and year
WRITE (*,*) 'This program calculates the day of the year given the'
WRITE (*,*) 'current date.  Enter current month (1-12), day (1-31)'
WRITE (*,*) 'and year in that order:'
READ (*,*) month, day, year

! Check for leap year
IF ( MOD(year,400) == 0 ) THEN
   leap_day = 1
ELSE IF ( MOD(year,100) == 0 ) THEN
   leap_day = 0
ELSE IF ( MOD(year,4) == 0 ) THEN
   leap_day = 1
ELSE
   leap_day = 0
END IF

! Calculate the day of the year
day_of_year = day
DO i = 1, month-1

   SELECT CASE (i)
   CASE (1,3,5,7,8,10,12)
      day_of_year = day_of_year + 31
   CASE (4,6,9,11)
      day_of_year = day_of_year + 30
   CASE (2) 
      day_of_year = day_of_year + 28 + leap_day
   END SELECT

END DO

WRITE (*,*) 'Day             =', day
WRITE (*,*) 'Month           =', month
WRITE (*,*) 'Year            =', year
WRITE (*,*) 'Day of the year =', day_of_year

END PROGRAM date

PROGRAM Temp
!Purpose:
!	A program designed to convert from:
!		Fahrenheit to Kelvins
!		Fahrenheit to Celsius
!		Fahrenheit to Rankine
!		Celsius to Fahrenheit
!		Celsius to Kelvin
!		Celsius to Rankine
!
REAL :: TEMP_C, TEMP_F
INTEGER :: I
WRITE (*,*) 'Please select 1 for Fahrenheit or 2 for Celsius for temperature input'
READ (*,*) I
IF (I == 2) THEN 
  WRITE (*,*) 'You have selected Celsius for your input'
  WRITE (*,*) 'Please input temperature now' 
  READ (*,*) TEMP_C
  CTOF = ((TEMP_C * 9.) / 5. ) + 32.
  CTOK = TEMP_C + 273.15
  CTOR = ((TEMP_C + 273.15) * 9.) / 5.
  WRITE (*,*) 'Celsius to Fahrenheit: ', CTOF
  WRITE (*,*) 'Celcius to Kelvin: ', CTOK
  WRITE (*,*) 'Celcius to Rankine: ', CTOR
END IF
IF (I == 1) THEN
  WRITE (*,*) 'You have selected Fahrenheit for your input'
  WRITE (*,*) 'Please input temperature now' 
  READ (*,*) TEMP_F
  FTOC = ((TEMP_F - 32.) * 5.) / 9.
  FTOK = (((TEMP_F - 32.) * 5.) / 9.) + 273.15
  FTOR = TEMP_F + 459.67
  WRITE (*,*) 'Fahrenheit to Celsius: ', FTOC
  WRITE (*,*) 'Fahrenheit to Kelvin: ', FTOK
  WRITE (*,*) 'Fahrenheit to Rankine: ', FTOR
END IF
END PROGRAM Temp
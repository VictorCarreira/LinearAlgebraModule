PROGRAM Main



!!!!!!!!!!!!!!!!!!!!!!MODULES!!!!!!!!!!!!!!!!!!!!!!!
  USE variables
  USE Read_data
  USE LAmodule


  IMPLICIT NONE

!!!!!!!!!!!!!!!!!!!!!!!PACKAGES!!!!!!!!!!!!!!!!!!!!
  CALL Read
  CALL Matricial_Product


    WRITE(*,*)"E=", E

END PROGRAM Main

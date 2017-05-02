PROGRAM Main



!!!!!!!!!!!!!!!!!!!!!!MODULES!!!!!!!!!!!!!!!!!!!!!!!
  USE variables, ONLY: A, B, E
  USE Open_Read_data
  USE LAmodule


  IMPLICIT NONE

!!!!!!!!!!!!!!!!!!!!!!!PACKAGES!!!!!!!!!!!!!!!!!!!!
  CALL OpenRead (fid, ierr)
  CALL Matricial_Product (A,B,E)


    WRITE(*,*)"E=", E

END PROGRAM Main

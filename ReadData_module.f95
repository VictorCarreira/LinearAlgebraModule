MODULE Open_Read_data



  CONTAINS

    SUBROUTINE OpenRead (fid, ierr)

      IMPLICIT NONE
      INTEGER, INTENT(IN) :: fid 
      INTEGER, INTENT(OUT) :: ierr

      OPEN(UNIT=9,FILE='A.TXT', STATUS='OLD')                                   !Lê arquivo A.txt
      READ(UNIT=9,FMT=*,IOSTAT=ierr)
      OPEN(UNIT=10,FILE='B.TXT', STATUS='OLD')                                  !lê arquivo B.txt
      READ(UNIT=10,FMT=*,IOSTAT=ierr)
    END SUBROUTINE OpenRead

  END MODULE Open_Read_data

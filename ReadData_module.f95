MODULE Read_data


  CONTAINS

    SUBROUTINE Read
      OPEN(UNIT=9,FILE='A.TXT', STATUS='OLD')                                   !Lê arquivo A.txt
      OPEN(UNIT=10,FILE='B.TXT', STATUS='OLD')                                  !lê arquivo B.txt

    END SUBROUTINE Read

  END MODULE Read_data

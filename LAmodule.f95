MODULE LAmodule

  CONTAINS

    SUBROUTINE Matricial_Product
      E = MATMUL(A,B)

      !DO i=1,4
      !  DO k=1,5
      !    C(i,k)=0
          !DO j=1,3
          !  C(i,k)=C(i,k)+A(i,j)*B(j,k)
          !ENDDO
        !ENDDO
      !ENDDO



      !DO i=1,m
      !  DO j=1,m
      !      C(i,j)=0
      !    DO k=1,n
      !      C(i,j)=C(i,j)+A(i,k)*B(k,j)
      !    ENDDO
      !  ENDDO
      !ENDDO



    END SUBROUTINE Matricial_Product

  END MODULE LAmodule

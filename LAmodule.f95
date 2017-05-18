PROGRAM LAmodule

IMPLICIT NONE
!REAL(KIND=8), INTENT(IN), DIMENSION(:,:)::A, B
!REAL(KIND=8), INTENT(OUT), DIMENSION(:,:)::E

  CONTAINS
    ! Esta subrotina faz a soma de duas matrizes quadradas (A + B)
    ! E armazena o resultado em uma matriz C
    ! Parâmetros:
    ! A e B Matrizes de entrada
    ! C Matriz que armazenará a soma de a e b
    ! n Dimensão da matriz (apenas matrizes quadradas)


SUBROUTINE soma_matricial (A, B, C, n)
  IMPLICIT NONE
  INTEGER :: n, i, j, k
  REAL, DIMENSION(:,:), ALLOCATABLE, INTENT(IN):: A, B
  REAL, DIMENSION(:,:), ALLOCATABLE, INTENT(OUT):: C

n=size(A, dim=1)! Faz com que n tenha o tamanho de A

  do i = 1, n
    do j = 1, n
      C(i,j) = A(i,j) + B(i,j)
    end do
  end do

END SUBROUTINE soma_matricial

! Esta subrotina faz a multiplicação de duas matrizes quadradas (A * B)
!
! Parâmetros:
! A e B Matrizes de entrada
! C Matriz que armazenará o produto de a por b
! n Dimensão da matriz (apenas matrizes quadradas)

!pause !Depurador (para a execução do programa desta linha para baixo)

!SUBROUTINE produto_matricial (A, B, C, n) ! Está dando erro!
!IMPLICIT NONE
!INTEGER :: n, i, j, k
!REAL, DIMENSION(:,:),ALLOCATABLE, INTENT(IN):: A, B
!REAL, DIMENSION(:,:),ALLOCATABLE, INTENT(OUT):: C

!n=size(A, dim=1) ! Diz que a variável n possui tamanho de A.

!C=0.0                                                                           !zera os elementos da matriz.
!  do i=1,n
!    do j=1,n
!      do k=1,n
!        C(i,j) = C(i,j) + A(i,k) ∗ B(k,j)                                           !Realiza o produto matricial conforme
!      end do
!    end do
!  end do

!END SUBROUTINE produto_matricial

!continue !Depurador (continua a execução do programa desta linha para baixo)

!Esta subrotina cria a transposta de uma matriz
!
!Parâmetros:
!A Matriz de entrada
!n Dimensão da matriz (apenas matrizes quadradas)
!
!AVISO: A matriz a será modificada no processo

SUBROUTINE matriz_transposta (At, n)

IMPLICIT NONE

INTEGER:: n,i,j
REAL:: At(n,n), temp

  do i=1,n
    do j=1,n
      if (i<j) then
        temp = At(i,j)
        At(i,j) = At(j,i)                                                         !Troca o índice i com o índice j
        At(j,i) = temp
      end if
    end do
  end do

END SUBROUTINE matriz_transposta

! Esta subrotina calcula a inversa de uma matriz por eliminação gaussiana
!
! Parâmetros:
! A Matriz de entrada
! Ainv Matriz que armazenará a inversa
! n Dimensão da matriz (apenas matrizes quadradas)
!
! AVISO: A matriz A será modificada no processo

SUBROUTINE matriz_inversa (A, Ainv, n)
  IMPLICIT NONE
  INTEGER :: n
  REAL, DIMENSION(:,:),ALLOCATABLE, INTENT(IN):: A
  REAL,  DIMENSION(:,:),ALLOCATABLE, INTENT(OUT):: Ainv  ! Matriz inversa
  LOGICAL :: invertivel = .true.
  INTEGER :: i, j, k, l
  REAL :: m
  REAL, DIMENSION(n,*2n) :: Aaumentada !Matriz aumentada

ENDPROGRAM LAmodule

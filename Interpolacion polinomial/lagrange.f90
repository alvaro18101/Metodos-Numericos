!------------------------------------------------------------------------
!Interpolaci�n polinomial mediante la f�rmula de Lagrange
!Autor: Alvaro Siesquen
!------------------------------------------------------------------------
program lagrange
implicit none
!Declaracion de variables
integer i, N
real,allocatable::datos(:,:)
real V0

!Procedimiendo
print*,'N�mero de puntos:'
read*,N

allocate(datos(N,2))
do i=1,N,1
print*,i,'punto:'
read*,datos(i,1),datos(i,2)
end do
!------------------------------------------------------------------------
!Interpolación polinomial mediante la fórmula de Lagrange
!Autor: Alvaro Siesquen
!------------------------------------------------------------------------
program lagrange
implicit none
!Declaracion de variables
integer i, j, N
real, dimension (5,2)::datos
real V0

open(8, file='data.dat', status='unknown')


!Procedimiendo
print*,'Numero de puntos:'
read*,N

do i=1,N,1
read(8,*)datos(i,1:2)
end do
end do

print*,datos
end program
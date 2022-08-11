!------------------------------------------------------------------------
!Integracion numerica mediante la regla del trapecio
!Autor: Alvaro Siesquen
!------------------------------------------------------------------------
program trapecio
implicit none
!Declaracion de variables
integer i, N				!Contador y N
real a, b, h			!Variables del metodo
real f					!Funcion
real sumatoria, integral

!Procedimiento
print*, 'Intervalo de integracion'
read*,a,b
print*, 'Numero de intervalos'
read*,N
h = (b-a)/N
sumatoria = 0
do i=1,N-1,1
	sumatoria = sumatoria + f(a+i*h)
end do

integral = h*(f(a) + 2*sumatoria + f(b))/2.
print*,'Integral calculada: ' ,integral
print*,'Longitud de la separacion: ' ,h
end program

!Definiendo la funcion a integral
real function f(x)
real x
	f = 3.14159*(1+(x/2)**2)**2
end function

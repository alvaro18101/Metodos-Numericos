!------------------------------------------------------------------------
!Integracion numerica mediante la regla de 3/8 de Simpson
!Autor: Alvaro Siesquen
!------------------------------------------------------------------------
program simpson_3_8
implicit none
!Declaracion de variables
integer i, N
real a, b, h
real sumatoria, integral
real f

!Procedimiento
print*,'Intervalo de integracion'
read*,a,b
print*,'Numero de intervalos (multiplo de 3)'
read*,N

do while(mod(N,3) .ne. 0)
	print*,'Numero de intervalos (multiplo de 3)'
	read*,N
end do
h = (b-a)/N
sumatoria = 0
do i=1,N-1,1	
	sumatoria = sumatoria + f(a+i*h)
end do
integral = 3*h*(f(a) + 3*sumatoria + f(b))/8.
print*,'Integral calculada: ' ,integral
print*,'Longitud de la separacion: ' ,h
end program

!Definiendo la funcion a integral
real function f(x)
real x
	f = 3.14159*(1+(x/2)**2)**2
end function


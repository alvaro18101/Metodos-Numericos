!------------------------------------------------------------------------
!Integracion numerica mediante la regla de 1/3 de Simpson
!Autor: Alvaro Siesquen
!------------------------------------------------------------------------
program simpson_1_3
implicit none
!Declaracion de variables
integer i, N
real a, b, h
real sumatoria_par, sumatoria_impar, integral
real f

!Procedimiento
print*,'Intervalo de integracion'
read*,a,b
print*,'Numero par de intervalos'
read*,N

do while(mod(N,2) .ne. 0)
	print*,'Numero PAR de intervalos'
	read*,N
end do
h = (b-a)/N
sumatoria_par = 0
sumatoria_impar = 0

do i=1,N-1,2		!sumatoria impar
	sumatoria_impar = sumatoria_impar + f(a+i*h)
end do

do i=2,N-2,2		!sumatoria par
	sumatoria_par = sumatoria_par + f(a+i*h)
end do
integral = h*(f(a) + 4*sumatoria_impar + 2*sumatoria_par + f(b))/3.
print*,'Integral calculada: ' ,integral
print*,'Longitud de la separacion: ' ,h
end program

!Definiendo la funcion a integral
real function f(x)
real x
	f = 3.14159*(1+(x/2)**2)**2
end function


	
!------------------------------------------------------------------------
!Solucion de ecuaciones no lineales mediante el metodo de Newton-Raphson
!Autor: Alvaro Siesquen
!------------------------------------------------------------------------
program newton_raphson
implicit none
!Declaracion de variables
integer i					!Contador
real x0, x, epsilon		!Variables del metodo
real f, d				!Funciones

!Procedimiento
print*,'Punto inicial'
read*,x0
print*,'Digite el error'
read*,epsilon

i=1
x =	x0 - f(x0)/d(x0)

do while (abs(x-x0)>epsilon)
	x0 = x
	x =	x0 - f(x0)/d(x0)
	i = i+1
end do

print*,'Raiz calculada:' ,x
print*,'Numero de iteraciones:' ,i
end program

!Definiendo f(x) y f'(x):
real function f(x)
real x
	f = x**3 - 155
end function

real function d(x)
real x
	d = 3*x**2
end function
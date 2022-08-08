!------------------------------------------------------------------------
!Solucion de ecuaciones no lineales mediante el metodo de biseccion mediante subrutina
!Autor: Alvaro Siesquen
!------------------------------------------------------------------------
program biseccion
implicit none
real a, b, c, epsilon			!Variables del método
real f							!Funcion

!Procedimiento
print*,'Digite el intervalo inicial'
read*,a,c
do while (f(a)*f(c)>0)
	print*,'Digite un intervalo válido'
	read*,a,c
end do
print*,'Digite el error'
read*,epsilon
b = (a + c)/2.

call metodo(a,c,epsilon,b)

print*,'Raíz calculada: ' ,b
end program

!Definiendo funcion para calcular su raiz
real function f(x)
real x
	f = exp(x)-2
end function

!Metodo por subrutina
subroutine metodo(a,c,epsilon,b)
real a,c,epsilon,b
do while (abs(c-a)>epsilon)
if (f(a)*f(b)<=0) then
	c = b
else if (f(b)*f(c)<=0) then
	a = b
end if
b = (a + c)/2.
end do
end subroutine
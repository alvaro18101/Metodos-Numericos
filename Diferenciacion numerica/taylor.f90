!------------------------------------------------------------------------
!Diferenciacion numerica mediante el desarrollo de Taylor
!Autor: Alvaro Siesquen
!------------------------------------------------------------------------
program taylor
implicit none
!Declaracion de variables
real h, x,f
real d1, d2, d3, d4, d5		!Derivadas

!Procedimiento
print*,'Digite x'
read*,x
h = 0.02

d1 = (f(x+h)-f(x))/h
d2 = (f(x)-f(x-h))/h
d3 = (f(x+h)-f(x-h))/(2*h)
d4 = (-f(x+2*h)+4*f(x+h)-3*f(x))/(2*h)
d5 = (3*f(x)-4*f(x-h)+f(x-2*h))/(2*h)

print*,'Aproximacion con diferencias hacia adelante con dos puntos:' ,d1
print*,'Aproximacion con diferencias hacia atras con dos puntos:' ,d2
print*,'Aproximacion con diferencias centrales con dos puntos:' ,d3
print*,'Aproximacion con diferencias hacia adelante con tres puntos:' ,d4
print*,'Aproximacion con diferencias hacia adelante con tres puntos:' ,d5
end program

real function f(x)
real x
    f = tan(x)
end function
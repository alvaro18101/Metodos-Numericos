!------------------------------------------------------------------------
!EDOs con condicion inicial mediante el metodo de Euler hacia adelante
!Autor: Alvaro Siesquen
!------------------------------------------------------------------------
program euler
implicit none
integer i,N
real h, t, y
real f

open(8,file='data_euler.dat', status='unknown')		!Archivo externo para guardar los datos

!Procedimiento
h = 0.001		!Paso
N = 10000		!Numero de puntos

print*,'t inicial'
read*,t
print*,'y inicial'
read*,y

do i=1,N+1,1
	write(8,*)t,y
    y = y + h*f(y,t)
	t = t+h
end do
print*,'t transcurrido:',h*N
print*,'Finalizado'
end program

real function f(y,t)
real t,y
    f = exp(t)
end function




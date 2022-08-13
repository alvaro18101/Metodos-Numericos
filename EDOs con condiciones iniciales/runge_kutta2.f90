!------------------------------------------------------------------------
!EDOs con condicion inicial mediante el metodo de Runge-Kutta de 2do orden
!Autor: Alvaro Siesquen
!------------------------------------------------------------------------
program runge_kutta2
implicit none
!Declaracion de variables
integer i, N
real h, y,t,t0
real k1, k2
real f

open(8, file='data_rk2.dat', status='unknown')		!Archivo externo para guardar los datos

!Procedimiento
print*,'t inicial'
read*,t
t0=t
print*,'y inicial'
read*,y
h = 0.001				!Paso
N = 5000				!Numero de pasos

do i=1,N+1 ,1
	write(8,*)t,y
    k1 = h*f(y,t)
	k2 = h*f(y+k1,t+h)

	y = y + (k1+k2)/2.
	t = t + h
end do
print*,'t transcurrido:',h*N
print*,'Finalizado'
end program

!Definiendo y'
real function f(y,t)
real t,y
    f = exp(t)
end function
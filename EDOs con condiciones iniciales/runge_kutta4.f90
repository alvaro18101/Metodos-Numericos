!------------------------------------------------------------------------
!EDOs con condicion inicial mediante el metodo de Runge-Kutta de 4to orden
!Autor: Alvaro Siesquen
!------------------------------------------------------------------------
program runge_kutta4
implicit none
!Declaracion de variables
integer i, N
real h, y,t,t0
real k1, k2, k3, k4
real f

open(8, file='data_rk4.dat', status='unknown')		!Archivo externo para guardar los datos

!Procedimiento
print*,'t inicial'
read*,t
t0=t
print*,'y inicial'
read*,y
h = 1				!Paso
N = 1				!Numero de pasos

do i=1,N+1 ,1
	write(8,*)t,y
    k1 = h*f(y,t)
	k2 = h*f(y+k1/2,t+h/2)
	k3 = h*f(y+k2/2,t+h/2)
	k4 = h*f(y+k3,t+h)

	y = y + (k1+2*k2+2*k3+k4)/6.
	t = t + h
end do
print*,'t transcurrido:',h*N
print*,'Finalizado'
end program

!Definiendo y'
real function f(y,t)
real t,y
    f = -1/(1+y**2)
end function
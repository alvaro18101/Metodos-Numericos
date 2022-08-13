!------------------------------------------------------------------------
!EDOs de 2do orden con condicion inicial mediante el metodo de Runge-Kutta de 2do orden
!Autor: Alvaro Siesquen
!------------------------------------------------------------------------
program runge_kutta2
implicit none
!Declaracion de variables
integer i, N
real h, y, t, z
real k1, k2, p1, p2
real f

open(8, file='data_rk2_2.dat', status='unknown')		!Archivo externo para guardar los datos

print*,'t inicial'
read*,t
print*,'y inicial'
read*,y
print*,'dy/dy inicial'
read*,z

h = 0.001				!Paso
N = 5000				!Numero de pasos

do i=1,N+1,1
	write(8,*)t,y,z
    k1 = h*z
	p1 = h*f(y,z,t)
	k2 = h*(z+p1)
	p2 = h*f(y+k1,z+p1,t+h)

	y = y + (k1+k2)/2.
	z = z + (p1+p2)/2.
	t = t + h
end do
print*,'t transcurrido:',h*N
print*,'Finalizado'
end program

!Definiendo y''
real function f(y,z,t)
real t,y,z
real,parameter::k=100., m=0.5
    f = -k*y/m
end function

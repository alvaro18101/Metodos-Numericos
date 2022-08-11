# ------------------------------------------------------------------------
# Integracion numerica mediante la regla de 1/3 de Simpson
# Autor: Alvaro Siesquen
# ------------------------------------------------------------------------
from operator import mod

f = lambda x: 3.14159*(1+(x/2)**2)**2

print('Digite el intervalo de integracion')
a,b = float(input()), float(input())
N = int(input('Numero par de intervalos: '))

while (mod(N,2) != 0):
    N = int(input('Numero PAR de intervalos: '))

h = (b-a)/N
sumatoria_par = 0
sumatoria_impar = 0

for i in range(1,N,2):
    sumatoria_impar += f(a+i*h)

for i in range(2,N-1,2):
    sumatoria_par += f(a+i*h)

integral = h*(f(a) + 4*sumatoria_impar + 2*sumatoria_par + f(b))/3.

print('Integral calculada:' ,integral)
print('Longitud de separacion:' ,h)
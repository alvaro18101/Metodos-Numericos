# ------------------------------------------------------------------------
# Integracion numerica mediante la regla de 3/8 de Simpson
# Autor: Alvaro Siesquen
# ------------------------------------------------------------------------
from operator import mod

f = lambda x: 1/(x**3+1)

print('Digite el intervalo de integracion')
a,b = float(input()), float(input())
N = int(input('Numero de intervalos (multiplo de 3): '))

while (mod(N,3) != 0):
    N = int(input('Numero de intervalos (multiplo de 3): '))

h = (b-a)/N
sumatoria = 0

for i in range(1,N,1):
    sumatoria += f(a+i*h)

integral = 3*h*(f(a) + 3*sumatoria + f(b))/8.

print('Integral calculada:' ,integral)
print('Longitud de separacion:' ,h)
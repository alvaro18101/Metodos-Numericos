# ------------------------------------------------------------------------
# Integracion numerica mediante el metodo del trapecio
# Autor: Alvaro Siesquen
# ------------------------------------------------------------------------

f = lambda x: 3.14159*(1+(x/2)**2)**2

print('Digite el intervalo de integracion')
a,b = float(input()), float(input())
N = int(input('Numero de intervalos: '))

h = (b-a)/N
sumatoria = 0

for i in range(1,N):
    sumatoria += f(a+i*h)

integral = h*(f(a) + 2*sumatoria + f(b))/2

print('Integral calculada:' ,integral)
print('Longitud de separacion:' ,h)
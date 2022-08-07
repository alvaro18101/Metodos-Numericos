# -------------------------------------------------------------------------
# Solucion de ecuaciones no lineales mediante el metodo de biseccion
# Autor: Alvaro Siesquen
# -------------------------------------------------------------------------
import numpy as np
f = lambda x: np.exp(x)-2

epsilon = float(input('Digite el error: '))
a, c = float(input('Intervalo inicial a: ')),float(input('Intervalo inicial c: '))

while (f(a)*f(c)>0):
    print('\nDigite un intervalo valido')
    a, c = float(input('Intervalo inicial a: ')),float(input('Intervalo inicial c: '))

b = (a+c)/2

while (abs(c-a)>epsilon):
    if (f(a)*f(b)<=0):
        c=b
    elif(f(b)*f(c)<=0):
        a=b
    b = (a+c)/2

print('Raiz calculada:', b)

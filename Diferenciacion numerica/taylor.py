# ------------------------------------------------------------------------
# Diferenciacion numerica mediante el desarrollo de Taylor
# Autor: Alvaro Siesquen
# ------------------------------------------------------------------------

import numpy as np
f = lambda x:np.tan(x)

x = float(input('Digite x: '))
h=2e-2

d1 = (f(x+h)-f(x))/h
d2 = (f(x)-f(x-h))/h
d3 = (f(x+h)-f(x-h))/(2*h)
d4 = (-f(x+2*h)+4*f(x+h)-3*f(x))/(2*h)
d5 = (3*f(x)-4*f(x-h)+f(x-2*h))/(2*h)

print('Aproximacion con diferencias hacia adelante con dos puntos: ' ,d1)
print('Aproximacion con diferencias hacia atras con dos puntos: ' ,d2)
print('Aproximacion con diferencias centrales con dos puntos: ' ,d3)
print('Aproximacion con diferencias hacia adelante con tres puntos: ' ,d4)
print('Aproximacion con diferencias hacia adelante con tres puntos: ' ,d5)
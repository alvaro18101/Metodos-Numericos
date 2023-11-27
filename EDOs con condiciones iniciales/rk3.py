# ------------------------------------------------------------------------
# EDO con condicion inicial mediante el metodo de Runge-Kutta de 3er orden
# Autor: Alvaro Siesquen
# ------------------------------------------------------------------------

import numpy as np
f = lambda y,t: np.exp(t)

def met_rk3(t, y, tf, h, f):
    N = int((tf-t)/h)
    T, Y = [t], [y]

    for i in range(N):
        k1 = h*f(y,t)
        k2 = h*f(y+k1/2,t+h/2)
        k3 = h*f(y-k1+2*k2,t+h)

        y = y + (k1 + 4*k2 + k3)/6
        t = t + h
        
        Y.append(y)
        T.append(t)
    return T, Y
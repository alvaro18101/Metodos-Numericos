# ------------------------------------------------------------------------
# EDO con condicion inicial mediante el metodo de Runge-Kutta de 2do orden
# Autor: Alvaro Siesquen
# ------------------------------------------------------------------------

import numpy as np
f = lambda y,t: np.exp(t)

def met_rk2(y, h, t, tf, f):
    N = int((tf-t)/h)
    Y = [y]
    T = [t]

    for i in range(N):
        k1 = h*f(y,t)
        k2 = h*f(y+k1,t+h)

        y = y + (k1+k2)/2
        t = t + h
        
        Y.append(y)
        T.append(t)
    return Y, T
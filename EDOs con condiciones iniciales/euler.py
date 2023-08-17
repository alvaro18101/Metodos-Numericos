# ------------------------------------------------------------------------
# EDOs con condicion inicial mediante el metodo de Euler hacia adelante
# Autor: Alvaro Siesquen
# ------------------------------------------------------------------------

import numpy as np
f = lambda y,t: np.exp(t)

def met_euler(y, h, t, tf, f):
    N = int((tf-t)/h)
    Y = [y]
    T = [t]

    for i in range(N):
        y += h*f(y,t)
        t += h
        Y.append(y)
        T.append(t)
    return Y,T
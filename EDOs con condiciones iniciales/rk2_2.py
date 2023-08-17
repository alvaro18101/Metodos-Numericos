# ------------------------------------------------------------------------
# EDO de 2do orden con CI mediante el metodo de Runge-Kutta de 2do orden
# Autor: Alvaro Siesquen
# -----------------------------------------------------------------------

import numpy as np
f = lambda y,z,t: -4*np.pi**2*y

def met_rk2_2(y, z,h, t, tf,f):
    N = int((tf-t)/h)
    Y = [y]
    Z = [z]
    T = [t]

    for i in range(N):
        k1 = h*z
        p1 = h*f(y,z,t)
        k2 = h*(z+p1)
        p2 = h*f(y+k1,z+p1,t+h)

        y = y + (k1 + k2)/2
        z = z + (p1 + p2)/2
        t = t + h

        Y.append(y)
        Z.append(z)
        T.append(t)
    return Y, Z, T
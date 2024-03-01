# ------------------------------------------------------------------------
# EDO de 2do orden con CI mediante el metodo de Runge-Kutta de 4do orden
# Autor: Alvaro Siesquen
# -----------------------------------------------------------------------

import numpy as np
f = lambda y,z,t: -4*np.pi**2*y

def met_rk4_2(y, z, h, t, tf, f):
    N = int((tf-t)/h)
    T, Y, Z = [t], [y], [z]

    for i in range(N):
        k1 = h*z
        p1 = h*f(y,z,t)
        k2 = h*(z + p1/2)
        p2 = h*f(y + k1/2, z + p1/2, t + h/2)
        k3 = h*(z + p2/2)
        p3 = h*f(y + k2/2, z + p2/2, t + h/2)
        k4 = h*(z + p3)
        p4 = h*f(y + k3, z + p3, t + h)

        y = y + (k1 + 2*k2 + 2*k3 + k4)/6
        z = z + (p1 + 2*p2 + 2*p3 + p4)/6
        t = t + h

        Y.append(y)
        Z.append(z)
        T.append(t)
    return T, Y, Z
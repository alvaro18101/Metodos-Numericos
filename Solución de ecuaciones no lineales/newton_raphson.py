# -------------------------------------------------------------------------
# Solucion de ecuaciones no lineales mediante el metodo de Newton-Raphson
# Autor: Alvaro Siesquen
# -------------------------------------------------------------------------
f = lambda x: x**3-155
d = lambda x: 3*x**2

x0 = float(input('Punto inicial: '))
epsilon = float(input('Digite el error: '))
i=1
x = x0 - f(x0)/d(x0)
while(abs(x-x0)>epsilon):
    x0 = x
    x = x0 - f(x0)/d(x0)
    i+=1
print('Raiz calculada: ',x)
print('Numero de iteraciones: ',i)
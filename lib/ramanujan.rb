require_relative './factorial'

def ramanujan(n)
    constantTerm=2.0*Math.sqrt(2)/99**2
    puts constantTerm
    sigmaSum=0.0
    for i in 0..n
        sigmaSum+=factorial(4*i)*(1103+26390*i)/(4**i*99**i*factorial(i))**4
        puts sigmaSum
    end
    constantTerm*sigmaSum
end
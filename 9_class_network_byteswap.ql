import cpp

class NetworkByteSwap extends Expr
{
    NetworkByteSwap ()
    {
        exists(MacroInvocation minv 
        | minv.getMacroName().regexpMatch("ntoh[s|l|ll]") 
        and  this = minv.getExpr()
        )
    }
}

from NetworkByteSwap n
select n, "Network byte swap" 
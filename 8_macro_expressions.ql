import cpp

from MacroInvocation inv
where inv.getMacroName().regexpMatch("ntoh[s|l|ll]")
select inv.getExpr()

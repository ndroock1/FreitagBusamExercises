
int addtwo P(( int, int));

int multwo P(( int, int));

:Begin:
:Function:       addtwo
:Pattern:        AddTwo[i_Integer, j_Integer]
:Arguments:      { i, j }
:ArgumentTypes:  { Integer, Integer }
:ReturnType:     Integer
:End:

:Begin:
:Function:       multwo
:Pattern:        MulTwo[i_Integer, j_Integer]
:Arguments:      { i, j }
:ArgumentTypes:  { Integer, Integer }
:ReturnType:     Integer
:End:

:Evaluate: AddTwo::usage = "AddTwo[x, y] gives the sum of two machine integers x and y."

:Evaluate: MulTwo::usage = "MulTwo[x, y] gives the product of two machine integers x and y."

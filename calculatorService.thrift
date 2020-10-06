struct Result {1: double result, 2: string error,}


service Calculator{
    Result Add( 1: double first, 2: double second)
    Result Subtract( 1: double first, 2: double second)
    Result Divide( 1: double first, 2: double second)
    Result Multiply(  1: double first, 2: double second)
    Result SquareRoot(  1: double first)
    Result Pow(  1: double first, 2: double second)    
}
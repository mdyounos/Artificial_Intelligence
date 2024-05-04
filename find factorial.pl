%find the factorial value of 5 in prolog. 

factorial(0, 1).
factorial(N, Result) :-
    N > 0,
    N1 is N - 1,
    factorial(N1, Result1),
    Result is N * Result1.




%factorial(5, FactorialValue).
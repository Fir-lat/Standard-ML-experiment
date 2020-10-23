fun printInt (a:int) =
    print(Int.toString(a)^" ");

fun printIntInf (a:IntInf.int) =
    print(IntInf.toString(a)^" ");

fun printReal (a:real) =
    print(Real.toString(a)^" ");

fun printString (a:string) =
    print(a^" ");

fun getInt () =
    Option.valOf (TextIO.scanStream (Int.scan StringCvt.DEC) TextIO.stdIn);

fun getIntInf () =
    Option.valOf (TextIO.scanStream (IntInf.scan StringCvt.DEC) TextIO.stdIn);

fun getReal () =
    Option.valOf (TextIO.scanStream (Real.scan) TextIO.stdIn);

(*****Begin*****)
val N = getIntInf();
val M = getIntInf();
type matrix = IntInf.int*IntInf.int*IntInf.int*IntInf.int;

fun multi_1((a1 , b1 , c1 , d1):matrix,(a2 , b2 , c2 , d2):matrix , M :IntInf.int):matrix=
    ((a1*a2+b1*c2) mod M , (a1*b2+b1*d2) mod M , (c1*a2+d1*c2) mod M , (c1*b2+d1*d2) mod M);

fun multi_2((a1 , b1 , c1 , d1):matrix,(a2 , c2):IntInf.int*IntInf.int , M : IntInf.int):IntInf.int*IntInf.int = 
    ((a1*a2+b1*c2) mod M , (c1*a2+d1*c2) mod M);

fun fme(N : IntInf.int, M : IntInf.int, T : matrix , A : IntInf.int*IntInf.int)=
    if N=1 then multi_2(T , A , M)
    else if N mod 2 = 1 then fme( N div 2 , M , multi_1(T , T , M) , multi_2(T , A , M))
    else fme(N div 2 , M , multi_1(T , T , M) , A);

fun result((a1 , b1): IntInf.int*IntInf.int) = b1;

printIntInf(result(fme(N , M , (1,1,1,0) , (1,0))));
(*****End*****)